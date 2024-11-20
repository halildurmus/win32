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
import 'iappxmanifestmainpackagedependency.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxManifestMainPackageDependenciesEnumerator = Guid.fromComponents(
  0xa99c4f00,
  0x51d2,
  0x4f0f,
  Uint8List.fromList(const [0xba, 0x46, 0x7e, 0xd5, 0x25, 0x5e, 0xbd, 0xff]),
);

/// Enumerates &lt;MainPackageDependency&gt; elements from an app manifest.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxmanifestmainpackagedependenciesenumerator>.
///
/// {@category com}
class IAppxManifestMainPackageDependenciesEnumerator extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IAppxManifestMainPackageDependenciesEnumerator]
  /// from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxManifestMainPackageDependenciesEnumerator] interface. The [ptr] must
  /// not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxManifestMainPackageDependenciesEnumerator(super.ptr)
    : _vtable = ptr.value
          .cast<IAppxManifestMainPackageDependenciesEnumeratorVtbl>()
          .ref;

  /// Creates a new instance of [IAppxManifestMainPackageDependenciesEnumerator]
  /// from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxManifestMainPackageDependenciesEnumerator]
  /// interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxManifestMainPackageDependenciesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxManifestMainPackageDependenciesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Gets the &lt;MainPackageDependency&gt; element at the current position of
  /// the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestmainpackagedependenciesenumerator-getcurrent>.
  IAppxManifestMainPackageDependency? getCurrent() {
    final mainPackageDependency = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, mainPackageDependency));
    if (hr$.isError) {
      free(mainPackageDependency);
      throw WindowsException(hr$);
    }
    final result$ = mainPackageDependency.value;
    free(mainPackageDependency);
    if (result$.isNull) return null;
    return IAppxManifestMainPackageDependency(result$);
  }

  /// Determines whether there is a &lt;MainPackageDependency&gt; element at the
  /// current position of the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestmainpackagedependenciesenumerator-gethascurrent>.
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

  /// Advances the position of the enumerator to the next
  /// &lt;MainPackageDependency&gt; element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxmanifestmainpackagedependenciesenumerator-movenext>.
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
      'IAppxManifestMainPackageDependenciesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxManifestMainPackageDependenciesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> mainPackageDependency,
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
final class IAppxManifestMainPackageDependenciesEnumeratorCompanion
    extends ComCompanion<IAppxManifestMainPackageDependenciesEnumerator> {
  const IAppxManifestMainPackageDependenciesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxManifestMainPackageDependenciesEnumerator Function(VTablePointer)
  get fromPointer => IAppxManifestMainPackageDependenciesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxManifestMainPackageDependenciesEnumerator;
}
