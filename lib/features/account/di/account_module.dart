import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import '../data/datasources/remote/account_remote_data_source.dart';
import '../data/repositories/account_repository_remote.dart';

// Data Layer Providers
final accountDataSourceProvider =
    Provider((ref) => AccountRemoteDataSource(AppClient.client));

final accountRepositoryProvider = Provider(
    (ref) => AccountRepositoryRemote(ref.watch(accountDataSourceProvider)));
