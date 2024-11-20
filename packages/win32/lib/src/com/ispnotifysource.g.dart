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
import '../callbacks.g.dart';
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
import 'ispnotifycallback.g.dart';
import 'ispnotifysink.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_ISpNotifySource = Guid.fromComponents(
  0x5eff4aef,
  0x8487,
  0x11d2,
  Uint8List.fromList(const [0x96, 0x1c, 0x0, 0xc0, 0x4f, 0x8e, 0xe6, 0x28]),
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
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  ISpNotifySource(super.ptr)
    : _vtable = ptr.value.cast<ISpNotifySourceVtbl>().ref;

  /// Creates a new instance of [ISpNotifySource] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [ISpNotifySource] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory ISpNotifySource.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final ISpNotifySourceVtbl _vtable;
  late final _SetNotifySinkFn = _vtable
      .SetNotifySink.asFunction<int Function(VTablePointer, VTablePointer)>();
  late final _SetNotifyWindowMessageFn =
      _vtable.SetNotifyWindowMessage.asFunction<
        int Function(VTablePointer, int, int, int, int)
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
  late final _GetNotifyEventHandleFn =
      _vtable.GetNotifyEventHandle.asFunction<int Function(VTablePointer)>();

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifySink(ISpNotifySink? pNotifySink) {
    final hr$ = HRESULT(_SetNotifySinkFn(ptr, pNotifySink?.ptr ?? nullptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifyWindowMessage(int hWnd, int msg, int wParam, int lParam) {
    final hr$ = HRESULT(
      _SetNotifyWindowMessageFn(ptr, hWnd, msg, wParam, lParam),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Throws a [WindowsException] on failure.
  @pragma('vm:prefer-inline')
  void setNotifyCallbackFunction(
    Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
    int wParam,
    int lParam,
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
    int wParam,
    int lParam,
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
  int getNotifyEventHandle() => _GetNotifyEventHandleFn(ptr);

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
        HWND hWnd,
        Uint32 msg,
        WPARAM wParam,
        LPARAM lParam,
      )
    >
  >
  SetNotifyWindowMessage;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<NativeFunction<SPNOTIFYCALLBACK>>> pfnCallback,
        WPARAM wParam,
        LPARAM lParam,
      )
    >
  >
  SetNotifyCallbackFunction;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pSpCallback,
        WPARAM wParam,
        LPARAM lParam,
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
  external Pointer<NativeFunction<HANDLE Function(VTablePointer this$)>>
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
  Guid get iid => IID_ISpNotifySource;
}
