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
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String name, String email, String password)
    registerRequested,
    required TResult Function(String email) forgotPasswordRequested,
    required TResult Function(String code) verificationRequested,
    required TResult Function() logoutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String name, String email, String password)?
    registerRequested,
    TResult? Function(String email)? forgotPasswordRequested,
    TResult? Function(String code)? verificationRequested,
    TResult? Function()? logoutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String name, String email, String password)?
    registerRequested,
    TResult Function(String email)? forgotPasswordRequested,
    TResult Function(String code)? verificationRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
    required TResult Function(_ForgotPasswordRequested value)
    forgotPasswordRequested,
    required TResult Function(_VerificationRequested value)
    verificationRequested,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult? Function(_VerificationRequested value)? verificationRequested,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult Function(_VerificationRequested value)? verificationRequested,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
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

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$LoginRequestedImplCopyWith<$Res> {
  factory _$$LoginRequestedImplCopyWith(
    _$LoginRequestedImpl value,
    $Res Function(_$LoginRequestedImpl) then,
  ) = __$$LoginRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email, String password});
}

/// @nodoc
class __$$LoginRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LoginRequestedImpl>
    implements _$$LoginRequestedImplCopyWith<$Res> {
  __$$LoginRequestedImplCopyWithImpl(
    _$LoginRequestedImpl _value,
    $Res Function(_$LoginRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null, Object? password = null}) {
    return _then(
      _$LoginRequestedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$LoginRequestedImpl implements _LoginRequested {
  const _$LoginRequestedImpl({required this.email, required this.password});

  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.loginRequested(email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LoginRequestedImpl &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      __$$LoginRequestedImplCopyWithImpl<_$LoginRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String name, String email, String password)
    registerRequested,
    required TResult Function(String email) forgotPasswordRequested,
    required TResult Function(String code) verificationRequested,
    required TResult Function() logoutRequested,
  }) {
    return loginRequested(email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String name, String email, String password)?
    registerRequested,
    TResult? Function(String email)? forgotPasswordRequested,
    TResult? Function(String code)? verificationRequested,
    TResult? Function()? logoutRequested,
  }) {
    return loginRequested?.call(email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String name, String email, String password)?
    registerRequested,
    TResult Function(String email)? forgotPasswordRequested,
    TResult Function(String code)? verificationRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
    required TResult Function(_ForgotPasswordRequested value)
    forgotPasswordRequested,
    required TResult Function(_VerificationRequested value)
    verificationRequested,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return loginRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult? Function(_VerificationRequested value)? verificationRequested,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return loginRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult Function(_VerificationRequested value)? verificationRequested,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (loginRequested != null) {
      return loginRequested(this);
    }
    return orElse();
  }
}

abstract class _LoginRequested implements AuthEvent {
  const factory _LoginRequested({
    required final String email,
    required final String password,
  }) = _$LoginRequestedImpl;

  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$LoginRequestedImplCopyWith<_$LoginRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RegisterRequestedImplCopyWith<$Res> {
  factory _$$RegisterRequestedImplCopyWith(
    _$RegisterRequestedImpl value,
    $Res Function(_$RegisterRequestedImpl) then,
  ) = __$$RegisterRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String name, String email, String password});
}

/// @nodoc
class __$$RegisterRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$RegisterRequestedImpl>
    implements _$$RegisterRequestedImplCopyWith<$Res> {
  __$$RegisterRequestedImplCopyWithImpl(
    _$RegisterRequestedImpl _value,
    $Res Function(_$RegisterRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
    Object? password = null,
  }) {
    return _then(
      _$RegisterRequestedImpl(
        name: null == name
            ? _value.name
            : name // ignore: cast_nullable_to_non_nullable
                  as String,
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
        password: null == password
            ? _value.password
            : password // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$RegisterRequestedImpl implements _RegisterRequested {
  const _$RegisterRequestedImpl({
    required this.name,
    required this.email,
    required this.password,
  });

  @override
  final String name;
  @override
  final String email;
  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.registerRequested(name: $name, email: $email, password: $password)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RegisterRequestedImpl &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, name, email, password);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RegisterRequestedImplCopyWith<_$RegisterRequestedImpl> get copyWith =>
      __$$RegisterRequestedImplCopyWithImpl<_$RegisterRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String name, String email, String password)
    registerRequested,
    required TResult Function(String email) forgotPasswordRequested,
    required TResult Function(String code) verificationRequested,
    required TResult Function() logoutRequested,
  }) {
    return registerRequested(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String name, String email, String password)?
    registerRequested,
    TResult? Function(String email)? forgotPasswordRequested,
    TResult? Function(String code)? verificationRequested,
    TResult? Function()? logoutRequested,
  }) {
    return registerRequested?.call(name, email, password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String name, String email, String password)?
    registerRequested,
    TResult Function(String email)? forgotPasswordRequested,
    TResult Function(String code)? verificationRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(name, email, password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
    required TResult Function(_ForgotPasswordRequested value)
    forgotPasswordRequested,
    required TResult Function(_VerificationRequested value)
    verificationRequested,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return registerRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult? Function(_VerificationRequested value)? verificationRequested,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return registerRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult Function(_VerificationRequested value)? verificationRequested,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (registerRequested != null) {
      return registerRequested(this);
    }
    return orElse();
  }
}

