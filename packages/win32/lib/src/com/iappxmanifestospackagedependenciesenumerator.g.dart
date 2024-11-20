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
import 'iappxmanifestospackagedependency.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestOSPackageDependenciesEnumerator = Guid.fromComponents(
  0xb84e2fc3,
  0xf8ec,
  0x4bc1,
  Uint8List.fromList(const [0x8a, 0xe2, 0x15, 0x63, 0x46, 0xf5, 0xff, 0xea]),
);

/// {@category com}
class IAppxManifestOSPackageDependenciesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestOSPackageDependenciesEnumerator]
  /// from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestOSPackageDependenciesEnumerator] interface. The [ptr] must
  /// not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestOSPackageDependenciesEnumerator(super.ptr)
    : _vtable = ptr.value
          .cast<IAppxManifestOSPackageDependenciesEnumeratorVtbl>()
          .ref;

  /// Creates a new instance of [IAppxManifestOSPackageDependenciesEnumerator]
  /// from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestOSPackageDependenciesEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestOSPackageDependenciesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestOSPackageDependenciesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Throws a [WindowsException] on failure.
  IAppxManifestOSPackageDependency? getCurrent() {
    final osPackageDependency = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, osPackageDependency));
    if (hr$.isError) {
      free(osPackageDependency);
      throw WindowsException(hr$);
    }
    final result$ = osPackageDependency.value;
    free(osPackageDependency);
    if (result$.isNull) return null;
    return IAppxManifestOSPackageDependency(result$);
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
  String toString() =>
      'IAppxManifestOSPackageDependenciesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestOSPackageDependenciesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> osPackageDependency,
      )
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
final class IAppxManifestOSPackageDependenciesEnumeratorCompanion
    extends ComCompanion<IAppxManifestOSPackageDependenciesEnumerator> {
  const IAppxManifestOSPackageDependenciesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestOSPackageDependenciesEnumerator Function(VTablePointer)
  get fromPointer => IAppxManifestOSPackageDependenciesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestOSPackageDependenciesEnumerator;
}
