// Dart representation of a COM interface.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:meta/meta.dart';

import '../allocator.dart';
import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../enums.g.dart';
import '../exception.dart';
import '../extensions/iunknown.dart';
import '../extensions/pointer.dart';
import '../guid.dart';
import '../hresult.dart';
import '../hstring.dart';
import '../macros.dart';
import '../ntstatus.dart';
import '../pcstr.dart';
import '../pcwstr.dart';
import '../pstr.dart';
import '../pwstr.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestQualifiedResource = Guid.fromComponents(
  0x3b53a497,
  0x3c5c,
  0x48d1,
  Uint8List.fromList(const [0x9e, 0xa3, 0xbb, 0x7e, 0xac, 0x8c, 0xd7, 0xd4]),
);

/// {@category com}
class IAppxManifestQualifiedResource extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestQualifiedResource] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestQualifiedResource] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestQualifiedResource(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestQualifiedResourceVtbl>().ref;

  /// Creates a new instance of [IAppxManifestQualifiedResource] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestQualifiedResource] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestQualifiedResource.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestQualifiedResourceVtbl _vtable;
  late final _GetLanguageFn = _vtable
      .GetLanguage.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetScaleFn = _vtable
      .GetScale.asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _GetDXFeatureLevelFn =
      _vtable.GetDXFeatureLevel.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();

  /// Throws a [WindowsException] on failure.
  PWSTR getLanguage() {
    final language = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetLanguageFn(ptr, language));
    if (hr$.isError) {
      free(language);
      throw WindowsException(hr$);
    }
    final result$ = language.value;
    free(language);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  int getScale() {
    final scale = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetScaleFn(ptr, scale));
    if (hr$.isError) {
      free(scale);
      throw WindowsException(hr$);
    }
    final result$ = scale.value;
    free(scale);
    return result$;
  }

  /// Throws a [WindowsException] on failure.
  DX_FEATURE_LEVEL getDXFeatureLevel() {
    final dxFeatureLevel = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetDXFeatureLevelFn(ptr, dxFeatureLevel));
    if (hr$.isError) {
      free(dxFeatureLevel);
      throw WindowsException(hr$);
    }
    final result$ = dxFeatureLevel.value;
    free(dxFeatureLevel);
    return DX_FEATURE_LEVEL(result$);
  }

  @override
  String toString() => 'IAppxManifestQualifiedResource(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestQualifiedResourceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> language)>
  >
  GetLanguage;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> scale)>
  >
  GetScale;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> dxFeatureLevel)
    >
  >
  GetDXFeatureLevel;
}

@internal
final class IAppxManifestQualifiedResourceCompanion
    extends ComCompanion<IAppxManifestQualifiedResource> {
  const IAppxManifestQualifiedResourceCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestQualifiedResource Function(VTablePointer) get fromPointer =>
      IAppxManifestQualifiedResource.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestQualifiedResource;
}
