import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/features/version_check/data/datasources/remote/app_version_data_source_remote.dart';

import '../data/repositories/app_version_repository_remote.dart';

final appVersionDataSourceProvider =
    Provider((ref) => AppVersionDataSourceRemote(AppClient.client));

final appVersionRepositoryProvider = Provider((ref) =>
    AppVersionRepositoryRemote(ref.watch(appVersionDataSourceProvider)));
