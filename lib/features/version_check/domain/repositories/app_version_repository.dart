import 'dart:async';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_template/features/version_check/domain/entities/app_version.dart';

abstract class AppVersionRepository {
  Future<Either<DioException, AppVersion>> getAppVersion();
}
