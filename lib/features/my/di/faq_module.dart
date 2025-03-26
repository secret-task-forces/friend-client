import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/features/my/data/datasources/remote/faq_remote_data_source.dart';
import 'package:flutter_template/features/my/data/repositories/faq_repository_remote.dart';
import 'package:flutter_template/features/my/domain/repositories/faq_repository.dart';

final faqRemoteDataSourceProvider = Provider<FaqRemoteDataSource>(
  (ref) => FaqRemoteDataSource(AppClient.client),
);

final faqRepositoryProvider = Provider<FaqRepository>(
  (ref) => FaqRepositoryRemote(ref.watch(faqRemoteDataSourceProvider)),
);
