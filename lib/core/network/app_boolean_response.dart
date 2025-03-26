import 'package:freezed_annotation/freezed_annotation.dart';

part 'app_boolean_response.freezed.dart';
part 'app_boolean_response.g.dart';

@freezed
class AppBooleanResponse with _$AppBooleanResponse {
  const factory AppBooleanResponse({
    @JsonKey(name: 'result') required bool result,
  }) = _AppBooleanResponse;

  factory AppBooleanResponse.fromJson(Map<String, Object?> json) =>
      _$AppBooleanResponseFromJson(json);
}
