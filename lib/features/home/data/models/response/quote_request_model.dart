import 'package:freezed_annotation/freezed_annotation.dart';
part 'quote_request_model.freezed.dart';
part 'quote_request_model.g.dart';

@freezed
class QuoteRequestModel with _$QuoteRequestModel {
  const factory QuoteRequestModel({
    @JsonKey(name: 'idx') required int idx,
    @JsonKey(name: 'exprAt') required int exprAt,
    @JsonKey(name: 'devicePartialImg1') String? devicePartialImg1,
    @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
    @JsonKey(name: 'offerCount') required int offerCount,
    @JsonKey(name: 'dtype') required String dtype,
  }) = _QuoteRequestModel;

  factory QuoteRequestModel.fromJson(Map<String, Object?> json) =>
      _$QuoteRequestModelFromJson(json);
}
