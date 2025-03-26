# Flutter Template

## 프로젝트 구성

- Clean Architecture
- Riverpod
- Dio
- Retrofit
- Freezed
- Firebase
- Kakao Login
- Apple Login
- Push Notification
- Image Compress
- Permission Handler
- Toast
- Webview
- SNS Login SDK

## 새 프로젝트 시작 방법

### 공통

- Setup Project

```bash
dart run tools/setup_project.dart ${프로젝트 명}
```

### Android

- 패키지 이름 변경

```bash
com.example.flutter_template -> com.${회사 도메인}.${프로젝트 명}
```

- AndroidManifest label 변경

```bash
flutter_template -> ${프로젝트 명}
```

### Ios

- 패키지 이름 변경

```bash
com.example.flutterTemplate -> com.${회사 도메인}.${프로젝트 명}
```

- Info.plist 변경

```bash
CFBundleDisplayName, CFBundleName 변경
flutter_template -> ${프로젝트 명}
```