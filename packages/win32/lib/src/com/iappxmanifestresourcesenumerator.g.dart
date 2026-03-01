// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestResourcesEnumerator = GUID.fromComponents(
  0xde4dfbbd,
  0x881a,
  0x48bb,
  .fromList(const [0x85, 0x8c, 0xd6, 0xf2, 0xba, 0xea, 0xe6, 0xed]),
);

/// Enumerates the resources defined in the package manifest.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestresourcesenumerator>.
///
/// {@category com}
class IAppxManifestResourcesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestResourcesEnumerator] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestResourcesEnumerator] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  IAppxManifestResourcesEnumerator(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestResourcesEnumeratorVtbl>().ref;

  /// Creates a new instance of [IAppxManifestResourcesEnumerator] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestResourcesEnumerator] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestResourcesEnumerator.from(IUnknown interface) =>
      interface.queryInterface();

  final IAppxManifestResourcesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<Pointer<Utf16>>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _MoveNextFn = _vtable
      .MoveNext.asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Gets the resource at the current position of the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestresourcesenumerator-getcurrent>.
  PWSTR getCurrent() {
    final resource = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, resource));
    if (hr$.isError) {
      free(resource);
      throw WindowsException(hr$);
    }
    final result$ = resource.value;
    free(resource);
    return .new(result$);
  }

  /// Determines whether there is a resource at the current position of the
  /// enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestresourcesenumerator-gethascurrent>.
  bool getHasCurrent() {
    final hasCurrent = adaptiveCalloc<Int32>();
    final hr$ = HRESULT(_GetHasCurrentFn(ptr, hasCurrent));
    if (hr$.isError) {
      free(hasCurrent);
      throw WindowsException(hr$);
    }
    final result$ = hasCurrent.value;
    free(hasCurrent);
    return result$ != FALSE;
  }

  /// Advances the position of the enumerator to the next resource.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestresourcesenumerator-movenext>.
  bool moveNext() {
    final hasNext = adaptiveCalloc<Int32>();
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
  String toString() => 'IAppxManifestResourcesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestResourcesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> resource)
    >
  >
  GetCurrent;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> hasCurrent)
    >
  >
  GetHasCurrent;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> hasNext)>
  >
  MoveNext;
}

@internal
final class IAppxManifestResourcesEnumeratorCompanion
    extends ComCompanion<IAppxManifestResourcesEnumerator> {
  const IAppxManifestResourcesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestResourcesEnumerator Function(VTablePointer) get fromPointer =>
      IAppxManifestResourcesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IAppxManifestResourcesEnumerator;
}
