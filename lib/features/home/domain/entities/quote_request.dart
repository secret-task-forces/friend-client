import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:flutter_template/features/home/domain/enums/device_type.dart';

part 'quote_request.freezed.dart';

@freezed
class QuoteRequest with _$QuoteRequest {
  const factory QuoteRequest({
    required int idx,
    required int exprAt,
    String? devicePartialImg1,
    String? deviceFullImg,
    required int offerCount,
    required DeviceType deviceType,
  }) = _QuoteRequest;

  const QuoteRequest._();
}
