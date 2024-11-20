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
import 'iuiautomation2.g.dart';
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationelement.g.dart';
import 'iuiautomationtextedittextchangedeventhandler.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomation3 = Guid.fromComponents(
  0x73d768da,
  0x9b51,
  0x4b89,
  Uint8List.fromList(const [0x93, 0x6e, 0xc2, 0x9, 0x29, 0x9, 0x73, 0xe7]),
);

/// Extends the IUIAutomation2 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation3>.
///
/// {@category com}
class IUIAutomation3 extends IUIAutomation2 implements ComInterface {
  /// Creates a new instance of [IUIAutomation3] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomation3]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomation3(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomation3Vtbl>().ref;

  /// Creates a new instance of [IUIAutomation3] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomation3] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomation3.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomation3Vtbl _vtable;
  late final _AddTextEditTextChangedEventHandlerFn =
      _vtable.AddTextEditTextChangedEventHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _RemoveTextEditTextChangedEventHandlerFn =
      _vtable.RemoveTextEditTextChangedEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();

  /// Registers a method that handles programmatic text-edit events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar
  /// with the threading issues described in Understanding Threading Issues.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation3-addtextedittextchangedeventhandler>.
  @pragma('vm:prefer-inline')
  void addTextEditTextChangedEventHandler(
    IUIAutomationElement? element,
    TreeScope scope,
    TextEditChangeType textEditChangeType,
    IUIAutomationCacheRequest? cacheRequest,
    IUIAutomationTextEditTextChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddTextEditTextChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        textEditChangeType,
        cacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a programmatic text-edit event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation3-removetextedittextchangedeventhandler>.
  @pragma('vm:prefer-inline')
  void removeTextEditTextChangedEventHandler(
    IUIAutomationElement? element,
    IUIAutomationTextEditTextChangedEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveTextEditTextChangedEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomation3(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomation3Vtbl extends Struct {
  external IUIAutomation2Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Int32 scope,
        Int32 textEditChangeType,
        VTablePointer cacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddTextEditTextChangedEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemoveTextEditTextChangedEventHandler;
}

@internal
final class IUIAutomation3Companion extends ComCompanion<IUIAutomation3> {
  const IUIAutomation3Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomation3 Function(VTablePointer) get fromPointer => IUIAutomation3.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomation3;
}
