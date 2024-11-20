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
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestPackageDependency = Guid.fromComponents(
  0xe4946b59,
  0x733e,
  0x43f0,
  Uint8List.fromList(const [0xa7, 0x24, 0x3b, 0xde, 0x4c, 0x12, 0x85, 0xa0]),
);

/// Describes the dependency of one package on another package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestpackagedependency>.
///
/// {@category com}
class IAppxManifestPackageDependency extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxManifestPackageDependency] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestPackageDependency] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestPackageDependency(super.ptr)
    : _vtable = ptr.value.cast<IAppxManifestPackageDependencyVtbl>().ref;

  /// Creates a new instance of [IAppxManifestPackageDependency] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestPackageDependency] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestPackageDependency.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestPackageDependencyVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetPublisherFn = _vtable
      .GetPublisher.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetMinVersionFn = _vtable
      .GetMinVersion.asFunction<int Function(VTablePointer, Pointer<Uint64>)>();

  /// Gets the name of the package on which the current package has a
  /// dependency.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependency-getname>.
  PWSTR getName() {
    final name = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, name));
    if (hr$.isError) {
      free(name);
      throw WindowsException(hr$);
    }
    final result$ = name.value;
    free(name);
    return result$;
  }

  /// Gets the name of the publisher that produced the package on which the
  /// current package depends.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependency-getpublisher>.
  PWSTR getPublisher() {
    final publisher = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetPublisherFn(ptr, publisher));
    if (hr$.isError) {
      free(publisher);
      throw WindowsException(hr$);
    }
    final result$ = publisher.value;
    free(publisher);
    return result$;
  }

  /// Gets the minimum version of the package on which the current package has a
  /// dependency.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestpackagedependency-getminversion>.
  int getMinVersion() {
    final minVersion = loggingCalloc<Uint64>();
    final hr$ = HRESULT(_GetMinVersionFn(ptr, minVersion));
    if (hr$.isError) {
      free(minVersion);
      throw WindowsException(hr$);
    }
    final result$ = minVersion.value;
    free(minVersion);
    return result$;
  }

  @override
  String toString() => 'IAppxManifestPackageDependency(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestPackageDependencyVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> name)>
  >
  GetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<PWSTR> publisher)
    >
  >
  GetPublisher;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint64> minVersion)
    >
  >
  GetMinVersion;
}

@internal
final class IAppxManifestPackageDependencyCompanion
    extends ComCompanion<IAppxManifestPackageDependency> {
  const IAppxManifestPackageDependencyCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestPackageDependency Function(VTablePointer) get fromPointer =>
      IAppxManifestPackageDependency.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestPackageDependency;
}
