import 'package:freezed_annotation/freezed_annotation.dart';

part 'faq.freezed.dart';

@freezed
class Faq with _$Faq {
  const factory Faq({
    required int idx,
    required String question,
    required String answer,
    required int publishedAt,
  }) = _Faq;

  const Faq._();
}
