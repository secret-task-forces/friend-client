import 'package:flutter_template/features/my/data/models/response/faq_model.dart';
import 'package:flutter_template/features/my/domain/entities/faq.dart';

extension FaqMapper on FaqModel {
  Faq toEntity() => Faq(
        idx: idx,
        question: question,
        answer: answer,
        publishedAt: publishedAt,
      );
}
