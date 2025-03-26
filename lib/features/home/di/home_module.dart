import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/features/home/data/datasources/remote/home_remote_data_source.dart';
import 'package:flutter_template/features/home/data/repositories/home_repository_remote.dart';
import 'package:flutter_template/features/home/presentation/providers/home_provider.dart';
import 'package:flutter_template/features/home/presentation/providers/home_state.dart';

// Data Layer Providers
final homeDataSourceProvider =
    Provider((ref) => HomeRemoteDataSource(AppClient.client));

final homeRepositoryProvider = Provider<HomeRepositoryRemote>(
    (ref) => HomeRepositoryRemote(ref.watch(homeDataSourceProvider)));

final homeProvider = AutoDisposeAsyncNotifierProvider<HomeNotifier, HomeState>(
  HomeNotifier.new,
);
