import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/entities/quote_request.dart';

part 'home_state.freezed.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default([]) List<QuoteRequest> quoteRequestList,
    @Default(false) bool haveRouteName,
    String? routeName,
    @Default(false) bool showFinishedProposalDialog,
  }) = _HomeState;
}
