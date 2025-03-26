// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_withdrawal_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostWithdrawalModelImpl _$$PostWithdrawalModelImplFromJson(
        Map<String, dynamic> json) =>
    _$PostWithdrawalModelImpl(
      reasons:
          (json['reasons'] as List<dynamic>).map((e) => e as String).toList(),
    );

Map<String, dynamic> _$$PostWithdrawalModelImplToJson(
        _$PostWithdrawalModelImpl instance) =>
    <String, dynamic>{
      'reasons': instance.reasons,
    };
