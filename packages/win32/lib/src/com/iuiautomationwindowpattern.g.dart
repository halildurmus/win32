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
final IID_IUIAutomationWindowPattern = Guid.fromComponents(
  0xfaef453,
  0x9208,
  0x43ef,
  Uint8List.fromList(const [0xbb, 0xb2, 0x3b, 0x48, 0x51, 0x77, 0x86, 0x4f]),
);

/// Provides access to the fundamental functionality of a window.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationwindowpattern>.
///
/// {@category com}
class IUIAutomationWindowPattern extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationWindowPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationWindowPattern] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationWindowPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationWindowPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationWindowPattern] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationWindowPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationWindowPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationWindowPatternVtbl _vtable;
  late final _CloseFn = _vtable.Close.asFunction<int Function(VTablePointer)>();
  late final _WaitForInputIdleFn =
      _vtable.WaitForInputIdle.asFunction<
        int Function(VTablePointer, int, Pointer<BOOL>)
      >();
  late final _SetWindowVisualStateFn = _vtable
      .SetWindowVisualState.asFunction<int Function(VTablePointer, int)>();
  late final _get_CurrentCanMaximizeFn = _vtable.get_CurrentCanMaximize
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentCanMinimizeFn = _vtable.get_CurrentCanMinimize
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsModalFn = _vtable.get_CurrentIsModal
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentIsTopmostFn = _vtable.get_CurrentIsTopmost
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CurrentWindowVisualStateFn = _vtable
      .get_CurrentWindowVisualState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CurrentWindowInteractionStateFn = _vtable
      .get_CurrentWindowInteractionState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedCanMaximizeFn = _vtable.get_CachedCanMaximize
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedCanMinimizeFn = _vtable.get_CachedCanMinimize
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsModalFn = _vtable.get_CachedIsModal
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedIsTopmostFn = _vtable.get_CachedIsTopmost
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _get_CachedWindowVisualStateFn = _vtable
      .get_CachedWindowVisualState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _get_CachedWindowInteractionStateFn = _vtable
      .get_CachedWindowInteractionState
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();

  /// Closes the window.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-close>.
  @pragma('vm:prefer-inline')
  void close() {
    final hr$ = HRESULT(_CloseFn(ptr));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Causes the calling code to block for the specified time or until the
  /// associated process enters an idle state, whichever completes first.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-waitforinputidle>.
  bool waitForInputIdle(int milliseconds) {
    final success = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_WaitForInputIdleFn(ptr, milliseconds, success));
    if (hr$.isError) {
      free(success);
      throw WindowsException(hr$);
    }
    final result$ = success.value;
    free(success);
    return result$ != FALSE;
  }

  /// Minimizes, maximizes, or restores the window.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-setwindowvisualstate>.
  @pragma('vm:prefer-inline')
  void setWindowVisualState(WindowVisualState state) {
    final hr$ = HRESULT(_SetWindowVisualStateFn(ptr, state));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Indicates whether the window can be maximized.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentcanmaximize>.
  bool get currentCanMaximize {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanMaximizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the window can be minimized.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentcanminimize>.
  bool get currentCanMinimize {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentCanMinimizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the window is modal.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentismodal>.
  bool get currentIsModal {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsModalFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Indicates whether the window is the topmost element in the z-order.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentistopmost>.
  bool get currentIsTopmost {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CurrentIsTopmostFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves the visual state of the window; that is, whether it is in the
  /// normal, maximized, or minimized state.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentwindowvisualstate>.
  WindowVisualState get currentWindowVisualState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentWindowVisualStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return WindowVisualState(result$);
  }

  /// Retrieves the current state of the window for the purposes of user
  /// interaction.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_currentwindowinteractionstate>.
  WindowInteractionState get currentWindowInteractionState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CurrentWindowInteractionStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return WindowInteractionState(result$);
  }

  /// Retrieves a cached value that indicates whether the window can be
  /// maximized.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedcanmaximize>.
  bool get cachedCanMaximize {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanMaximizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the window can be
  /// minimized.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedcanminimize>.
  bool get cachedCanMinimize {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedCanMinimizeFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the window is modal.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedismodal>.
  bool get cachedIsModal {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsModalFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates whether the window is the topmost
  /// element in the z-order.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedistopmost>.
  bool get cachedIsTopmost {
    final retVal = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_CachedIsTopmostFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$ != FALSE;
  }

  /// Retrieves a cached value that indicates the visual state of the window;
  /// that is, whether it is in the normal, maximized, or minimized state.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedwindowvisualstate>.
  WindowVisualState get cachedWindowVisualState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedWindowVisualStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return WindowVisualState(result$);
  }

  /// Retrieves a cached value that indicates the current state of the window
  /// for the purposes of user interaction.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationwindowpattern-get_cachedwindowinteractionstate>.
  WindowInteractionState get cachedWindowInteractionState {
    final retVal = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_CachedWindowInteractionStateFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return WindowInteractionState(result$);
  }

  @override
  String toString() => 'IUIAutomationWindowPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationWindowPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<NativeFunction<Int32 Function(VTablePointer this$)>> Close;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 milliseconds,
        Pointer<BOOL> success,
      )
    >
  >
  WaitForInputIdle;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 state)>
  >
  SetWindowVisualState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanMaximize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentCanMinimize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsModal;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CurrentIsTopmost;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentWindowVisualState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CurrentWindowInteractionState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanMaximize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedCanMinimize;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsModal;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BOOL> retVal)>
  >
  get_CachedIsTopmost;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedWindowVisualState;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Int32> retVal)>
  >
  get_CachedWindowInteractionState;
}

@internal
final class IUIAutomationWindowPatternCompanion
    extends ComCompanion<IUIAutomationWindowPattern> {
  const IUIAutomationWindowPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationWindowPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationWindowPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationWindowPattern;
}
