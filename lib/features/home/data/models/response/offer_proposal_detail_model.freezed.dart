// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_proposal_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

OfferProposalDetailModel _$OfferProposalDetailModelFromJson(
    Map<String, dynamic> json) {
  return _OfferProposalDetailModel.fromJson(json);
}

/// @nodoc
mixin _$OfferProposalDetailModel {
  @JsonKey(name: 'idx')
  int get idx => throw _privateConstructorUsedError;
  @JsonKey(name: 'branchIdx')
  int get branchIdx => throw _privateConstructorUsedError;
  @JsonKey(name: 'branchName')
  String get branchName => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthlyTotalInstallment')
  int get monthlyTotalInstallment => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalSupportAmount')
  int get additionalSupportAmount => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceModel')
  String? get deviceModel => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceFullImg')
  String? get deviceFullImg => throw _privateConstructorUsedError;
  @JsonKey(name: 'colorCode')
  String? get colorCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'colorName')
  String? get colorName => throw _privateConstructorUsedError;
  @JsonKey(name: 'deviceStorageType')
  String? get deviceStorageType => throw _privateConstructorUsedError;
  @JsonKey(name: 'monthlyPlanFee')
  int get monthlyPlanFee => throw _privateConstructorUsedError;
  @JsonKey(name: 'planName')
  String get planName => throw _privateConstructorUsedError;
  @JsonKey(name: 'dataLimit')
  String get dataLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'callLimit')
  String get callLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'smsLimit')
  String get smsLimit => throw _privateConstructorUsedError;
  @JsonKey(name: 'telecom')
  String get telecom => throw _privateConstructorUsedError;
  @JsonKey(name: 'extraInfo')
  String? get extraInfo => throw _privateConstructorUsedError;
  @JsonKey(name: 'additionalBenefits')
  List<String>? get additionalBenefits => throw _privateConstructorUsedError;
  @JsonKey(name: 'planDescription')
  String? get planDescription => throw _privateConstructorUsedError;
  @JsonKey(name: 'chatRoomStatus')
  String get chatRoomStatus => throw _privateConstructorUsedError;
  @JsonKey(name: 'chatClosedReason')
  String? get chatClosedReason => throw _privateConstructorUsedError;
  @JsonKey(name: 'chatRoomId')
  String? get chatRoomId => throw _privateConstructorUsedError;

  /// Serializes this OfferProposalDetailModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of OfferProposalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OfferProposalDetailModelCopyWith<OfferProposalDetailModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferProposalDetailModelCopyWith<$Res> {
  factory $OfferProposalDetailModelCopyWith(OfferProposalDetailModel value,
          $Res Function(OfferProposalDetailModel) then) =
      _$OfferProposalDetailModelCopyWithImpl<$Res, OfferProposalDetailModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'branchIdx') int branchIdx,
      @JsonKey(name: 'branchName') String branchName,
      @JsonKey(name: 'monthlyTotalInstallment') int monthlyTotalInstallment,
      @JsonKey(name: 'additionalSupportAmount') int additionalSupportAmount,
      @JsonKey(name: 'deviceModel') String? deviceModel,
      @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
      @JsonKey(name: 'colorCode') String? colorCode,
      @JsonKey(name: 'colorName') String? colorName,
      @JsonKey(name: 'deviceStorageType') String? deviceStorageType,
      @JsonKey(name: 'monthlyPlanFee') int monthlyPlanFee,
      @JsonKey(name: 'planName') String planName,
      @JsonKey(name: 'dataLimit') String dataLimit,
      @JsonKey(name: 'callLimit') String callLimit,
      @JsonKey(name: 'smsLimit') String smsLimit,
      @JsonKey(name: 'telecom') String telecom,
      @JsonKey(name: 'extraInfo') String? extraInfo,
      @JsonKey(name: 'additionalBenefits') List<String>? additionalBenefits,
      @JsonKey(name: 'planDescription') String? planDescription,
      @JsonKey(name: 'chatRoomStatus') String chatRoomStatus,
      @JsonKey(name: 'chatClosedReason') String? chatClosedReason,
      @JsonKey(name: 'chatRoomId') String? chatRoomId});
}

