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
final IID_IUIAutomationTextEditTextChangedEventHandler = Guid.fromComponents(
  0x92faa680,
  0xe704,
  0x4156,
  Uint8List.fromList(const [0x93, 0x1a, 0xe3, 0x2d, 0x5b, 0xb3, 0x8f, 0x3f]),
);

/// Exposes a method to handle events that occur when Microsoft UI Automation
/// reports a text-changed event from text edit controls.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationtextedittextchangedeventhandler>.
///
/// {@category com}
class IUIAutomationTextEditTextChangedEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationTextEditTextChangedEventHandler]
  /// from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationTextEditTextChangedEventHandler] interface. The [ptr] must
  /// not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationTextEditTextChangedEventHandler(super.ptr)
    : _vtable = ptr.value
          .cast<IUIAutomationTextEditTextChangedEventHandlerVtbl>()
          .ref;

  final IUIAutomationTextEditTextChangedEventHandlerVtbl _vtable;
  late final _HandleTextEditTextChangedEventFn =
      _vtable.HandleTextEditTextChangedEvent.asFunction<
        int Function(VTablePointer, VTablePointer, int, Pointer<SAFEARRAY>)
      >();

  /// Handles an event that is raised when a Microsoft UI Automation provider
  /// for a text-edit control reports a programmatic text change.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationtextedittextchangedeventhandler-handletextedittextchangedevent>.
  @pragma('vm:prefer-inline')
  void handleTextEditTextChangedEvent(
    IUIAutomationElement? sender,
    TextEditChangeType textEditChangeType,
    Pointer<SAFEARRAY> eventStrings,
  ) {
    final hr$ = HRESULT(
      _HandleTextEditTextChangedEventFn(
        ptr,
        sender?.ptr ?? nullptr,
        textEditChangeType,
        eventStrings,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() =>
      'IUIAutomationTextEditTextChangedEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationTextEditTextChangedEventHandlerVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer sender,
        Int32 textEditChangeType,
        Pointer<SAFEARRAY> eventStrings,
      )
    >
  >
  HandleTextEditTextChangedEvent;
}

@internal
final class IUIAutomationTextEditTextChangedEventHandlerCompanion
    extends ComCompanion<IUIAutomationTextEditTextChangedEventHandler> {
  const IUIAutomationTextEditTextChangedEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationTextEditTextChangedEventHandler Function(VTablePointer)
  get fromPointer => IUIAutomationTextEditTextChangedEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationTextEditTextChangedEventHandler;
}
