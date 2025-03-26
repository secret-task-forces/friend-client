// ignore_for_file: avoid_print

import 'dart:io';

void main(List<String> args) {
  if (args.isEmpty) {
    print('사용법: dart run tools/rename_project.dart <새_프로젝트_이름>');
    exit(1);
  }

  final newName = args[0];
  final oldName = getCurrentProjectName(); // pubspec.yaml에서 현재 프로젝트 이름을 가져옵니다
  final newPackageName = 'com.example.$newName'.toLowerCase();

  // pubspec.yaml 수정
  updateFile(
    'pubspec.yaml',
    RegExp(r'name: .*'),
    'name: $newName',
  );

  // CMakeLists.txt 수정
  updateFile(
    'windows/CMakeLists.txt',
    RegExp(r'project\(.*\)'),
    'project($newName)',
  );

  // web/manifest.json 수정
  updateJsonFile(
    'web/manifest.json',
    'name',
    newName,
  );

  // MacOS 설정 수정
  updateFile(
    'macos/Runner/Configs/AppInfo.xcconfig',
    RegExp(r'PRODUCT_NAME = .*'),
    'PRODUCT_NAME = $newName',
  );
  updateFile(
    'macos/Runner/Configs/AppInfo.xcconfig',
    RegExp(r'PRODUCT_BUNDLE_IDENTIFIER = .*'),
    'PRODUCT_BUNDLE_IDENTIFIER = $newPackageName',
  );

  // iOS 설정 수정
  updatePlistFile(
    'ios/Runner/Info.plist',
    'CFBundleDisplayName',
    newName,
  );

  // Android 설정 수정
  updateFile(
    'android/app/build.gradle',
    RegExp(r'applicationId ".*"'),
    'applicationId "$newPackageName"',
  );

  updateFile(
    'android/app/src/main/AndroidManifest.xml',
    RegExp(r'package=".*"'),
    'package="$newPackageName"',
  );

  // 모든 .dart 파일의 import 경로 수정
  updateImportPaths(oldName, newName);

  print('프로젝트 이름이 성공적으로 변경되었습니다!');
}

String getCurrentProjectName() {
  final pubspecFile = File('pubspec.yaml');
  if (!pubspecFile.existsSync()) {
    print('오류: pubspec.yaml 파일을 찾을 수 없습니다.');
    exit(1);
  }

  final content = pubspecFile.readAsStringSync();
  final nameMatch = RegExp(r'name: (.*)').firstMatch(content);
  if (nameMatch == null) {
    print('오류: pubspec.yaml에서 프로젝트 이름을 찾을 수 없습니다.');
    exit(1);
  }

  return nameMatch.group(1)!.trim();
}

void updateImportPaths(String oldName, String newName) {
  final directory = Directory('lib');
  if (!directory.existsSync()) {
    print('경고: lib 디렉토리를 찾을 수 없습니다.');
    return;
  }

  // 모든 .dart 파일을 재귀적으로 찾아서 처리
  directory.listSync(recursive: true).forEach((entity) {
    if (entity is File && entity.path.endsWith('.dart')) {
      var content = entity.readAsStringSync();

      // import와 export 구문의 패키지 경로 수정
      final oldImport = "package:$oldName/";
      final newImport = "package:$newName/";

      if (content.contains(oldImport)) {
        content = content.replaceAll(oldImport, newImport);
        entity.writeAsStringSync(content);
        print('${entity.path} 파일의 import 경로가 업데이트되었습니다.');
      }
    }
  });

  // test 디렉토리가 있다면 테스트 파일도 업데이트
  final testDirectory = Directory('test');
  if (testDirectory.existsSync()) {
    testDirectory.listSync(recursive: true).forEach((entity) {
      if (entity is File && entity.path.endsWith('.dart')) {
        var content = entity.readAsStringSync();
        final oldImport = "package:$oldName/";
        final newImport = "package:$newName/";

        if (content.contains(oldImport)) {
          content = content.replaceAll(oldImport, newImport);
          entity.writeAsStringSync(content);
          print('${entity.path} 파일의 import 경로가 업데이트되었습니다.');
        }
      }
    });
  }
}

void updateFile(String path, RegExp pattern, String replacement) {
  final file = File(path);
  if (!file.existsSync()) {
    print('경고: $path 파일을 찾을 수 없습니다.');
    return;
  }

  var content = file.readAsStringSync();
  content = content.replaceFirst(pattern, replacement);
  file.writeAsStringSync(content);
  print('$path 파일이 업데이트되었습니다.');
}

void updateJsonFile(String path, String key, String value) {
  final file = File(path);
  if (!file.existsSync()) {
    print('경고: $path 파일을 찾을 수 없습니다.');
    return;
  }

  try {
    var content = file.readAsStringSync();
    final regex = RegExp('"$key":\\s*"[^"]*"');
    content = content.replaceFirst(regex, '"$key": "$value"');
    file.writeAsStringSync(content);
    print('$path 파일이 업데이트되었습니다.');
  } catch (e) {
    print('$path 파일 업데이트 중 오류 발생: $e');
  }
}

void updatePlistFile(String path, String key, String value) {
  final file = File(path);
  if (!file.existsSync()) {
    print('경고: $path 파일을 찾을 수 없습니다.');
    return;
  }

  try {
    var content = file.readAsStringSync();
    final keyPattern = RegExp('<key>$key</key>\\s*<string>[^<]*</string>');
    content = content.replaceFirst(
      keyPattern,
      '<key>$key</key>\n\t<string>$value</string>',
    );
    file.writeAsStringSync(content);
    print('$path 파일이 업데이트되었습니다.');
  } catch (e) {
    print('$path 파일 업데이트 중 오류 발생: $e');
  }
}