/// @nodoc
class _$OfferProposalDetailModelCopyWithImpl<$Res,
        $Val extends OfferProposalDetailModel>
    implements $OfferProposalDetailModelCopyWith<$Res> {
  _$OfferProposalDetailModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OfferProposalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? branchIdx = null,
    Object? branchName = null,
    Object? monthlyTotalInstallment = null,
    Object? additionalSupportAmount = null,
    Object? deviceModel = freezed,
    Object? deviceFullImg = freezed,
    Object? colorCode = freezed,
    Object? colorName = freezed,
    Object? deviceStorageType = freezed,
    Object? monthlyPlanFee = null,
    Object? planName = null,
    Object? dataLimit = null,
    Object? callLimit = null,
    Object? smsLimit = null,
    Object? telecom = null,
    Object? extraInfo = freezed,
    Object? additionalBenefits = freezed,
    Object? planDescription = freezed,
    Object? chatRoomStatus = null,
    Object? chatClosedReason = freezed,
    Object? chatRoomId = freezed,
  }) {
    return _then(_value.copyWith(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      branchIdx: null == branchIdx
          ? _value.branchIdx
          : branchIdx // ignore: cast_nullable_to_non_nullable
              as int,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTotalInstallment: null == monthlyTotalInstallment
          ? _value.monthlyTotalInstallment
          : monthlyTotalInstallment // ignore: cast_nullable_to_non_nullable
              as int,
      additionalSupportAmount: null == additionalSupportAmount
          ? _value.additionalSupportAmount
          : additionalSupportAmount // ignore: cast_nullable_to_non_nullable
              as int,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceFullImg: freezed == deviceFullImg
          ? _value.deviceFullImg
          : deviceFullImg // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      colorName: freezed == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceStorageType: freezed == deviceStorageType
          ? _value.deviceStorageType
          : deviceStorageType // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPlanFee: null == monthlyPlanFee
          ? _value.monthlyPlanFee
          : monthlyPlanFee // ignore: cast_nullable_to_non_nullable
              as int,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      dataLimit: null == dataLimit
          ? _value.dataLimit
          : dataLimit // ignore: cast_nullable_to_non_nullable
              as String,
      callLimit: null == callLimit
          ? _value.callLimit
          : callLimit // ignore: cast_nullable_to_non_nullable
              as String,
      smsLimit: null == smsLimit
          ? _value.smsLimit
          : smsLimit // ignore: cast_nullable_to_non_nullable
              as String,
      telecom: null == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalBenefits: freezed == additionalBenefits
          ? _value.additionalBenefits
          : additionalBenefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      planDescription: freezed == planDescription
          ? _value.planDescription
          : planDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      chatRoomStatus: null == chatRoomStatus
          ? _value.chatRoomStatus
          : chatRoomStatus // ignore: cast_nullable_to_non_nullable
              as String,
      chatClosedReason: freezed == chatClosedReason
          ? _value.chatClosedReason
          : chatClosedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      chatRoomId: freezed == chatRoomId
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$OfferProposalDetailModelImplCopyWith<$Res>
    implements $OfferProposalDetailModelCopyWith<$Res> {
  factory _$$OfferProposalDetailModelImplCopyWith(
          _$OfferProposalDetailModelImpl value,
          $Res Function(_$OfferProposalDetailModelImpl) then) =
      __$$OfferProposalDetailModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'idx') int idx,
      @JsonKey(name: 'branchIdx') int branchIdx,
      @JsonKey(name: 'branchName') String branchName,
      @JsonKey(name: 'monthlyTotalInstallment') int monthlyTotalInstallment,
      @JsonKey(name: 'additionalSupportAmount') int additionalSupportAmount,
      @JsonKey(name: 'deviceModel') String? deviceModel,
      @JsonKey(name: 'deviceFullImg') String? deviceFullImg,
      @JsonKey(name: 'colorCode') String? colorCode,
      @JsonKey(name: 'colorName') String? colorName,
      @JsonKey(name: 'deviceStorageType') String? deviceStorageType,
      @JsonKey(name: 'monthlyPlanFee') int monthlyPlanFee,
      @JsonKey(name: 'planName') String planName,
      @JsonKey(name: 'dataLimit') String dataLimit,
      @JsonKey(name: 'callLimit') String callLimit,
      @JsonKey(name: 'smsLimit') String smsLimit,
      @JsonKey(name: 'telecom') String telecom,
      @JsonKey(name: 'extraInfo') String? extraInfo,
      @JsonKey(name: 'additionalBenefits') List<String>? additionalBenefits,
      @JsonKey(name: 'planDescription') String? planDescription,
      @JsonKey(name: 'chatRoomStatus') String chatRoomStatus,
      @JsonKey(name: 'chatClosedReason') String? chatClosedReason,
      @JsonKey(name: 'chatRoomId') String? chatRoomId});
}

