import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/core/network/app_client.dart';
import 'package:flutter_template/features/my/data/datasources/remote/notice_remote_data_source.dart';
import 'package:flutter_template/features/my/data/repositories/notice_repository_remote.dart';
import 'package:flutter_template/features/my/domain/repositories/notice_repository.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_category_provider.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_category_state.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_provider.dart';
import 'package:flutter_template/features/my/presestation/providers/notice/notice_state.dart';

final noticeRemoteDataSourceProvider = Provider<NoticeRemoteDataSource>(
  (ref) => NoticeRemoteDataSource(AppClient.client),
);

final noticeRepositoryProvider = Provider<NoticeRepository>(
  (ref) => NoticeRepositoryRemote(ref.watch(noticeRemoteDataSourceProvider)),
);

final noticeProvider =
    AutoDisposeAsyncNotifierProvider<NoticeNotifier, NoticeState>(
        NoticeNotifier.new);

final noticeCategoryProvider = AutoDisposeAsyncNotifierProvider<
    NoticeCategoryNotifier, NoticeCategoryState>(NoticeCategoryNotifier.new);
