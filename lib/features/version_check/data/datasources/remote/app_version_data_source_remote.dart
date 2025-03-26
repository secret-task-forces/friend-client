import 'package:dio/dio.dart' hide Headers;
import 'package:flutter_template/features/version_check/data/datasources/app_version_data_source.dart';
import 'package:flutter_template/features/version_check/data/models/response/app_version_model.dart';
import 'package:retrofit/retrofit.dart';

import 'app_version_api_paths.dart';
part 'app_version_data_source_remote.g.dart';

@RestApi()
abstract class AppVersionDataSourceRemote implements AppVersionDataSource {
  factory AppVersionDataSourceRemote(
    Dio dio,
  ) = _AppVersionDataSourceRemote;

  @override
  @GET(AppVersionApiPaths.appVersion)
  Future<AppVersionModel> getAppVersion();
}
