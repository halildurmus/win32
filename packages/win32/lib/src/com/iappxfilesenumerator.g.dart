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
import 'iappxfile.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IAppxFilesEnumerator = Guid.fromComponents(
  0xf007eeaf,
  0x9831,
  0x411c,
  Uint8List.fromList(const [0x98, 0x47, 0x91, 0x7c, 0xdc, 0x62, 0xd1, 0xfe]),
);

/// Enumerates the payload files in a package.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nn-appxpackaging-iappxfilesenumerator>.
///
/// {@category com}
class IAppxFilesEnumerator extends IUnknown implements ComInterface {
  /// Creates a new instance of [IAppxFilesEnumerator] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IAppxFilesEnumerator]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IAppxFilesEnumerator(super.ptr)
    : _vtable = ptr.value.cast<IAppxFilesEnumeratorVtbl>().ref;

  /// Creates a new instance of [IAppxFilesEnumerator] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IAppxFilesEnumerator] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IAppxFilesEnumerator.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IAppxFilesEnumeratorVtbl _vtable;
  late final _GetCurrentFn =
      _vtable.GetCurrent.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetHasCurrentFn = _vtable
      .GetHasCurrent.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _MoveNextFn =
      _vtable.MoveNext.asFunction<int Function(VTablePointer, Pointer<BOOL>)>();

  /// Gets the payload file at the current position of the enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfilesenumerator-getcurrent>.
  IAppxFile? getCurrent() {
    final file = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetCurrentFn(ptr, file));
    if (hr$.isError) {
      free(file);
      throw WindowsException(hr$);
    }
    final result$ = file.value;
    free(file);
    if (result$.isNull) return null;
    return IAppxFile(result$);
  }

  /// Determines whether there is a payload file at the current position of the
  /// enumerator.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfilesenumerator-gethascurrent>.
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

  /// Advances the position of the enumerator to the next payload file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/appxpackaging/nf-appxpackaging-iappxfilesenumerator-movenext>.
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
  String toString() => 'IAppxFilesEnumerator(ptr: $ptr)';
}

/// @nodoc
base class IAppxFilesEnumeratorVtbl extends Struct {
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
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> hasNext)>
  >
  MoveNext;
}

@internal
final class IAppxFilesEnumeratorCompanion
    extends ComCompanion<IAppxFilesEnumerator> {
  const IAppxFilesEnumeratorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IAppxFilesEnumerator Function(VTablePointer) get fromPointer =>
      IAppxFilesEnumerator.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IAppxFilesEnumerator;
}
