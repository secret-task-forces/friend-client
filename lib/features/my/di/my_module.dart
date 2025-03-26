import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/features/my/data/datasources/remote/my_remote_data_source.dart';
import 'package:flutter_template/features/my/data/repositories/my_repository_remote.dart';
import 'package:flutter_template/features/my/domain/repositories/my_repository.dart';

final myRemoteDataSourceProvider = Provider<MyRemoteDataSource>(
  (ref) => MyRemoteDataSource(AppClient.client),
);

final myRepositoryProvider = Provider<MyRepository>(
  (ref) => MyRepositoryRemote(ref.watch(myRemoteDataSourceProvider)),
);
