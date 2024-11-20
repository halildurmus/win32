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
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationStructureChangedEventHandler = Guid.fromComponents(
  0xe81d1b4e,
  0x11c5,
  0x42f8,
  Uint8List.fromList(const [0x97, 0x54, 0xe7, 0x3, 0x6c, 0x79, 0xf0, 0x54]),
);

/// Exposes a method to handle events that occur when the Microsoft UI
/// Automation tree structure is changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationstructurechangedeventhandler>.
///
/// {@category com}
class IUIAutomationStructureChangedEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationStructureChangedEventHandler] from
  /// a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationStructureChangedEventHandler] interface. The [ptr] must not
  /// be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationStructureChangedEventHandler(super.ptr)
    : _vtable = ptr.value
          .cast<IUIAutomationStructureChangedEventHandlerVtbl>()
          .ref;

  final IUIAutomationStructureChangedEventHandlerVtbl _vtable;
  late final _HandleStructureChangedEventFn =
      _vtable.HandleStructureChangedEvent.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<SAFEARRAY>)
      >();

  /// Handles an event that is raised when the Microsoft UI Automation tree
  /// structure has changed.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationstructurechangedeventhandler-handlestructurechangedevent>.
  @pragma('vm:prefer-inline')
  void handleStructureChangedEvent(
    IUIAutomationElement? sender,
    StructureChangeType changeType,
    Pointer<SAFEARRAY> runtimeId,
  ) {
    final hr$ = HRESULT(
      _HandleStructureChangedEventFn(
        ptr,
        sender?.ptr ?? nullptr,
        changeType,
        runtimeId,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationStructureChangedEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationStructureChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer sender,
        Int32 changeType,
        Pointer<SAFEARRAY> runtimeId,
      )
    >
  >
  HandleStructureChangedEvent;
}

@internal
final class IUIAutomationStructureChangedEventHandlerCompanion
    extends ComCompanion<IUIAutomationStructureChangedEventHandler> {
  const IUIAutomationStructureChangedEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationStructureChangedEventHandler Function(VTablePointer)
  get fromPointer => IUIAutomationStructureChangedEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationStructureChangedEventHandler;
}
