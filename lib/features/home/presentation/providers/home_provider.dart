import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_template/features/home/di/home_module.dart';
import 'package:flutter_template/features/home/domain/repositories/home_repository.dart';
import 'package:flutter_template/features/home/presentation/providers/home_state.dart';

class HomeNotifier extends AutoDisposeAsyncNotifier<HomeState> {
  HomeRepository get _homeRepository => ref.watch(homeRepositoryProvider);

  @override
  Future<HomeState> build() async {
    return await _fetchQuoteRequest();
  }

  Future<HomeState> _fetchQuoteRequest() async {
    final quoteRequest = await _homeRepository.quoteRequest();

    return quoteRequest.fold((l) {
      throw AsyncError(l, l.stackTrace);
    }, (r) {
      r.sort((a, b) => b.idx.compareTo(a.idx));
      return HomeState(quoteRequestList: r);
    });
  }

  Future<void> refresh() async {
    state = await AsyncValue.guard(() async => await build());
  }

  void showFinishedProposalDialog() {
    state = AsyncData(
      state.requireValue.copyWith(showFinishedProposalDialog: true),
    );
  }

  void resetShowFinishedProposalDialog() {
    state = AsyncData(
      state.requireValue.copyWith(showFinishedProposalDialog: false),
    );
  }
}
