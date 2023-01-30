// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'navigation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NavigationState {
  NavbarItem get navbarItem => throw _privateConstructorUsedError;
  int get index => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavbarItem navbarItem, int index) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NavbarItem navbarItem, int index)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavbarItem navbarItem, int index)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NavigationStateCopyWith<NavigationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NavigationStateCopyWith<$Res> {
  factory $NavigationStateCopyWith(
          NavigationState value, $Res Function(NavigationState) then) =
      _$NavigationStateCopyWithImpl<$Res, NavigationState>;
  @useResult
  $Res call({NavbarItem navbarItem, int index});
}

/// @nodoc
class _$NavigationStateCopyWithImpl<$Res, $Val extends NavigationState>
    implements $NavigationStateCopyWith<$Res> {
  _$NavigationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navbarItem = null,
    Object? index = null,
  }) {
    return _then(_value.copyWith(
      navbarItem: null == navbarItem
          ? _value.navbarItem
          : navbarItem // ignore: cast_nullable_to_non_nullable
              as NavbarItem,
      index: null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_StateCopyWith<$Res>
    implements $NavigationStateCopyWith<$Res> {
  factory _$$_StateCopyWith(_$_State value, $Res Function(_$_State) then) =
      __$$_StateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({NavbarItem navbarItem, int index});
}

/// @nodoc
class __$$_StateCopyWithImpl<$Res>
    extends _$NavigationStateCopyWithImpl<$Res, _$_State>
    implements _$$_StateCopyWith<$Res> {
  __$$_StateCopyWithImpl(_$_State _value, $Res Function(_$_State) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? navbarItem = null,
    Object? index = null,
  }) {
    return _then(_$_State(
      null == navbarItem
          ? _value.navbarItem
          : navbarItem // ignore: cast_nullable_to_non_nullable
              as NavbarItem,
      null == index
          ? _value.index
          : index // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_State implements _State {
  const _$_State(this.navbarItem, this.index);

  @override
  final NavbarItem navbarItem;
  @override
  final int index;

  @override
  String toString() {
    return 'NavigationState.state(navbarItem: $navbarItem, index: $index)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_State &&
            (identical(other.navbarItem, navbarItem) ||
                other.navbarItem == navbarItem) &&
            (identical(other.index, index) || other.index == index));
  }

  @override
  int get hashCode => Object.hash(runtimeType, navbarItem, index);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_StateCopyWith<_$_State> get copyWith =>
      __$$_StateCopyWithImpl<_$_State>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(NavbarItem navbarItem, int index) state,
  }) {
    return state(navbarItem, index);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(NavbarItem navbarItem, int index)? state,
  }) {
    return state?.call(navbarItem, index);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(NavbarItem navbarItem, int index)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(navbarItem, index);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_State value) state,
  }) {
    return state(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_State value)? state,
  }) {
    return state?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_State value)? state,
    required TResult orElse(),
  }) {
    if (state != null) {
      return state(this);
    }
    return orElse();
  }
}

abstract class _State implements NavigationState {
  const factory _State(final NavbarItem navbarItem, final int index) = _$_State;

  @override
  NavbarItem get navbarItem;
  @override
  int get index;
  @override
  @JsonKey(ignore: true)
  _$$_StateCopyWith<_$_State> get copyWith =>
      throw _privateConstructorUsedError;
}
