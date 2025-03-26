import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/version_check/data/datasources/remote/app_version_data_source_remote.dart';
import 'package:flutter_template/features/version_check/data/mappers/app_version_mapper.dart';
import 'package:flutter_template/features/version_check/domain/entities/app_version.dart';
import 'package:flutter_template/features/version_check/domain/repositories/app_version_repository.dart';

class AppVersionRepositoryRemote implements AppVersionRepository {
  final AppVersionDataSourceRemote _client;

  AppVersionRepositoryRemote(this._client);

  @override
  Future<Either<DioException, AppVersion>> getAppVersion() async {
    try {
      final response = await _client.getAppVersion();

      return right(response.toEntity());
    } on DioException catch (e) {
      return left(e);
    }
  }
}
