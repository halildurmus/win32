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
final IID_IFileIsInUse = Guid.fromComponents(
  0x64a1cbf0,
  0x3a1a,
  0x4461,
  Uint8List.fromList(const [0x91, 0x58, 0x37, 0x69, 0x69, 0x69, 0x39, 0x50]),
);

/// Exposes methods that can be called to get information on or close a file
/// that is in use by another application.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ifileisinuse>.
///
/// {@category com}
class IFileIsInUse extends IUnknown implements ComInterface {
  /// Creates a new instance of [IFileIsInUse] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IFileIsInUse] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IFileIsInUse(super.ptr) : _vtable = ptr.value.cast<IFileIsInUseVtbl>().ref;

  /// Creates a new instance of [IFileIsInUse] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IFileIsInUse] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IFileIsInUse.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IFileIsInUseVtbl _vtable;
  late final _GetAppNameFn = _vtable
      .GetAppName.asFunction<int Function(VTablePointer, Pointer<PWSTR>)>();
  late final _GetUsageFn = _vtable
      .GetUsage.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetCapabilitiesFn =
      _vtable.GetCapabilities.asFunction<
        int Function(VTablePointer, Pointer<Uint32>)
      >();
  late final _GetSwitchToHWNDFn = _vtable
      .GetSwitchToHWND.asFunction<int Function(VTablePointer, Pointer<HWND>)>();
  late final _CloseFileFn =
      _vtable.CloseFile.asFunction<int Function(VTablePointer)>();

  /// Retrieves the name of the application that is using the file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getappname>.
  PWSTR getAppName() {
    final ppszName = loggingCalloc<PWSTR>();
    final hr$ = HRESULT(_GetAppNameFn(ptr, ppszName));
    if (hr$.isError) {
      free(ppszName);
      throw WindowsException(hr$);
    }
    final result$ = ppszName.value;
    free(ppszName);
    return result$;
  }

  /// Gets a value that indicates how the file in use is being used.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getusage>.
  FILE_USAGE_TYPE getUsage() {
    final pfut = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetUsageFn(ptr, pfut));
    if (hr$.isError) {
      free(pfut);
      throw WindowsException(hr$);
    }
    final result$ = pfut.value;
    free(pfut);
    return FILE_USAGE_TYPE(result$);
  }

  /// Determines whether the file can be closed and whether the UI is capable of
  /// switching to the window of the application that is using the file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getcapabilities>.
  int getCapabilities() {
    final pdwCapFlags = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_GetCapabilitiesFn(ptr, pdwCapFlags));
    if (hr$.isError) {
      free(pdwCapFlags);
      throw WindowsException(hr$);
    }
    final result$ = pdwCapFlags.value;
    free(pdwCapFlags);
    return result$;
  }

  /// Retrieves the handle of the top-level window of the application that is
  /// using the file.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-getswitchtohwnd>.
  int getSwitchToHWND() {
    final phwnd = loggingCalloc<HWND>();
    final hr$ = HRESULT(_GetSwitchToHWNDFn(ptr, phwnd));
    if (hr$.isError) {
      free(phwnd);
      throw WindowsException(hr$);
    }
    final result$ = phwnd.value;
    free(phwnd);
    return result$;
  }

  /// Closes the file currently in use.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ifileisinuse-closefile>.
  @pragma('vm:prefer-inline')
  void closeFile() {
    final hr$ = HRESULT(_CloseFileFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IFileIsInUse(ptr: $ptr)';
}

/// @nodoc
base class IFileIsInUseVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<PWSTR> ppszName)>
  >
  GetAppName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> pfut)>
  >
  GetUsage;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Uint32> pdwCapFlags)
    >
  >
  GetCapabilities;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<HWND> phwnd)>
  >
  GetSwitchToHWND;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  CloseFile;
}

@internal
final class IFileIsInUseCompanion extends ComCompanion<IFileIsInUse> {
  const IFileIsInUseCompanion();

  @pragma('vm:prefer-inline')
  @override
  IFileIsInUse Function(VTablePointer) get fromPointer => IFileIsInUse.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IFileIsInUse;
}
