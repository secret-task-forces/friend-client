// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$LoginStateImpl _$$LoginStateImplFromJson(Map<String, dynamic> json) =>
    _$LoginStateImpl(
      showOtherButton: json['showOtherButton'] as bool,
      showDialog: json['showDialog'] as bool,
      dialogTitle: json['dialogTitle'] as String,
      dialogContent: json['dialogContent'] as String,
      isTestLogin: json['isTestLogin'] as bool,
    );

Map<String, dynamic> _$$LoginStateImplToJson(_$LoginStateImpl instance) =>
    <String, dynamic>{
      'showOtherButton': instance.showOtherButton,
      'showDialog': instance.showDialog,
      'dialogTitle': instance.dialogTitle,
      'dialogContent': instance.dialogContent,
      'isTestLogin': instance.isTestLogin,
    };
