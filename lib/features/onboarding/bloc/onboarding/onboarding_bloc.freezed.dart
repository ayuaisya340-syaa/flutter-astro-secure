// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$OnBoardingEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function() completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function()? completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function()? completed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_Completed value) completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_Completed value)? completed,
  }) => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingEventCopyWith<$Res> {
  factory $OnBoardingEventCopyWith(
    OnBoardingEvent value,
    $Res Function(OnBoardingEvent) then,
  ) = _$OnBoardingEventCopyWithImpl<$Res, OnBoardingEvent>;
}

/// @nodoc
class _$OnBoardingEventCopyWithImpl<$Res, $Val extends OnBoardingEvent>
    implements $OnBoardingEventCopyWith<$Res> {
  _$OnBoardingEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$PageChangedImplCopyWith<$Res> {
  factory _$$PageChangedImplCopyWith(
    _$PageChangedImpl value,
    $Res Function(_$PageChangedImpl) then,
  ) = __$$PageChangedImplCopyWithImpl<$Res>;
  @useResult
  $Res call({int index});
}

/// @nodoc
class __$$PageChangedImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$PageChangedImpl>
    implements _$$PageChangedImplCopyWith<$Res> {
  __$$PageChangedImplCopyWithImpl(
    _$PageChangedImpl _value,
    $Res Function(_$PageChangedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? index = null}) {
    return _then(
      _$PageChangedImpl(
        null == index
            ? _value.index
            : index // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$PageChangedImpl implements _PageChanged {
  const _$PageChangedImpl(this.index);

  @override
  final int index;

  @override
  String toString() {
    return 'OnBoardingEvent.pageChanged(index: $index)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageChangedImpl &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, index);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      __$$PageChangedImplCopyWithImpl<_$PageChangedImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function() completed,
  }) {
    return pageChanged(index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function()? completed,
  }) {
    return pageChanged?.call(index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_Completed value) completed,
  }) {
    return pageChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_Completed value)? completed,
  }) {
    return pageChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (pageChanged != null) {
      return pageChanged(this);
    }
    return orElse();
  }
}

abstract class _PageChanged implements OnBoardingEvent {
  const factory _PageChanged(final int index) = _$PageChangedImpl;

  int get index;

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$PageChangedImplCopyWith<_$PageChangedImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$CompletedImplCopyWith<$Res> {
  factory _$$CompletedImplCopyWith(
    _$CompletedImpl value,
    $Res Function(_$CompletedImpl) then,
  ) = __$$CompletedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CompletedImplCopyWithImpl<$Res>
    extends _$OnBoardingEventCopyWithImpl<$Res, _$CompletedImpl>
    implements _$$CompletedImplCopyWith<$Res> {
  __$$CompletedImplCopyWithImpl(
    _$CompletedImpl _value,
    $Res Function(_$CompletedImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$CompletedImpl implements _Completed {
  const _$CompletedImpl();

  @override
  String toString() {
    return 'OnBoardingEvent.completed()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CompletedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int index) pageChanged,
    required TResult Function() completed,
  }) {
    return completed();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(int index)? pageChanged,
    TResult? Function()? completed,
  }) {
    return completed?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int index)? pageChanged,
    TResult Function()? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_PageChanged value) pageChanged,
    required TResult Function(_Completed value) completed,
  }) {
    return completed(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_PageChanged value)? pageChanged,
    TResult? Function(_Completed value)? completed,
  }) {
    return completed?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_PageChanged value)? pageChanged,
    TResult Function(_Completed value)? completed,
    required TResult orElse(),
  }) {
    if (completed != null) {
      return completed(this);
    }
    return orElse();
  }
}

abstract class _Completed implements OnBoardingEvent {
  const factory _Completed() = _$CompletedImpl;
}

/// @nodoc
mixin _$OnBoardingState {
  int get currentPage => throw _privateConstructorUsedError;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $OnBoardingStateCopyWith<OnBoardingState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnBoardingStateCopyWith<$Res> {
  factory $OnBoardingStateCopyWith(
    OnBoardingState value,
    $Res Function(OnBoardingState) then,
  ) = _$OnBoardingStateCopyWithImpl<$Res, OnBoardingState>;
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class _$OnBoardingStateCopyWithImpl<$Res, $Val extends OnBoardingState>
    implements $OnBoardingStateCopyWith<$Res> {
  _$OnBoardingStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentPage = null}) {
    return _then(
      _value.copyWith(
            currentPage: null == currentPage
                ? _value.currentPage
                : currentPage // ignore: cast_nullable_to_non_nullable
                      as int,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$OnBoardingStateImplCopyWith<$Res>
    implements $OnBoardingStateCopyWith<$Res> {
  factory _$$OnBoardingStateImplCopyWith(
    _$OnBoardingStateImpl value,
    $Res Function(_$OnBoardingStateImpl) then,
  ) = __$$OnBoardingStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({int currentPage});
}

/// @nodoc
class __$$OnBoardingStateImplCopyWithImpl<$Res>
    extends _$OnBoardingStateCopyWithImpl<$Res, _$OnBoardingStateImpl>
    implements _$$OnBoardingStateImplCopyWith<$Res> {
  __$$OnBoardingStateImplCopyWithImpl(
    _$OnBoardingStateImpl _value,
    $Res Function(_$OnBoardingStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({Object? currentPage = null}) {
    return _then(
      _$OnBoardingStateImpl(
        currentPage: null == currentPage
            ? _value.currentPage
            : currentPage // ignore: cast_nullable_to_non_nullable
                  as int,
      ),
    );
  }
}

/// @nodoc

class _$OnBoardingStateImpl implements _OnBoardingState {
  const _$OnBoardingStateImpl({this.currentPage = 0});

  @override
  @JsonKey()
  final int currentPage;

  @override
  String toString() {
    return 'OnBoardingState(currentPage: $currentPage)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$OnBoardingStateImpl &&
            (identical(other.currentPage, currentPage) ||
                other.currentPage == currentPage));
  }

  @override
  int get hashCode => Object.hash(runtimeType, currentPage);

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      __$$OnBoardingStateImplCopyWithImpl<_$OnBoardingStateImpl>(
        this,
        _$identity,
      );
}

abstract class _OnBoardingState implements OnBoardingState {
  const factory _OnBoardingState({final int currentPage}) =
      _$OnBoardingStateImpl;

  @override
  int get currentPage;

  /// Create a copy of OnBoardingState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$OnBoardingStateImplCopyWith<_$OnBoardingStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
