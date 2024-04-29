// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'local_exceptions.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$LocalExceptions {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fileNotFound,
    required TResult Function() permissionDenied,
    required TResult Function() storageFull,
    required TResult Function() unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fileNotFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? storageFull,
    TResult? Function()? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fileNotFound,
    TResult Function()? permissionDenied,
    TResult Function()? storageFull,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(StorageFull value) storageFull,
    required TResult Function(UnknownError value) unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(StorageFull value)? storageFull,
    TResult? Function(UnknownError value)? unknownError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(StorageFull value)? storageFull,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalExceptionsCopyWith<$Res> {
  factory $LocalExceptionsCopyWith(
          LocalExceptions value, $Res Function(LocalExceptions) then) =
      _$LocalExceptionsCopyWithImpl<$Res, LocalExceptions>;
}

/// @nodoc
class _$LocalExceptionsCopyWithImpl<$Res, $Val extends LocalExceptions>
    implements $LocalExceptionsCopyWith<$Res> {
  _$LocalExceptionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$FileNotFoundImplCopyWith<$Res> {
  factory _$$FileNotFoundImplCopyWith(
          _$FileNotFoundImpl value, $Res Function(_$FileNotFoundImpl) then) =
      __$$FileNotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$FileNotFoundImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$FileNotFoundImpl>
    implements _$$FileNotFoundImplCopyWith<$Res> {
  __$$FileNotFoundImplCopyWithImpl(
      _$FileNotFoundImpl _value, $Res Function(_$FileNotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$FileNotFoundImpl implements FileNotFound {
  const _$FileNotFoundImpl();

  @override
  String toString() {
    return 'LocalExceptions.fileNotFound()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$FileNotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fileNotFound,
    required TResult Function() permissionDenied,
    required TResult Function() storageFull,
    required TResult Function() unknownError,
  }) {
    return fileNotFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fileNotFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? storageFull,
    TResult? Function()? unknownError,
  }) {
    return fileNotFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fileNotFound,
    TResult Function()? permissionDenied,
    TResult Function()? storageFull,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(StorageFull value) storageFull,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return fileNotFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(StorageFull value)? storageFull,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return fileNotFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(StorageFull value)? storageFull,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (fileNotFound != null) {
      return fileNotFound(this);
    }
    return orElse();
  }
}

abstract class FileNotFound implements LocalExceptions {
  const factory FileNotFound() = _$FileNotFoundImpl;
}

/// @nodoc
abstract class _$$PermissionDeniedImplCopyWith<$Res> {
  factory _$$PermissionDeniedImplCopyWith(_$PermissionDeniedImpl value,
          $Res Function(_$PermissionDeniedImpl) then) =
      __$$PermissionDeniedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$PermissionDeniedImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$PermissionDeniedImpl>
    implements _$$PermissionDeniedImplCopyWith<$Res> {
  __$$PermissionDeniedImplCopyWithImpl(_$PermissionDeniedImpl _value,
      $Res Function(_$PermissionDeniedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$PermissionDeniedImpl implements PermissionDenied {
  const _$PermissionDeniedImpl();

  @override
  String toString() {
    return 'LocalExceptions.permissionDenied()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$PermissionDeniedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fileNotFound,
    required TResult Function() permissionDenied,
    required TResult Function() storageFull,
    required TResult Function() unknownError,
  }) {
    return permissionDenied();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fileNotFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? storageFull,
    TResult? Function()? unknownError,
  }) {
    return permissionDenied?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fileNotFound,
    TResult Function()? permissionDenied,
    TResult Function()? storageFull,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(StorageFull value) storageFull,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return permissionDenied(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(StorageFull value)? storageFull,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return permissionDenied?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(StorageFull value)? storageFull,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (permissionDenied != null) {
      return permissionDenied(this);
    }
    return orElse();
  }
}

abstract class PermissionDenied implements LocalExceptions {
  const factory PermissionDenied() = _$PermissionDeniedImpl;
}

/// @nodoc
abstract class _$$StorageFullImplCopyWith<$Res> {
  factory _$$StorageFullImplCopyWith(
          _$StorageFullImpl value, $Res Function(_$StorageFullImpl) then) =
      __$$StorageFullImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$StorageFullImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$StorageFullImpl>
    implements _$$StorageFullImplCopyWith<$Res> {
  __$$StorageFullImplCopyWithImpl(
      _$StorageFullImpl _value, $Res Function(_$StorageFullImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$StorageFullImpl implements StorageFull {
  const _$StorageFullImpl();

  @override
  String toString() {
    return 'LocalExceptions.storageFull()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$StorageFullImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fileNotFound,
    required TResult Function() permissionDenied,
    required TResult Function() storageFull,
    required TResult Function() unknownError,
  }) {
    return storageFull();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fileNotFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? storageFull,
    TResult? Function()? unknownError,
  }) {
    return storageFull?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fileNotFound,
    TResult Function()? permissionDenied,
    TResult Function()? storageFull,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (storageFull != null) {
      return storageFull();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(StorageFull value) storageFull,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return storageFull(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(StorageFull value)? storageFull,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return storageFull?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(StorageFull value)? storageFull,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (storageFull != null) {
      return storageFull(this);
    }
    return orElse();
  }
}

abstract class StorageFull implements LocalExceptions {
  const factory StorageFull() = _$StorageFullImpl;
}

/// @nodoc
abstract class _$$UnknownErrorImplCopyWith<$Res> {
  factory _$$UnknownErrorImplCopyWith(
          _$UnknownErrorImpl value, $Res Function(_$UnknownErrorImpl) then) =
      __$$UnknownErrorImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnknownErrorImplCopyWithImpl<$Res>
    extends _$LocalExceptionsCopyWithImpl<$Res, _$UnknownErrorImpl>
    implements _$$UnknownErrorImplCopyWith<$Res> {
  __$$UnknownErrorImplCopyWithImpl(
      _$UnknownErrorImpl _value, $Res Function(_$UnknownErrorImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnknownErrorImpl implements UnknownError {
  const _$UnknownErrorImpl();

  @override
  String toString() {
    return 'LocalExceptions.unknownError()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnknownErrorImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fileNotFound,
    required TResult Function() permissionDenied,
    required TResult Function() storageFull,
    required TResult Function() unknownError,
  }) {
    return unknownError();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? fileNotFound,
    TResult? Function()? permissionDenied,
    TResult? Function()? storageFull,
    TResult? Function()? unknownError,
  }) {
    return unknownError?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fileNotFound,
    TResult Function()? permissionDenied,
    TResult Function()? storageFull,
    TResult Function()? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(FileNotFound value) fileNotFound,
    required TResult Function(PermissionDenied value) permissionDenied,
    required TResult Function(StorageFull value) storageFull,
    required TResult Function(UnknownError value) unknownError,
  }) {
    return unknownError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(FileNotFound value)? fileNotFound,
    TResult? Function(PermissionDenied value)? permissionDenied,
    TResult? Function(StorageFull value)? storageFull,
    TResult? Function(UnknownError value)? unknownError,
  }) {
    return unknownError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(FileNotFound value)? fileNotFound,
    TResult Function(PermissionDenied value)? permissionDenied,
    TResult Function(StorageFull value)? storageFull,
    TResult Function(UnknownError value)? unknownError,
    required TResult orElse(),
  }) {
    if (unknownError != null) {
      return unknownError(this);
    }
    return orElse();
  }
}

abstract class UnknownError implements LocalExceptions {
  const factory UnknownError() = _$UnknownErrorImpl;
}
