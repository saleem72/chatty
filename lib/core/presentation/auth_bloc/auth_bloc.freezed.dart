// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_CheckForAuthStatusCopyWith<$Res> {
  factory _$$_CheckForAuthStatusCopyWith(_$_CheckForAuthStatus value,
          $Res Function(_$_CheckForAuthStatus) then) =
      __$$_CheckForAuthStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_CheckForAuthStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_CheckForAuthStatus>
    implements _$$_CheckForAuthStatusCopyWith<$Res> {
  __$$_CheckForAuthStatusCopyWithImpl(
      _$_CheckForAuthStatus _value, $Res Function(_$_CheckForAuthStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_CheckForAuthStatus
    with DiagnosticableTreeMixin
    implements _CheckForAuthStatus {
  const _$_CheckForAuthStatus();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.checkForAuthStatus()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.checkForAuthStatus'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_CheckForAuthStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) {
    return checkForAuthStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) {
    return checkForAuthStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) {
    if (checkForAuthStatus != null) {
      return checkForAuthStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) {
    return checkForAuthStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) {
    return checkForAuthStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) {
    if (checkForAuthStatus != null) {
      return checkForAuthStatus(this);
    }
    return orElse();
  }
}

abstract class _CheckForAuthStatus implements AuthEvent {
  const factory _CheckForAuthStatus() = _$_CheckForAuthStatus;
}

/// @nodoc
abstract class _$$_SignInAnonymouslyCopyWith<$Res> {
  factory _$$_SignInAnonymouslyCopyWith(_$_SignInAnonymously value,
          $Res Function(_$_SignInAnonymously) then) =
      __$$_SignInAnonymouslyCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_SignInAnonymouslyCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_SignInAnonymously>
    implements _$$_SignInAnonymouslyCopyWith<$Res> {
  __$$_SignInAnonymouslyCopyWithImpl(
      _$_SignInAnonymously _value, $Res Function(_$_SignInAnonymously) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_SignInAnonymously
    with DiagnosticableTreeMixin
    implements _SignInAnonymously {
  const _$_SignInAnonymously();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.signInAnonymously()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.signInAnonymously'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_SignInAnonymously);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) {
    return signInAnonymously();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) {
    return signInAnonymously?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) {
    return signInAnonymously(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) {
    return signInAnonymously?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) {
    if (signInAnonymously != null) {
      return signInAnonymously(this);
    }
    return orElse();
  }
}

abstract class _SignInAnonymously implements AuthEvent {
  const factory _SignInAnonymously() = _$_SignInAnonymously;
}

/// @nodoc
abstract class _$$_LogoutCopyWith<$Res> {
  factory _$$_LogoutCopyWith(_$_Logout value, $Res Function(_$_Logout) then) =
      __$$_LogoutCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LogoutCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_Logout>
    implements _$$_LogoutCopyWith<$Res> {
  __$$_LogoutCopyWithImpl(_$_Logout _value, $Res Function(_$_Logout) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Logout with DiagnosticableTreeMixin implements _Logout {
  const _$_Logout();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.logout()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'AuthEvent.logout'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Logout);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) {
    return logout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) {
    return logout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) {
    return logout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) {
    return logout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) {
    if (logout != null) {
      return logout(this);
    }
    return orElse();
  }
}

abstract class _Logout implements AuthEvent {
  const factory _Logout() = _$_Logout;
}

/// @nodoc
abstract class _$$_UpdateProfileCopyWith<$Res> {
  factory _$$_UpdateProfileCopyWith(
          _$_UpdateProfile value, $Res Function(_$_UpdateProfile) then) =
      __$$_UpdateProfileCopyWithImpl<$Res>;
  @useResult
  $Res call({UpdatedUser updated});
}

/// @nodoc
class __$$_UpdateProfileCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UpdateProfile>
    implements _$$_UpdateProfileCopyWith<$Res> {
  __$$_UpdateProfileCopyWithImpl(
      _$_UpdateProfile _value, $Res Function(_$_UpdateProfile) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? updated = null,
  }) {
    return _then(_$_UpdateProfile(
      updated: null == updated
          ? _value.updated
          : updated // ignore: cast_nullable_to_non_nullable
              as UpdatedUser,
    ));
  }
}

/// @nodoc

class _$_UpdateProfile with DiagnosticableTreeMixin implements _UpdateProfile {
  const _$_UpdateProfile({required this.updated});

  @override
  final UpdatedUser updated;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.updateProfile(updated: $updated)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.updateProfile'))
      ..add(DiagnosticsProperty('updated', updated));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UpdateProfile &&
            (identical(other.updated, updated) || other.updated == updated));
  }

  @override
  int get hashCode => Object.hash(runtimeType, updated);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UpdateProfileCopyWith<_$_UpdateProfile> get copyWith =>
      __$$_UpdateProfileCopyWithImpl<_$_UpdateProfile>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) {
    return updateProfile(updated);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) {
    return updateProfile?.call(updated);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(updated);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) {
    return updateProfile(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) {
    return updateProfile?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) {
    if (updateProfile != null) {
      return updateProfile(this);
    }
    return orElse();
  }
}

abstract class _UpdateProfile implements AuthEvent {
  const factory _UpdateProfile({required final UpdatedUser updated}) =
      _$_UpdateProfile;

  UpdatedUser get updated;
  @JsonKey(ignore: true)
  _$$_UpdateProfileCopyWith<_$_UpdateProfile> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_UploadProfileImageCopyWith<$Res> {
  factory _$$_UploadProfileImageCopyWith(_$_UploadProfileImage value,
          $Res Function(_$_UploadProfileImage) then) =
      __$$_UploadProfileImageCopyWithImpl<$Res>;
  @useResult
  $Res call({File image});
}

/// @nodoc
class __$$_UploadProfileImageCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_UploadProfileImage>
    implements _$$_UploadProfileImageCopyWith<$Res> {
  __$$_UploadProfileImageCopyWithImpl(
      _$_UploadProfileImage _value, $Res Function(_$_UploadProfileImage) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? image = null,
  }) {
    return _then(_$_UploadProfileImage(
      image: null == image
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as File,
    ));
  }
}

/// @nodoc

class _$_UploadProfileImage
    with DiagnosticableTreeMixin
    implements _UploadProfileImage {
  const _$_UploadProfileImage({required this.image});

  @override
  final File image;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.uploadProfileImage(image: $image)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.uploadProfileImage'))
      ..add(DiagnosticsProperty('image', image));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UploadProfileImage &&
            (identical(other.image, image) || other.image == image));
  }

  @override
  int get hashCode => Object.hash(runtimeType, image);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UploadProfileImageCopyWith<_$_UploadProfileImage> get copyWith =>
      __$$_UploadProfileImageCopyWithImpl<_$_UploadProfileImage>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) {
    return uploadProfileImage(image);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) {
    return uploadProfileImage?.call(image);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(image);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) {
    return uploadProfileImage(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) {
    return uploadProfileImage?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) {
    if (uploadProfileImage != null) {
      return uploadProfileImage(this);
    }
    return orElse();
  }
}

abstract class _UploadProfileImage implements AuthEvent {
  const factory _UploadProfileImage({required final File image}) =
      _$_UploadProfileImage;

  File get image;
  @JsonKey(ignore: true)
  _$$_UploadProfileImageCopyWith<_$_UploadProfileImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NewUserCopyWith<$Res> {
  factory _$$_NewUserCopyWith(
          _$_NewUser value, $Res Function(_$_NewUser) then) =
      __$$_NewUserCopyWithImpl<$Res>;
  @useResult
  $Res call({User user});
}

/// @nodoc
class __$$_NewUserCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$_NewUser>
    implements _$$_NewUserCopyWith<$Res> {
  __$$_NewUserCopyWithImpl(_$_NewUser _value, $Res Function(_$_NewUser) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? user = null,
  }) {
    return _then(_$_NewUser(
      user: null == user
          ? _value.user
          : user // ignore: cast_nullable_to_non_nullable
              as User,
    ));
  }
}

/// @nodoc

class _$_NewUser with DiagnosticableTreeMixin implements _NewUser {
  const _$_NewUser({required this.user});

  @override
  final User user;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'AuthEvent.newUser(user: $user)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'AuthEvent.newUser'))
      ..add(DiagnosticsProperty('user', user));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NewUser &&
            (identical(other.user, user) || other.user == user));
  }

  @override
  int get hashCode => Object.hash(runtimeType, user);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_NewUserCopyWith<_$_NewUser> get copyWith =>
      __$$_NewUserCopyWithImpl<_$_NewUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() checkForAuthStatus,
    required TResult Function() signInAnonymously,
    required TResult Function() logout,
    required TResult Function(UpdatedUser updated) updateProfile,
    required TResult Function(File image) uploadProfileImage,
    required TResult Function(User user) newUser,
  }) {
    return newUser(user);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? checkForAuthStatus,
    TResult? Function()? signInAnonymously,
    TResult? Function()? logout,
    TResult? Function(UpdatedUser updated)? updateProfile,
    TResult? Function(File image)? uploadProfileImage,
    TResult? Function(User user)? newUser,
  }) {
    return newUser?.call(user);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? checkForAuthStatus,
    TResult Function()? signInAnonymously,
    TResult Function()? logout,
    TResult Function(UpdatedUser updated)? updateProfile,
    TResult Function(File image)? uploadProfileImage,
    TResult Function(User user)? newUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(user);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_CheckForAuthStatus value) checkForAuthStatus,
    required TResult Function(_SignInAnonymously value) signInAnonymously,
    required TResult Function(_Logout value) logout,
    required TResult Function(_UpdateProfile value) updateProfile,
    required TResult Function(_UploadProfileImage value) uploadProfileImage,
    required TResult Function(_NewUser value) newUser,
  }) {
    return newUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult? Function(_SignInAnonymously value)? signInAnonymously,
    TResult? Function(_Logout value)? logout,
    TResult? Function(_UpdateProfile value)? updateProfile,
    TResult? Function(_UploadProfileImage value)? uploadProfileImage,
    TResult? Function(_NewUser value)? newUser,
  }) {
    return newUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_CheckForAuthStatus value)? checkForAuthStatus,
    TResult Function(_SignInAnonymously value)? signInAnonymously,
    TResult Function(_Logout value)? logout,
    TResult Function(_UpdateProfile value)? updateProfile,
    TResult Function(_UploadProfileImage value)? uploadProfileImage,
    TResult Function(_NewUser value)? newUser,
    required TResult orElse(),
  }) {
    if (newUser != null) {
      return newUser(this);
    }
    return orElse();
  }
}

abstract class _NewUser implements AuthEvent {
  const factory _NewUser({required final User user}) = _$_NewUser;

  User get user;
  @JsonKey(ignore: true)
  _$$_NewUserCopyWith<_$_NewUser> get copyWith =>
      throw _privateConstructorUsedError;
}