abstract class _RegisterRequested implements AuthEvent {
  const factory _RegisterRequested({
    required final String name,
    required final String email,
    required final String password,
  }) = _$RegisterRequestedImpl;

  String get name;
  String get email;
  String get password;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RegisterRequestedImplCopyWith<_$RegisterRequestedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ForgotPasswordRequestedImplCopyWith<$Res> {
  factory _$$ForgotPasswordRequestedImplCopyWith(
    _$ForgotPasswordRequestedImpl value,
    $Res Function(_$ForgotPasswordRequestedImpl) then,
  ) = __$$ForgotPasswordRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$ForgotPasswordRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$ForgotPasswordRequestedImpl>
    implements _$$ForgotPasswordRequestedImplCopyWith<$Res> {
  __$$ForgotPasswordRequestedImplCopyWithImpl(
    _$ForgotPasswordRequestedImpl _value,
    $Res Function(_$ForgotPasswordRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? email = null}) {
    return _then(
      _$ForgotPasswordRequestedImpl(
        email: null == email
            ? _value.email
            : email // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ForgotPasswordRequestedImpl implements _ForgotPasswordRequested {
  const _$ForgotPasswordRequestedImpl({required this.email});

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.forgotPasswordRequested(email: $email)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ForgotPasswordRequestedImpl &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ForgotPasswordRequestedImplCopyWith<_$ForgotPasswordRequestedImpl>
  get copyWith =>
      __$$ForgotPasswordRequestedImplCopyWithImpl<
        _$ForgotPasswordRequestedImpl
      >(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String name, String email, String password)
    registerRequested,
    required TResult Function(String email) forgotPasswordRequested,
    required TResult Function(String code) verificationRequested,
    required TResult Function() logoutRequested,
  }) {
    return forgotPasswordRequested(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String name, String email, String password)?
    registerRequested,
    TResult? Function(String email)? forgotPasswordRequested,
    TResult? Function(String code)? verificationRequested,
    TResult? Function()? logoutRequested,
  }) {
    return forgotPasswordRequested?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String name, String email, String password)?
    registerRequested,
    TResult Function(String email)? forgotPasswordRequested,
    TResult Function(String code)? verificationRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (forgotPasswordRequested != null) {
      return forgotPasswordRequested(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
    required TResult Function(_ForgotPasswordRequested value)
    forgotPasswordRequested,
    required TResult Function(_VerificationRequested value)
    verificationRequested,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return forgotPasswordRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult? Function(_VerificationRequested value)? verificationRequested,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return forgotPasswordRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult Function(_VerificationRequested value)? verificationRequested,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (forgotPasswordRequested != null) {
      return forgotPasswordRequested(this);
    }
    return orElse();
  }
}

abstract class _ForgotPasswordRequested implements AuthEvent {
  const factory _ForgotPasswordRequested({required final String email}) =
      _$ForgotPasswordRequestedImpl;

  String get email;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ForgotPasswordRequestedImplCopyWith<_$ForgotPasswordRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationRequestedImplCopyWith<$Res> {
  factory _$$VerificationRequestedImplCopyWith(
    _$VerificationRequestedImpl value,
    $Res Function(_$VerificationRequestedImpl) then,
  ) = __$$VerificationRequestedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String code});
}

/// @nodoc
class __$$VerificationRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$VerificationRequestedImpl>
    implements _$$VerificationRequestedImplCopyWith<$Res> {
  __$$VerificationRequestedImplCopyWithImpl(
    _$VerificationRequestedImpl _value,
    $Res Function(_$VerificationRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? code = null}) {
    return _then(
      _$VerificationRequestedImpl(
        code: null == code
            ? _value.code
            : code // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VerificationRequestedImpl implements _VerificationRequested {
  const _$VerificationRequestedImpl({required this.code});

  @override
  final String code;

  @override
  String toString() {
    return 'AuthEvent.verificationRequested(code: $code)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationRequestedImpl &&
            (identical(other.code, code) || other.code == code));
  }

  @override
  int get hashCode => Object.hash(runtimeType, code);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationRequestedImplCopyWith<_$VerificationRequestedImpl>
  get copyWith =>
      __$$VerificationRequestedImplCopyWithImpl<_$VerificationRequestedImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String name, String email, String password)
    registerRequested,
    required TResult Function(String email) forgotPasswordRequested,
    required TResult Function(String code) verificationRequested,
    required TResult Function() logoutRequested,
  }) {
    return verificationRequested(code);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String name, String email, String password)?
    registerRequested,
    TResult? Function(String email)? forgotPasswordRequested,
    TResult? Function(String code)? verificationRequested,
    TResult? Function()? logoutRequested,
  }) {
    return verificationRequested?.call(code);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String name, String email, String password)?
    registerRequested,
    TResult Function(String email)? forgotPasswordRequested,
    TResult Function(String code)? verificationRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (verificationRequested != null) {
      return verificationRequested(code);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
    required TResult Function(_ForgotPasswordRequested value)
    forgotPasswordRequested,
    required TResult Function(_VerificationRequested value)
    verificationRequested,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return verificationRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult? Function(_VerificationRequested value)? verificationRequested,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return verificationRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult Function(_VerificationRequested value)? verificationRequested,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (verificationRequested != null) {
      return verificationRequested(this);
    }
    return orElse();
  }
}

