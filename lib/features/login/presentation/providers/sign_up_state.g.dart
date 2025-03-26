// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$SignUpStateImpl _$$SignUpStateImplFromJson(Map<String, dynamic> json) =>
    _$SignUpStateImpl(
      showTermBottomSheet: json['showTermBottomSheet'] as bool,
      ageCheck: json['ageCheck'] as bool,
      useTermCheck: json['useTermCheck'] as bool,
      privacyCheck: json['privacyCheck'] as bool,
      marketingCheck: json['marketingCheck'] as bool,
      showDialog: json['showDialog'] as bool,
      dialogTitle: json['dialogTitle'] as String,
      dialogContent: json['dialogContent'] as String,
      signInModel: json['signInModel'] == null
          ? null
          : SignInModel.fromJson(json['signInModel'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$SignUpStateImplToJson(_$SignUpStateImpl instance) =>
    <String, dynamic>{
      'showTermBottomSheet': instance.showTermBottomSheet,
      'ageCheck': instance.ageCheck,
      'useTermCheck': instance.useTermCheck,
      'privacyCheck': instance.privacyCheck,
      'marketingCheck': instance.marketingCheck,
      'showDialog': instance.showDialog,
      'dialogTitle': instance.dialogTitle,
      'dialogContent': instance.dialogContent,
      'signInModel': instance.signInModel,
    };
