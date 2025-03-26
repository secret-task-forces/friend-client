import 'package:flutter_template/features/home/data/models/response/quote_request_model.dart';
import 'package:flutter_template/features/home/domain/entities/quote_request.dart';
import 'package:flutter_template/features/home/domain/enums/device_type.dart';

extension QuoteRequestMapper on QuoteRequestModel {
  QuoteRequest toEntity() => QuoteRequest(
        idx: idx,
        exprAt: exprAt,
        devicePartialImg1: devicePartialImg1,
        deviceFullImg: deviceFullImg,
        offerCount: offerCount,
        deviceType: DeviceType.fromString(dtype),
      );
}