abstract class _VerificationRequested implements AuthEvent {
  const factory _VerificationRequested({required final String code}) =
      _$VerificationRequestedImpl;

  String get code;

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationRequestedImplCopyWith<_$VerificationRequestedImpl>
  get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$LogoutRequestedImplCopyWith<$Res> {
  factory _$$LogoutRequestedImplCopyWith(
    _$LogoutRequestedImpl value,
    $Res Function(_$LogoutRequestedImpl) then,
  ) = __$$LogoutRequestedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LogoutRequestedImplCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$LogoutRequestedImpl>
    implements _$$LogoutRequestedImplCopyWith<$Res> {
  __$$LogoutRequestedImplCopyWithImpl(
    _$LogoutRequestedImpl _value,
    $Res Function(_$LogoutRequestedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LogoutRequestedImpl implements _LogoutRequested {
  const _$LogoutRequestedImpl();

  @override
  String toString() {
    return 'AuthEvent.logoutRequested()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LogoutRequestedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email, String password) loginRequested,
    required TResult Function(String name, String email, String password)
    registerRequested,
    required TResult Function(String email) forgotPasswordRequested,
    required TResult Function(String code) verificationRequested,
    required TResult Function() logoutRequested,
  }) {
    return logoutRequested();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email, String password)? loginRequested,
    TResult? Function(String name, String email, String password)?
    registerRequested,
    TResult? Function(String email)? forgotPasswordRequested,
    TResult? Function(String code)? verificationRequested,
    TResult? Function()? logoutRequested,
  }) {
    return logoutRequested?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email, String password)? loginRequested,
    TResult Function(String name, String email, String password)?
    registerRequested,
    TResult Function(String email)? forgotPasswordRequested,
    TResult Function(String code)? verificationRequested,
    TResult Function()? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_LoginRequested value) loginRequested,
    required TResult Function(_RegisterRequested value) registerRequested,
    required TResult Function(_ForgotPasswordRequested value)
    forgotPasswordRequested,
    required TResult Function(_VerificationRequested value)
    verificationRequested,
    required TResult Function(_LogoutRequested value) logoutRequested,
  }) {
    return logoutRequested(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_LoginRequested value)? loginRequested,
    TResult? Function(_RegisterRequested value)? registerRequested,
    TResult? Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult? Function(_VerificationRequested value)? verificationRequested,
    TResult? Function(_LogoutRequested value)? logoutRequested,
  }) {
    return logoutRequested?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_LoginRequested value)? loginRequested,
    TResult Function(_RegisterRequested value)? registerRequested,
    TResult Function(_ForgotPasswordRequested value)? forgotPasswordRequested,
    TResult Function(_VerificationRequested value)? verificationRequested,
    TResult Function(_LogoutRequested value)? logoutRequested,
    required TResult orElse(),
  }) {
    if (logoutRequested != null) {
      return logoutRequested(this);
    }
    return orElse();
  }
}

