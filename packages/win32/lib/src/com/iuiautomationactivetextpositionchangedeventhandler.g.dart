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
import 'iuiautomationtextrange.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationActiveTextPositionChangedEventHandler =
    Guid.fromComponents(
      0xf97933b0,
      0x8dae,
      0x4496,
      Uint8List.fromList(const [0x89, 0x97, 0x5b, 0xa0, 0x15, 0xfe, 0xd, 0x82]),
    );

/// Exposes a method to handle Microsoft UI Automation events that occur when
/// the active text position changes.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationactivetextpositionchangedeventhandler>.
///
/// {@category com}
class IUIAutomationActiveTextPositionChangedEventHandler extends IUnknown
    implements ComInterface {
  /// Creates a new instance of
  /// [IUIAutomationActiveTextPositionChangedEventHandler] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationActiveTextPositionChangedEventHandler] interface. The [ptr]
  /// must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationActiveTextPositionChangedEventHandler(super.ptr)
    : _vtable = ptr.value
          .cast<IUIAutomationActiveTextPositionChangedEventHandlerVtbl>()
          .ref;

  final IUIAutomationActiveTextPositionChangedEventHandlerVtbl _vtable;
  late final _HandleActiveTextPositionChangedEventFn =
      _vtable.HandleActiveTextPositionChangedEvent.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();

  /// Handles a Microsoft UI Automation active text position change event.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationactivetextpositionchangedeventhandler-handleactivetextpositionchangedevent>.
  @pragma('vm:prefer-inline')
  void handleActiveTextPositionChangedEvent(
    IUIAutomationElement? sender,
    IUIAutomationTextRange? range,
  ) {
    final hr$ = HRESULT(
      _HandleActiveTextPositionChangedEventFn(
        ptr,
        sender?.ptr ?? nullptr,
        range?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() =>
      'IUIAutomationActiveTextPositionChangedEventHandler(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationActiveTextPositionChangedEventHandlerVtbl
    extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer sender,
        VTablePointer range,
      )
    >
  >
  HandleActiveTextPositionChangedEvent;
}

@internal
final class IUIAutomationActiveTextPositionChangedEventHandlerCompanion
    extends ComCompanion<IUIAutomationActiveTextPositionChangedEventHandler> {
  const IUIAutomationActiveTextPositionChangedEventHandlerCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationActiveTextPositionChangedEventHandler Function(VTablePointer)
  get fromPointer => IUIAutomationActiveTextPositionChangedEventHandler.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationActiveTextPositionChangedEventHandler;
}