/// @nodoc
class __$$OfferProposalDetailModelImplCopyWithImpl<$Res>
    extends _$OfferProposalDetailModelCopyWithImpl<$Res,
        _$OfferProposalDetailModelImpl>
    implements _$$OfferProposalDetailModelImplCopyWith<$Res> {
  __$$OfferProposalDetailModelImplCopyWithImpl(
      _$OfferProposalDetailModelImpl _value,
      $Res Function(_$OfferProposalDetailModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of OfferProposalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? idx = null,
    Object? branchIdx = null,
    Object? branchName = null,
    Object? monthlyTotalInstallment = null,
    Object? additionalSupportAmount = null,
    Object? deviceModel = freezed,
    Object? deviceFullImg = freezed,
    Object? colorCode = freezed,
    Object? colorName = freezed,
    Object? deviceStorageType = freezed,
    Object? monthlyPlanFee = null,
    Object? planName = null,
    Object? dataLimit = null,
    Object? callLimit = null,
    Object? smsLimit = null,
    Object? telecom = null,
    Object? extraInfo = freezed,
    Object? additionalBenefits = freezed,
    Object? planDescription = freezed,
    Object? chatRoomStatus = null,
    Object? chatClosedReason = freezed,
    Object? chatRoomId = freezed,
  }) {
    return _then(_$OfferProposalDetailModelImpl(
      idx: null == idx
          ? _value.idx
          : idx // ignore: cast_nullable_to_non_nullable
              as int,
      branchIdx: null == branchIdx
          ? _value.branchIdx
          : branchIdx // ignore: cast_nullable_to_non_nullable
              as int,
      branchName: null == branchName
          ? _value.branchName
          : branchName // ignore: cast_nullable_to_non_nullable
              as String,
      monthlyTotalInstallment: null == monthlyTotalInstallment
          ? _value.monthlyTotalInstallment
          : monthlyTotalInstallment // ignore: cast_nullable_to_non_nullable
              as int,
      additionalSupportAmount: null == additionalSupportAmount
          ? _value.additionalSupportAmount
          : additionalSupportAmount // ignore: cast_nullable_to_non_nullable
              as int,
      deviceModel: freezed == deviceModel
          ? _value.deviceModel
          : deviceModel // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceFullImg: freezed == deviceFullImg
          ? _value.deviceFullImg
          : deviceFullImg // ignore: cast_nullable_to_non_nullable
              as String?,
      colorCode: freezed == colorCode
          ? _value.colorCode
          : colorCode // ignore: cast_nullable_to_non_nullable
              as String?,
      colorName: freezed == colorName
          ? _value.colorName
          : colorName // ignore: cast_nullable_to_non_nullable
              as String?,
      deviceStorageType: freezed == deviceStorageType
          ? _value.deviceStorageType
          : deviceStorageType // ignore: cast_nullable_to_non_nullable
              as String?,
      monthlyPlanFee: null == monthlyPlanFee
          ? _value.monthlyPlanFee
          : monthlyPlanFee // ignore: cast_nullable_to_non_nullable
              as int,
      planName: null == planName
          ? _value.planName
          : planName // ignore: cast_nullable_to_non_nullable
              as String,
      dataLimit: null == dataLimit
          ? _value.dataLimit
          : dataLimit // ignore: cast_nullable_to_non_nullable
              as String,
      callLimit: null == callLimit
          ? _value.callLimit
          : callLimit // ignore: cast_nullable_to_non_nullable
              as String,
      smsLimit: null == smsLimit
          ? _value.smsLimit
          : smsLimit // ignore: cast_nullable_to_non_nullable
              as String,
      telecom: null == telecom
          ? _value.telecom
          : telecom // ignore: cast_nullable_to_non_nullable
              as String,
      extraInfo: freezed == extraInfo
          ? _value.extraInfo
          : extraInfo // ignore: cast_nullable_to_non_nullable
              as String?,
      additionalBenefits: freezed == additionalBenefits
          ? _value._additionalBenefits
          : additionalBenefits // ignore: cast_nullable_to_non_nullable
              as List<String>?,
      planDescription: freezed == planDescription
          ? _value.planDescription
          : planDescription // ignore: cast_nullable_to_non_nullable
              as String?,
      chatRoomStatus: null == chatRoomStatus
          ? _value.chatRoomStatus
          : chatRoomStatus // ignore: cast_nullable_to_non_nullable
              as String,
      chatClosedReason: freezed == chatClosedReason
          ? _value.chatClosedReason
          : chatClosedReason // ignore: cast_nullable_to_non_nullable
              as String?,
      chatRoomId: freezed == chatRoomId
          ? _value.chatRoomId
          : chatRoomId // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$OfferProposalDetailModelImpl
    with DiagnosticableTreeMixin
    implements _OfferProposalDetailModel {
  const _$OfferProposalDetailModelImpl(
      {@JsonKey(name: 'idx') required this.idx,
      @JsonKey(name: 'branchIdx') required this.branchIdx,
      @JsonKey(name: 'branchName') required this.branchName,
      @JsonKey(name: 'monthlyTotalInstallment')
      required this.monthlyTotalInstallment,
      @JsonKey(name: 'additionalSupportAmount')
      required this.additionalSupportAmount,
      @JsonKey(name: 'deviceModel') this.deviceModel,
      @JsonKey(name: 'deviceFullImg') this.deviceFullImg,
      @JsonKey(name: 'colorCode') this.colorCode,
      @JsonKey(name: 'colorName') this.colorName,
      @JsonKey(name: 'deviceStorageType') this.deviceStorageType,
      @JsonKey(name: 'monthlyPlanFee') required this.monthlyPlanFee,
      @JsonKey(name: 'planName') required this.planName,
      @JsonKey(name: 'dataLimit') required this.dataLimit,
      @JsonKey(name: 'callLimit') required this.callLimit,
      @JsonKey(name: 'smsLimit') required this.smsLimit,
      @JsonKey(name: 'telecom') required this.telecom,
      @JsonKey(name: 'extraInfo') this.extraInfo,
      @JsonKey(name: 'additionalBenefits')
      final List<String>? additionalBenefits,
      @JsonKey(name: 'planDescription') this.planDescription,
      @JsonKey(name: 'chatRoomStatus') required this.chatRoomStatus,
      @JsonKey(name: 'chatClosedReason') this.chatClosedReason,
      @JsonKey(name: 'chatRoomId') this.chatRoomId})
      : _additionalBenefits = additionalBenefits;

  factory _$OfferProposalDetailModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$OfferProposalDetailModelImplFromJson(json);

  @override
  @JsonKey(name: 'idx')
  final int idx;
  @override
  @JsonKey(name: 'branchIdx')
  final int branchIdx;
  @override
  @JsonKey(name: 'branchName')
  final String branchName;
  @override
  @JsonKey(name: 'monthlyTotalInstallment')
  final int monthlyTotalInstallment;
  @override
  @JsonKey(name: 'additionalSupportAmount')
  final int additionalSupportAmount;
  @override
  @JsonKey(name: 'deviceModel')
  final String? deviceModel;
  @override
  @JsonKey(name: 'deviceFullImg')
  final String? deviceFullImg;
  @override
  @JsonKey(name: 'colorCode')
  final String? colorCode;
  @override
  @JsonKey(name: 'colorName')
  final String? colorName;
  @override
  @JsonKey(name: 'deviceStorageType')
  final String? deviceStorageType;
  @override
  @JsonKey(name: 'monthlyPlanFee')
  final int monthlyPlanFee;
  @override
  @JsonKey(name: 'planName')
  final String planName;
  @override
  @JsonKey(name: 'dataLimit')
  final String dataLimit;
  @override
  @JsonKey(name: 'callLimit')
  final String callLimit;
  @override
  @JsonKey(name: 'smsLimit')
  final String smsLimit;
  @override
  @JsonKey(name: 'telecom')
  final String telecom;
  @override
  @JsonKey(name: 'extraInfo')
  final String? extraInfo;
  final List<String>? _additionalBenefits;
  @override
  @JsonKey(name: 'additionalBenefits')
  List<String>? get additionalBenefits {
    final value = _additionalBenefits;
    if (value == null) return null;
    if (_additionalBenefits is EqualUnmodifiableListView)
      return _additionalBenefits;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey(name: 'planDescription')
  final String? planDescription;
  @override
  @JsonKey(name: 'chatRoomStatus')
  final String chatRoomStatus;
  @override
  @JsonKey(name: 'chatClosedReason')
  final String? chatClosedReason;
  @override
  @JsonKey(name: 'chatRoomId')
  final String? chatRoomId;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'OfferProposalDetailModel(idx: $idx, branchIdx: $branchIdx, branchName: $branchName, monthlyTotalInstallment: $monthlyTotalInstallment, additionalSupportAmount: $additionalSupportAmount, deviceModel: $deviceModel, deviceFullImg: $deviceFullImg, colorCode: $colorCode, colorName: $colorName, deviceStorageType: $deviceStorageType, monthlyPlanFee: $monthlyPlanFee, planName: $planName, dataLimit: $dataLimit, callLimit: $callLimit, smsLimit: $smsLimit, telecom: $telecom, extraInfo: $extraInfo, additionalBenefits: $additionalBenefits, planDescription: $planDescription, chatRoomStatus: $chatRoomStatus, chatClosedReason: $chatClosedReason, chatRoomId: $chatRoomId)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'OfferProposalDetailModel'))
      ..add(DiagnosticsProperty('idx', idx))
      ..add(DiagnosticsProperty('branchIdx', branchIdx))
      ..add(DiagnosticsProperty('branchName', branchName))
      ..add(DiagnosticsProperty(
          'monthlyTotalInstallment', monthlyTotalInstallment))
      ..add(DiagnosticsProperty(
          'additionalSupportAmount', additionalSupportAmount))
      ..add(DiagnosticsProperty('deviceModel', deviceModel))
      ..add(DiagnosticsProperty('deviceFullImg', deviceFullImg))
      ..add(DiagnosticsProperty('colorCode', colorCode))
      ..add(DiagnosticsProperty('colorName', colorName))
      ..add(DiagnosticsProperty('deviceStorageType', deviceStorageType))
      ..add(DiagnosticsProperty('monthlyPlanFee', monthlyPlanFee))
      ..add(DiagnosticsProperty('planName', planName))
      ..add(DiagnosticsProperty('dataLimit', dataLimit))
      ..add(DiagnosticsProperty('callLimit', callLimit))
      ..add(DiagnosticsProperty('smsLimit', smsLimit))
      ..add(DiagnosticsProperty('telecom', telecom))
      ..add(DiagnosticsProperty('extraInfo', extraInfo))
      ..add(DiagnosticsProperty('additionalBenefits', additionalBenefits))
      ..add(DiagnosticsProperty('planDescription', planDescription))
      ..add(DiagnosticsProperty('chatRoomStatus', chatRoomStatus))
      ..add(DiagnosticsProperty('chatClosedReason', chatClosedReason))
      ..add(DiagnosticsProperty('chatRoomId', chatRoomId));
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OfferProposalDetailModelImpl &&
            (identical(other.idx, idx) || other.idx == idx) &&
            (identical(other.branchIdx, branchIdx) ||
                other.branchIdx == branchIdx) &&
            (identical(other.branchName, branchName) ||
                other.branchName == branchName) &&
            (identical(
                    other.monthlyTotalInstallment, monthlyTotalInstallment) ||
                other.monthlyTotalInstallment == monthlyTotalInstallment) &&
            (identical(
                    other.additionalSupportAmount, additionalSupportAmount) ||
                other.additionalSupportAmount == additionalSupportAmount) &&
            (identical(other.deviceModel, deviceModel) ||
                other.deviceModel == deviceModel) &&
            (identical(other.deviceFullImg, deviceFullImg) ||
                other.deviceFullImg == deviceFullImg) &&
            (identical(other.colorCode, colorCode) ||
                other.colorCode == colorCode) &&
            (identical(other.colorName, colorName) ||
                other.colorName == colorName) &&
            (identical(other.deviceStorageType, deviceStorageType) ||
                other.deviceStorageType == deviceStorageType) &&
            (identical(other.monthlyPlanFee, monthlyPlanFee) ||
                other.monthlyPlanFee == monthlyPlanFee) &&
            (identical(other.planName, planName) ||
                other.planName == planName) &&
            (identical(other.dataLimit, dataLimit) ||
                other.dataLimit == dataLimit) &&
            (identical(other.callLimit, callLimit) ||
                other.callLimit == callLimit) &&
            (identical(other.smsLimit, smsLimit) ||
                other.smsLimit == smsLimit) &&
            (identical(other.telecom, telecom) || other.telecom == telecom) &&
            (identical(other.extraInfo, extraInfo) ||
                other.extraInfo == extraInfo) &&
            const DeepCollectionEquality()
                .equals(other._additionalBenefits, _additionalBenefits) &&
            (identical(other.planDescription, planDescription) ||
                other.planDescription == planDescription) &&
            (identical(other.chatRoomStatus, chatRoomStatus) ||
                other.chatRoomStatus == chatRoomStatus) &&
            (identical(other.chatClosedReason, chatClosedReason) ||
                other.chatClosedReason == chatClosedReason) &&
            (identical(other.chatRoomId, chatRoomId) ||
                other.chatRoomId == chatRoomId));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hashAll([
        runtimeType,
        idx,
        branchIdx,
        branchName,
        monthlyTotalInstallment,
        additionalSupportAmount,
        deviceModel,
        deviceFullImg,
        colorCode,
        colorName,
        deviceStorageType,
        monthlyPlanFee,
        planName,
        dataLimit,
        callLimit,
        smsLimit,
        telecom,
        extraInfo,
        const DeepCollectionEquality().hash(_additionalBenefits),
        planDescription,
        chatRoomStatus,
        chatClosedReason,
        chatRoomId
      ]);

  /// Create a copy of OfferProposalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OfferProposalDetailModelImplCopyWith<_$OfferProposalDetailModelImpl>
      get copyWith => __$$OfferProposalDetailModelImplCopyWithImpl<
          _$OfferProposalDetailModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$OfferProposalDetailModelImplToJson(
      this,
    );
  }
}

abstract class _OfferProposalDetailModel implements OfferProposalDetailModel {
  const factory _OfferProposalDetailModel(
          {@JsonKey(name: 'idx') required final int idx,
          @JsonKey(name: 'branchIdx') required final int branchIdx,
          @JsonKey(name: 'branchName') required final String branchName,
          @JsonKey(name: 'monthlyTotalInstallment')
          required final int monthlyTotalInstallment,
          @JsonKey(name: 'additionalSupportAmount')
          required final int additionalSupportAmount,
          @JsonKey(name: 'deviceModel') final String? deviceModel,
          @JsonKey(name: 'deviceFullImg') final String? deviceFullImg,
          @JsonKey(name: 'colorCode') final String? colorCode,
          @JsonKey(name: 'colorName') final String? colorName,
          @JsonKey(name: 'deviceStorageType') final String? deviceStorageType,
          @JsonKey(name: 'monthlyPlanFee') required final int monthlyPlanFee,
          @JsonKey(name: 'planName') required final String planName,
          @JsonKey(name: 'dataLimit') required final String dataLimit,
          @JsonKey(name: 'callLimit') required final String callLimit,
          @JsonKey(name: 'smsLimit') required final String smsLimit,
          @JsonKey(name: 'telecom') required final String telecom,
          @JsonKey(name: 'extraInfo') final String? extraInfo,
          @JsonKey(name: 'additionalBenefits')
          final List<String>? additionalBenefits,
          @JsonKey(name: 'planDescription') final String? planDescription,
          @JsonKey(name: 'chatRoomStatus') required final String chatRoomStatus,
          @JsonKey(name: 'chatClosedReason') final String? chatClosedReason,
          @JsonKey(name: 'chatRoomId') final String? chatRoomId}) =
      _$OfferProposalDetailModelImpl;

  factory _OfferProposalDetailModel.fromJson(Map<String, dynamic> json) =
      _$OfferProposalDetailModelImpl.fromJson;

  @override
  @JsonKey(name: 'idx')
  int get idx;
  @override
  @JsonKey(name: 'branchIdx')
  int get branchIdx;
  @override
  @JsonKey(name: 'branchName')
  String get branchName;
  @override
  @JsonKey(name: 'monthlyTotalInstallment')
  int get monthlyTotalInstallment;
  @override
  @JsonKey(name: 'additionalSupportAmount')
  int get additionalSupportAmount;
  @override
  @JsonKey(name: 'deviceModel')
  String? get deviceModel;
  @override
  @JsonKey(name: 'deviceFullImg')
  String? get deviceFullImg;
  @override
  @JsonKey(name: 'colorCode')
  String? get colorCode;
  @override
  @JsonKey(name: 'colorName')
  String? get colorName;
  @override
  @JsonKey(name: 'deviceStorageType')
  String? get deviceStorageType;
  @override
  @JsonKey(name: 'monthlyPlanFee')
  int get monthlyPlanFee;
  @override
  @JsonKey(name: 'planName')
  String get planName;
  @override
  @JsonKey(name: 'dataLimit')
  String get dataLimit;
  @override
  @JsonKey(name: 'callLimit')
  String get callLimit;
  @override
  @JsonKey(name: 'smsLimit')
  String get smsLimit;
  @override
  @JsonKey(name: 'telecom')
  String get telecom;
  @override
  @JsonKey(name: 'extraInfo')
  String? get extraInfo;
  @override
  @JsonKey(name: 'additionalBenefits')
  List<String>? get additionalBenefits;
  @override
  @JsonKey(name: 'planDescription')
  String? get planDescription;
  @override
  @JsonKey(name: 'chatRoomStatus')
  String get chatRoomStatus;
  @override
  @JsonKey(name: 'chatClosedReason')
  String? get chatClosedReason;
  @override
  @JsonKey(name: 'chatRoomId')
  String? get chatRoomId;

  /// Create a copy of OfferProposalDetailModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OfferProposalDetailModelImplCopyWith<_$OfferProposalDetailModelImpl>
      get copyWith => throw _privateConstructorUsedError;
}
