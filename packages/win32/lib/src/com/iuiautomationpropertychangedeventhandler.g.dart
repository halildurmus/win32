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
import '../variant.dart';
import 'interface.g.dart';
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationPropertyChangedEventHandler = Guid.fromComponents(
  0x40cd37d4,
  0xc756,
  0x4b0c,
  Uint8List.fromList(const [0x8c, 0x6f, 0xbd, 0xdf, 0xee, 0xb1, 0x3b, 0x50]),
);

/// Exposes a method to handle Microsoft UI Automation events that occur when a
/// property is changed.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationpropertychangedeventhandler>.
///
/// {@category com}
class IUIAutomationPropertyChangedEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationPropertyChangedEventHandler] from
  /// a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationPropertyChangedEventHandler] interface. The [ptr] must not
  /// be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationPropertyChangedEventHandler(super.ptr)
    : _vtable = ptr.value
          .cast<IUIAutomationPropertyChangedEventHandlerVtbl>()
          .ref;

  final IUIAutomationPropertyChangedEventHandlerVtbl _vtable;
  late final _HandlePropertyChangedEventFn =
      _vtable.HandlePropertyChangedEvent.asFunction<
        int Function(VTablePointer, VTablePointer, int, VARIANT)
      >();

  /// Handles a Microsoft UI Automation property-changed event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationpropertychangedeventhandler-handlepropertychangedevent>.
  @pragma('vm:prefer-inline')
  void handlePropertyChangedEvent(
    IUIAutomationElement? sender,
    UIA_PROPERTY_ID propertyId,
    VARIANT newValue,
  ) {
    final hr$ = HRESULT(
      _HandlePropertyChangedEventFn(
        ptr,
        sender?.ptr ?? nullptr,
        propertyId,
        newValue,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomationPropertyChangedEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationPropertyChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer sender,
        Int32 propertyId,
        VARIANT newValue,
      )
    >
  >
  HandlePropertyChangedEvent;
}

@internal
final class IUIAutomationPropertyChangedEventHandlerCompanion
    extends ComCompanion<IUIAutomationPropertyChangedEventHandler> {
  const IUIAutomationPropertyChangedEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationPropertyChangedEventHandler Function(VTablePointer)
  get fromPointer => IUIAutomationPropertyChangedEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationPropertyChangedEventHandler;
}
