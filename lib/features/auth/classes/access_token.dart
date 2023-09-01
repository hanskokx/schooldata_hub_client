import 'package:freezed_annotation/freezed_annotation.dart';

part 'access_token.freezed.dart';
part 'access_token.g.dart';

// ignore_for_file: invalid_annotation_target
// https://github.com/rrousselGit/freezed/issues/527#issuecomment-934281148

@freezed
class AccessToken with _$AccessToken {
  const factory AccessToken({
    @JsonKey(name: 'access_token') required String accessToken,
    @JsonKey(name: 'refresh_token') required String refreshToken,
    @JsonKey(name: 'id_token') String? idToken,
    @JsonKey(name: 'expires_in') int? expiresIn,
    @JsonKey(name: 'token_type') String? tokenType,
  }) = _AccessToken;

  factory AccessToken.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenFromJson(json);
}

@freezed
class AccessTokenRequest with _$AccessTokenRequest {
  const factory AccessTokenRequest({
    @Default('authorization_code')
    @JsonKey(name: 'grant_type')
    String grantType,
  }) = _AccessTokenRequest;

  factory AccessTokenRequest.fromJson(Map<String, dynamic> json) =>
      _$AccessTokenRequestFromJson(json);
}
