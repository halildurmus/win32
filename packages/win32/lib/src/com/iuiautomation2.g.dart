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
import 'iuiautomation.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomation2 = Guid.fromComponents(
  0x34723aff,
  0xc9d,
  0x49d0,
  Uint8List.fromList(const [0x98, 0x96, 0x7a, 0xb5, 0x2d, 0xf8, 0xcd, 0x8a]),
);

/// Extends the IUIAutomation interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation2>.
///
/// {@category com}
class IUIAutomation2 extends IUIAutomation implements ComInterface {
  /// Creates a new instance of [IUIAutomation2] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomation2]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomation2(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomation2Vtbl>().ref;

  /// Creates a new instance of [IUIAutomation2] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomation2] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomation2.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomation2Vtbl _vtable;
  late final _get_AutoSetFocusFn = _vtable.get_AutoSetFocus
      .asFunction<int Function(VTablePointer, Pointer<BOOL>)>();
  late final _put_AutoSetFocusFn = _vtable.put_AutoSetFocus
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_ConnectionTimeoutFn = _vtable.get_ConnectionTimeout
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _put_ConnectionTimeoutFn = _vtable.put_ConnectionTimeout
      .asFunction<int Function(VTablePointer, int)>();
  late final _get_TransactionTimeoutFn = _vtable.get_TransactionTimeout
      .asFunction<int Function(VTablePointer, Pointer<Uint32>)>();
  late final _put_TransactionTimeoutFn = _vtable.put_TransactionTimeout
      .asFunction<int Function(VTablePointer, int)>();

  /// Specifies whether calls to UI Automation control pattern methods
  /// automatically set focus to the target element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation2-get_autosetfocus>.
  bool get autoSetFocus {
    final autoSetFocus = loggingCalloc<BOOL>();
    final hr$ = HRESULT(_get_AutoSetFocusFn(ptr, autoSetFocus));
    if (hr$.isError) {
      free(autoSetFocus);
      throw WindowsException(hr$);
    }
    final result$ = autoSetFocus.value;
    free(autoSetFocus);
    return result$ != FALSE;
  }

  set autoSetFocus(bool autoSetFocus) {
    final hr$ = HRESULT(_put_AutoSetFocusFn(ptr, autoSetFocus ? TRUE : FALSE));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the length of time that UI Automation will wait for a provider
  /// to respond to a client request for an automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation2-get_connectiontimeout>.
  int get connectionTimeout {
    final timeout = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_ConnectionTimeoutFn(ptr, timeout));
    if (hr$.isError) {
      free(timeout);
      throw WindowsException(hr$);
    }
    final result$ = timeout.value;
    free(timeout);
    return result$;
  }

  set connectionTimeout(int timeout) {
    final hr$ = HRESULT(_put_ConnectionTimeoutFn(ptr, timeout));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies the length of time that UI Automation will wait for a provider
  /// to respond to a client request for information about an automation
  /// element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation2-get_transactiontimeout>.
  int get transactionTimeout {
    final timeout = loggingCalloc<Uint32>();
    final hr$ = HRESULT(_get_TransactionTimeoutFn(ptr, timeout));
    if (hr$.isError) {
      free(timeout);
      throw WindowsException(hr$);
    }
    final result$ = timeout.value;
    free(timeout);
    return result$;
  }

  set transactionTimeout(int timeout) {
    final hr$ = HRESULT(_put_TransactionTimeoutFn(ptr, timeout));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomation2(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomation2Vtbl extends Struct {
  external IUIAutomationVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BOOL> autoSetFocus)
    >
  >
  get_AutoSetFocus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BOOL autoSetFocus)>
  >
  put_AutoSetFocus;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> timeout)>
  >
  get_ConnectionTimeout;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 timeout)>
  >
  put_ConnectionTimeout;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<Uint32> timeout)>
  >
  get_TransactionTimeout;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Uint32 timeout)>
  >
  put_TransactionTimeout;
}

@internal
final class IUIAutomation2Companion extends ComCompanion<IUIAutomation2> {
  const IUIAutomation2Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomation2 Function(VTablePointer) get fromPointer => IUIAutomation2.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomation2;
}
