// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SignUpResponse _$SignUpResponseFromJson(Map<String, dynamic> json) =>
    SignUpResponse(
      json['message'] as String?,
      json['status'] as bool?,
      (json['code'] as num?)?.toInt(),
      json['data'] == null
          ? null
          : UserData.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$SignUpResponseToJson(SignUpResponse instance) =>
    <String, dynamic>{
      'message': instance.message,
      'status': instance.status,
      'code': instance.code,
      'data': instance.userData,
    };

UserData _$UserDataFromJson(Map<String, dynamic> json) => UserData(
      json['token'] as String?,
      json['username'] as String?,
    );

Map<String, dynamic> _$UserDataToJson(UserData instance) => <String, dynamic>{
      'token': instance.token,
      'username': instance.userName,
    };