abstract class _LogoutRequested implements AuthEvent {
  const factory _LogoutRequested() = _$LogoutRequestedImpl;
}

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
    _$InitialImpl value,
    $Res Function(_$InitialImpl) then,
  ) = __$$InitialImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
    _$InitialImpl _value,
    $Res Function(_$InitialImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl();

  @override
  String toString() {
    return 'AuthState.initial()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$InitialImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements AuthState {
  const factory _Initial() = _$InitialImpl;
}

/// @nodoc
abstract class _$$LoadingImplCopyWith<$Res> {
  factory _$$LoadingImplCopyWith(
    _$LoadingImpl value,
    $Res Function(_$LoadingImpl) then,
  ) = __$$LoadingImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$LoadingImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$LoadingImpl>
    implements _$$LoadingImplCopyWith<$Res> {
  __$$LoadingImplCopyWithImpl(
    _$LoadingImpl _value,
    $Res Function(_$LoadingImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$LoadingImpl implements _Loading {
  const _$LoadingImpl();

  @override
  String toString() {
    return 'AuthState.loading()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$LoadingImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements AuthState {
  const factory _Loading() = _$LoadingImpl;
}

/// @nodoc
abstract class _$$AuthenticatedImplCopyWith<$Res> {
  factory _$$AuthenticatedImplCopyWith(
    _$AuthenticatedImpl value,
    $Res Function(_$AuthenticatedImpl) then,
  ) = __$$AuthenticatedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String accountType});
}

/// @nodoc
class __$$AuthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$AuthenticatedImpl>
    implements _$$AuthenticatedImplCopyWith<$Res> {
  __$$AuthenticatedImplCopyWithImpl(
    _$AuthenticatedImpl _value,
    $Res Function(_$AuthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? accountType = null}) {
    return _then(
      _$AuthenticatedImpl(
        accountType: null == accountType
            ? _value.accountType
            : accountType // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$AuthenticatedImpl implements _Authenticated {
  const _$AuthenticatedImpl({required this.accountType});

  @override
  final String accountType;

  @override
  String toString() {
    return 'AuthState.authenticated(accountType: $accountType)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$AuthenticatedImpl &&
            (identical(other.accountType, accountType) ||
                other.accountType == accountType));
  }

  @override
  int get hashCode => Object.hash(runtimeType, accountType);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      __$$AuthenticatedImplCopyWithImpl<_$AuthenticatedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return authenticated(accountType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return authenticated?.call(accountType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(accountType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated({required final String accountType}) =
      _$AuthenticatedImpl;

  String get accountType;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$AuthenticatedImplCopyWith<_$AuthenticatedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$UnauthenticatedImplCopyWith<$Res> {
  factory _$$UnauthenticatedImplCopyWith(
    _$UnauthenticatedImpl value,
    $Res Function(_$UnauthenticatedImpl) then,
  ) = __$$UnauthenticatedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthenticatedImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$UnauthenticatedImpl>
    implements _$$UnauthenticatedImplCopyWith<$Res> {
  __$$UnauthenticatedImplCopyWithImpl(
    _$UnauthenticatedImpl _value,
    $Res Function(_$UnauthenticatedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$UnauthenticatedImpl implements _Unauthenticated {
  const _$UnauthenticatedImpl();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthenticatedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$UnauthenticatedImpl;
}

/// @nodoc
abstract class _$$CodeSentSuccessImplCopyWith<$Res> {
  factory _$$CodeSentSuccessImplCopyWith(
    _$CodeSentSuccessImpl value,
    $Res Function(_$CodeSentSuccessImpl) then,
  ) = __$$CodeSentSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$CodeSentSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$CodeSentSuccessImpl>
    implements _$$CodeSentSuccessImplCopyWith<$Res> {
  __$$CodeSentSuccessImplCopyWithImpl(
    _$CodeSentSuccessImpl _value,
    $Res Function(_$CodeSentSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$CodeSentSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$CodeSentSuccessImpl implements _CodeSentSuccess {
  const _$CodeSentSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.codeSentSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CodeSentSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CodeSentSuccessImplCopyWith<_$CodeSentSuccessImpl> get copyWith =>
      __$$CodeSentSuccessImplCopyWithImpl<_$CodeSentSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return codeSentSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return codeSentSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (codeSentSuccess != null) {
      return codeSentSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return codeSentSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return codeSentSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (codeSentSuccess != null) {
      return codeSentSuccess(this);
    }
    return orElse();
  }
}

abstract class _CodeSentSuccess implements AuthState {
  const factory _CodeSentSuccess(final String message) = _$CodeSentSuccessImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CodeSentSuccessImplCopyWith<_$CodeSentSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$VerificationSuccessImplCopyWith<$Res> {
  factory _$$VerificationSuccessImplCopyWith(
    _$VerificationSuccessImpl value,
    $Res Function(_$VerificationSuccessImpl) then,
  ) = __$$VerificationSuccessImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$VerificationSuccessImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$VerificationSuccessImpl>
    implements _$$VerificationSuccessImplCopyWith<$Res> {
  __$$VerificationSuccessImplCopyWithImpl(
    _$VerificationSuccessImpl _value,
    $Res Function(_$VerificationSuccessImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$VerificationSuccessImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$VerificationSuccessImpl implements _VerificationSuccess {
  const _$VerificationSuccessImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.verificationSuccess(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$VerificationSuccessImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$VerificationSuccessImplCopyWith<_$VerificationSuccessImpl> get copyWith =>
      __$$VerificationSuccessImplCopyWithImpl<_$VerificationSuccessImpl>(
        this,
        _$identity,
      );

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return verificationSuccess(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return verificationSuccess?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (verificationSuccess != null) {
      return verificationSuccess(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return verificationSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return verificationSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (verificationSuccess != null) {
      return verificationSuccess(this);
    }
    return orElse();
  }
}

abstract class _VerificationSuccess implements AuthState {
  const factory _VerificationSuccess(final String message) =
      _$VerificationSuccessImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$VerificationSuccessImplCopyWith<_$VerificationSuccessImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$ErrorImplCopyWith<$Res> {
  factory _$$ErrorImplCopyWith(
    _$ErrorImpl value,
    $Res Function(_$ErrorImpl) then,
  ) = __$$ErrorImplCopyWithImpl<$Res>;
  @useResult
  $Res call({String message});
}

/// @nodoc
class __$$ErrorImplCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$ErrorImpl>
    implements _$$ErrorImplCopyWith<$Res> {
  __$$ErrorImplCopyWithImpl(
    _$ErrorImpl _value,
    $Res Function(_$ErrorImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? message = null}) {
    return _then(
      _$ErrorImpl(
        null == message
            ? _value.message
            : message // ignore: cast_nullable_to_non_nullable
                  as String,
      ),
    );
  }
}

/// @nodoc

class _$ErrorImpl implements _Error {
  const _$ErrorImpl(this.message);

  @override
  final String message;

  @override
  String toString() {
    return 'AuthState.error(message: $message)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$ErrorImpl &&
            (identical(other.message, message) || other.message == message));
  }

  @override
  int get hashCode => Object.hash(runtimeType, message);

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      __$$ErrorImplCopyWithImpl<_$ErrorImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function(String accountType) authenticated,
    required TResult Function() unauthenticated,
    required TResult Function(String message) codeSentSuccess,
    required TResult Function(String message) verificationSuccess,
    required TResult Function(String message) error,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? initial,
    TResult? Function()? loading,
    TResult? Function(String accountType)? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function(String message)? codeSentSuccess,
    TResult? Function(String message)? verificationSuccess,
    TResult? Function(String message)? error,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function(String accountType)? authenticated,
    TResult Function()? unauthenticated,
    TResult Function(String message)? codeSentSuccess,
    TResult Function(String message)? verificationSuccess,
    TResult Function(String message)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_CodeSentSuccess value) codeSentSuccess,
    required TResult Function(_VerificationSuccess value) verificationSuccess,
    required TResult Function(_Error value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
    TResult? Function(_Loading value)? loading,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult? Function(_VerificationSuccess value)? verificationSuccess,
    TResult? Function(_Error value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_CodeSentSuccess value)? codeSentSuccess,
    TResult Function(_VerificationSuccess value)? verificationSuccess,
    TResult Function(_Error value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _Error implements AuthState {
  const factory _Error(final String message) = _$ErrorImpl;

  String get message;

  /// Create a copy of AuthState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$ErrorImplCopyWith<_$ErrorImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
