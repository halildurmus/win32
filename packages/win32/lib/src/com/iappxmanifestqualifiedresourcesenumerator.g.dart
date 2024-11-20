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
import 'iappxmanifestqualifiedresource.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestQualifiedResourcesEnumerator = Guid.fromComponents(
  0x8ef6adfe,
  0x3762,
  0x4a8f,
  Uint8List.fromList(const [0x93, 0x73, 0x2f, 0xc5, 0xd4, 0x44, 0xc8, 0xd2]),
);

/// {@category com}
class IAppxManifestQualifiedResourcesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestQualifiedResourcesEnumerator] from
  /// a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestQualifiedResourcesEnumerator] interface. The [ptr] must not
  /// be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestQualifiedResourcesEnumerator(super.ptr)
    : _vtable = ptr.value
          .cast<IAppxManifestQualifiedResourcesEnumeratorVtbl>()
          .ref;

  /// Creates a new instance of [IAppxManifestQualifiedResourcesEnumerator] from
  /// an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestQualifiedResourcesEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestQualifiedResourcesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestQualifiedResourcesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Throws a [WindowsException] on failure.
  IAppxManifestQualifiedResource? getCurrent() {
    final resource = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, resource));
    if (hr$.isError) {
      free(resource);
      throw WindowsException(hr$);
    }
    final result$ = resource.value;
    free(resource);
    if (result$.isNull) return null;
    return IAppxManifestQualifiedResource(result$);
  }

  /// Throws a [WindowsException] on failure.
  bool getHasCurrent() {
    final hasCurrent = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_GetHasCurrentFn(ptr, hasCurrent));
    if (hr$.isError) {
      free(hasCurrent);
      throw WindowsException(hr$);
    }
    final result$ = hasCurrent.value;
    free(hasCurrent);
    return result$ != FALSE;
  }

  /// Throws a [WindowsException] on failure.
  bool moveNext() {
    final hasNext = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_MoveNextFn(ptr, hasNext));
    if (hr$.isError) {
      free(hasNext);
      throw WindowsException(hr$);
    }
    final result$ = hasNext.value;
    free(hasNext);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IAppxManifestQualifiedResourcesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestQualifiedResourcesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> resource)
    >
  >
  GetCurrent;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BOOL> hasCurrent)
    >
  >
  GetHasCurrent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> hasNext)>
  >
  MoveNext;
}

@internal
final class IAppxManifestQualifiedResourcesEnumeratorCompanion
    extends ComCompanion<IAppxManifestQualifiedResourcesEnumerator> {
  const IAppxManifestQualifiedResourcesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestQualifiedResourcesEnumerator Function(VTablePointer)
  get fromPointer => IAppxManifestQualifiedResourcesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestQualifiedResourcesEnumerator;
}
