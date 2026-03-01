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
import '../callbacks.g.dart';
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
import 'ispnotifycallback.g.dart';
import 'ispnotifysink.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpNotifySource = GUID.fromComponents(
  0x5eff4aef,
  0x8487,
  0x11d2,
  .fromList(const [0x96, 0x1c, 0x0, 0xc0, 0x4f, 0x8e, 0xe6, 0x28]),
);

/// Provides a mechanism for a notification but no information on the events
/// that caused the notification.
///
/// To learn more, see
/// <https://learn.microsoft.com/previous-versions/windows/desktop/ms717961(v=vs.85)>.
///
/// {@category com}
class ISpNotifySource extends IUnknown implements ComInterface {
  /// Creates a new instance of [ISpNotifySource] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [ISpNotifySource]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ISpNotifySource(super.ptr)
    : _vtable = ptr.value.cast<ISpNotifySourceVtbl>().ref;

  /// Creates a new instance of [ISpNotifySource] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [ISpNotifySource] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpNotifySource.from(IUnknown interface) =>
      interface.queryInterface();

  final ISpNotifySourceVtbl _vtable;
  late final _SetNotifySinkFn = _vtable
      .SetNotifySink.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetNotifyWindowMessageFn =
      _vtable.SetNotifyWindowMessage.asFunction<
        int Function(VTablePointer, Pointer, int, int, int)
      >();
  late final _SetNotifyCallbackFunctionFn =
      _vtable.SetNotifyCallbackFunction.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>>,
          int,
          int,
        )
      >();
  late final _SetNotifyCallbackInterfaceFn =
      _vtable.SetNotifyCallbackInterface.asFunction<
        int Function(VTablePointer, VTablePointer, int, int)
      >();
  late final _SetNotifyWin32EventFn =
      _vtable.SetNotifyWin32Event.asFunction<int Function(VTablePointer)>();
  late final _WaitForNotifyEventFn =
      _vtable.WaitForNotifyEvent.asFunction<int Function(VTablePointer, int)>();
  late final _GetNotifyEventHandleFn = _vtable
      .GetNotifyEventHandle.asFunction<Pointer Function(VTablePointer)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifySink(ISpNotifySink? pNotifySink) {
    final hr$ = HRESULT(_SetNotifySinkFn(ptr, pNotifySink?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifyWindowMessage(
    HWND hWnd,
    int msg,
    WPARAM wParam,
    LPARAM lParam,
  ) {
    final hr$ = HRESULT(
      _SetNotifyWindowMessageFn(ptr, hWnd, msg, wParam, lParam),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifyCallbackFunction(
    Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
    WPARAM wParam,
    LPARAM lParam,
  ) {
    final hr$ = HRESULT(
      _SetNotifyCallbackFunctionFn(ptr, pfnCallback, wParam, lParam),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifyCallbackInterface(
    ISpNotifyCallback? pSpCallback,
    WPARAM wParam,
    LPARAM lParam,
  ) {
    final hr$ = HRESULT(
      _SetNotifyCallbackInterfaceFn(
        ptr,
        pSpCallback?.ptr ?? nullptr,
        wParam,
        lParam,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifyWin32Event() {
    final hr$ = HRESULT(_SetNotifyWin32EventFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void waitForNotifyEvent(int dwMilliseconds) {
    final hr$ = HRESULT(_WaitForNotifyEventFn(ptr, dwMilliseconds));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @pragma('vm:prefer-inline')
  HANDLE getNotifyEventHandle() => HANDLE(_GetNotifyEventHandleFn(ptr));

  @override
  String toString() => 'ISpNotifySource(ptr: $ptr)';
}

/// @nodoc
base class ISpNotifySourceVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, VTablePointer pNotifySink)
    >
  >
  SetNotifySink;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hWnd,
        Uint32 msg,
        IntPtr wParam,
        IntPtr lParam,
      )
    >
  >
  SetNotifyWindowMessage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
        IntPtr wParam,
        IntPtr lParam,
      )
    >
  >
  SetNotifyCallbackFunction;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pSpCallback,
        IntPtr wParam,
        IntPtr lParam,
      )
    >
  >
  SetNotifyCallbackInterface;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>>
  SetNotifyWin32Event;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 dwMilliseconds)>
  >
  WaitForNotifyEvent;
  external Pointer<NativeFunction<Pointer Function(VTablePointer this$)>>
  GetNotifyEventHandle;
}

@internal
final class ISpNotifySourceCompanion extends ComCompanion<ISpNotifySource> {
  const ISpNotifySourceCompanion();

  @pragma('vm:prefer-inline')
  @override
  ISpNotifySource Function(VTablePointer) get fromPointer =>
      ISpNotifySource.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_ISpNotifySource;
}
