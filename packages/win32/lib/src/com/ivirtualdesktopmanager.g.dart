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
final IID_IVirtualDesktopManager = Guid.fromComponents(
  0xa5cd92ff,
  0x29be,
  0x454c,
  Uint8List.fromList(const [0x8d, 0x4, 0xd8, 0x28, 0x79, 0xfb, 0x3f, 0x1b]),
);

/// Exposes methods that enable an application to interact with groups of
/// windows that form virtual workspaces.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nn-shobjidl_core-ivirtualdesktopmanager>.
///
/// {@category com}
class IVirtualDesktopManager extends IUnknown implements ComInterface {
  /// Creates a new instance of [IVirtualDesktopManager] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IVirtualDesktopManager]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IVirtualDesktopManager(super.ptr)
    : _vtable = ptr.value.cast<IVirtualDesktopManagerVtbl>().ref;

  /// Creates a new instance of [IVirtualDesktopManager] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IVirtualDesktopManager] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IVirtualDesktopManager.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IVirtualDesktopManagerVtbl _vtable;
  late final _IsWindowOnCurrentVirtualDesktopFn =
      _vtable.IsWindowOnCurrentVirtualDesktop.asFunction<
        int Function(VTablePointer, int, Pointer<BOOL>)
      >();
  late final _GetWindowDesktopIdFn =
      _vtable.GetWindowDesktopId.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>)
      >();
  late final _MoveWindowToDesktopFn =
      _vtable.MoveWindowToDesktop.asFunction<
        int Function(VTablePointer, int, Pointer<GUID>)
      >();

  /// Indicates whether the provided window is on the currently active virtual
  /// desktop.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ivirtualdesktopmanager-iswindowoncurrentvirtualdesktop>.
  bool isWindowOnCurrentVirtualDesktop(int topLevelWindow) {
    final onCurrentDesktop = loggingCalloc<BOOL>();
    final hr$ = HRESULT(
      _IsWindowOnCurrentVirtualDesktopFn(ptr, topLevelWindow, onCurrentDesktop),
    );
    if (hr$.isError) {
      free(onCurrentDesktop);
      throw WindowsException(hr$);
    }
    final result$ = onCurrentDesktop.value;
    free(onCurrentDesktop);
    return result$ != FALSE;
  }

  /// Gets the identifier for the virtual desktop hosting the provided top-level
  /// window.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ivirtualdesktopmanager-getwindowdesktopid>.
  Pointer<GUID> getWindowDesktopId(int topLevelWindow) {
    final desktopId = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetWindowDesktopIdFn(ptr, topLevelWindow, desktopId));
    if (hr$.isError) {
      free(desktopId);
      throw WindowsException(hr$);
    }
    return desktopId;
  }

  /// Moves a window to the specified virtual desktop.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/shobjidl_core/nf-shobjidl_core-ivirtualdesktopmanager-movewindowtodesktop>.
  @pragma('vm:prefer-inline')
  void moveWindowToDesktop(int topLevelWindow, Pointer<GUID> desktopId) {
    final hr$ = HRESULT(_MoveWindowToDesktopFn(ptr, topLevelWindow, desktopId));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IVirtualDesktopManager(ptr: $ptr)';
}

/// @nodoc
base class IVirtualDesktopManagerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND topLevelWindow,
        Pointer<BOOL> onCurrentDesktop,
      )
    >
  >
  IsWindowOnCurrentVirtualDesktop;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND topLevelWindow,
        Pointer<GUID> desktopId,
      )
    >
  >
  GetWindowDesktopId;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        HWND topLevelWindow,
        Pointer<GUID> desktopId,
      )
    >
  >
  MoveWindowToDesktop;
}

@internal
final class IVirtualDesktopManagerCompanion
    extends ComCompanion<IVirtualDesktopManager> {
  const IVirtualDesktopManagerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IVirtualDesktopManager Function(VTablePointer) get fromPointer =>
      IVirtualDesktopManager.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IVirtualDesktopManager;
}
