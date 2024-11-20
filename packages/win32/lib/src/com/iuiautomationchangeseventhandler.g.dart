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
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationChangesEventHandler = Guid.fromComponents(
  0x58edca55,
  0x2c3e,
  0x4980,
  Uint8List.fromList(const [0xb1, 0xb9, 0x56, 0xc1, 0x7f, 0x27, 0xa2, 0xa0]),
);

/// Exposes a method to handle one or more Microsoft UI Automation change
/// events.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationchangeseventhandler>.
///
/// {@category com}
class IUIAutomationChangesEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationChangesEventHandler] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationChangesEventHandler] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationChangesEventHandler(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationChangesEventHandlerVtbl>().ref;

  final IUIAutomationChangesEventHandlerVtbl _vtable;
  late final _HandleChangesEventFn =
      _vtable.HandleChangesEvent.asFunction<
        int Function(VTablePointer, VTablePointer, Pointer<UiaChangeInfo>, int)
      >();

  /// Handles one or more Microsoft UI Automation change events.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationchangeseventhandler-handlechangesevent>.
  @pragma('vm:prefer-inline')
  void handleChangesEvent(
    IUIAutomationElement? sender,
    Pointer<UiaChangeInfo> uiaChanges,
    int changesCount,
  ) {
    final hr$ = HRESULT(
      _HandleChangesEventFn(
        ptr,
        sender?.ptr ?? nullptr,
        uiaChanges,
        changesCount,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationChangesEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationChangesEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer sender,
        Pointer<UiaChangeInfo> uiaChanges,
        Int32 changesCount,
      )
    >
  >
  HandleChangesEvent;
}

@internal
final class IUIAutomationChangesEventHandlerCompanion
    extends ComCompanion<IUIAutomationChangesEventHandler> {
  const IUIAutomationChangesEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationChangesEventHandler Function(VTablePointer) get fromPointer =>
      IUIAutomationChangesEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationChangesEventHandler;
}
