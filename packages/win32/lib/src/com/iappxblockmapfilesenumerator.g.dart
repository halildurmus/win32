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
import 'iappxblockmapfile.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxBlockMapFilesEnumerator = Guid.fromComponents(
  0x2b856a2,
  0x4262,
  0x4070,
  Uint8List.fromList(const [0xba, 0xcb, 0x1a, 0x8c, 0xbb, 0xc4, 0x23, 0x5]),
);

/// Enumerates the files from a block map.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxblockmapfilesenumerator>.
///
/// {@category com}
class IAppxBlockMapFilesEnumerator extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxBlockMapFilesEnumerator] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IAppxBlockMapFilesEnumerator] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxBlockMapFilesEnumerator(super.ptr)
    : _vtable = ptr.value.cast<IAppxBlockMapFilesEnumeratorVtbl>().ref;

  /// Creates a new instance of [IAppxBlockMapFilesEnumerator] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxBlockMapFilesEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxBlockMapFilesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxBlockMapFilesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Gets the file at the current position of the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfilesenumerator-getcurrent>.
  IAppxBlockMapFile? getCurrent() {
    final file = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, file));
    if (hr$.isError) {
      free(file);
      throw WindowsException(hr$);
    }
    final result$ = file.value;
    free(file);
    if (result$.isNull) return null;
    return IAppxBlockMapFile(result$);
  }

  /// Determines whether there is a file at the current position of the
  /// enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfilesenumerator-gethascurrent>.
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

  /// Advances the position of the enumerator to the next file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxblockmapfilesenumerator-movenext>.
  bool moveNext() {
    final hasCurrent = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_MoveNextFn(ptr, hasCurrent));
    if (hr$.isError) {
      free(hasCurrent);
      throw WindowsException(hr$);
    }
    final result$ = hasCurrent.value;
    free(hasCurrent);
    return result$ != FALSE;
  }

  @override
  String toString() => 'IAppxBlockMapFilesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxBlockMapFilesEnumeratorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VTablePointer> file)
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
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BOOL> hasCurrent)
    >
  >
  MoveNext;
}

@internal
final class IAppxBlockMapFilesEnumeratorCompanion
    extends ComCompanion<IAppxBlockMapFilesEnumerator> {
  const IAppxBlockMapFilesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxBlockMapFilesEnumerator Function(VTablePointer) get fromPointer =>
      IAppxBlockMapFilesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxBlockMapFilesEnumerator;
}
