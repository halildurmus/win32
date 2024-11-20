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
import 'iappxmanifestqualifiedresourcesenumerator.g.dart';
import 'iappxmanifestreader.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestReader2 = Guid.fromComponents(
  0xd06f67bc,
  0xb31d,
  0x4eba,
  Uint8List.fromList(const [0xa8, 0xaf, 0x63, 0x8e, 0x73, 0xe7, 0x7b, 0x4d]),
);

/// Represents an object model of the package manifest that provides methods to
/// access manifest elements and attributes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestreader2>.
///
/// {@category com}
class IAppxManifestReader2 extends IAppxManifestReader implements ComInterface {
  /// Creates a new instance of [IAppxManifestReader2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxManifestReader2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestReader2(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestReader2Vtbl>().ref;

  /// Creates a new instance of [IAppxManifestReader2] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestReader2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestReader2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestReader2Vtbl _vtable;
  late final _GetQualifiedResourcesFn =
      _vtable.GetQualifiedResources.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();

  /// Gets an enumerator that iterates through the qualified resources that are
  /// defined in the manifest.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestreader2-getqualifiedresources>.
  IAppxManifestQualifiedResourcesEnumerator? getQualifiedResources() {
    final resources = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetQualifiedResourcesFn(ptr, resources));
    if (hr$.isError) {
      free(resources);
      throw WindowsException(hr$);
    }
    final result$ = resources.value;
    free(resources);
    if (result$.isNull) return null;
    return IAppxManifestQualifiedResourcesEnumerator(result$);
  }

  @override
  String toString() => 'IAppxManifestReader2(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestReader2Vtbl extends Struct {
  external IAppxManifestReaderVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> resources)
    >
  >
  GetQualifiedResources;
}

@internal
final class IAppxManifestReader2Companion
    extends ComCompanion<IAppxManifestReader2> {
  const IAppxManifestReader2Companion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestReader2 Function(VTablePointer) get fromPointer =>
      IAppxManifestReader2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestReader2;
}
