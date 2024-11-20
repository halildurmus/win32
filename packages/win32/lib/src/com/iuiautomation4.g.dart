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
import 'iuiautomation3.g.dart';
import 'iuiautomationcacherequest.g.dart';
import 'iuiautomationchangeseventhandler.g.dart';
import 'iuiautomationelement.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomation4 = Guid.fromComponents(
  0x1189c02a,
  0x5f8,
  0x4319,
  Uint8List.fromList(const [0x8e, 0x21, 0xe8, 0x17, 0xe3, 0xdb, 0x28, 0x60]),
);

/// Extends the IUIAutomation3 interface to expose additional methods for
/// controlling Microsoft UI Automation functionality.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomation4>.
///
/// {@category com}
class IUIAutomation4 extends IUIAutomation3 implements ComInterface {
  /// Creates a new instance of [IUIAutomation4] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomation4]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomation4(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomation4Vtbl>().ref;

  /// Creates a new instance of [IUIAutomation4] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomation4] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomation4.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomation4Vtbl _vtable;
  late final _AddChangesEventHandlerFn =
      _vtable.AddChangesEventHandler.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          Pointer<Int32>,
          int,
          VTablePointer,
          VTablePointer,
        )
      >();
  late final _RemoveChangesEventHandlerFn =
      _vtable.RemoveChangesEventHandler.asFunction<
        int Function(VTablePointer, VTablePointer, VTablePointer)
      >();

  /// Registers a method that handles change events.
  ///
  /// **Note:** Before implementing an event handler, you should be familiar
  /// with the threading issues described in Understanding Threading Issues.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation4-addchangeseventhandler>.
  @pragma('vm:prefer-inline')
  void addChangesEventHandler(
    IUIAutomationElement? element,
    TreeScope scope,
    Pointer<Int32> changeTypes,
    int changesCount,
    IUIAutomationCacheRequest? pCacheRequest,
    IUIAutomationChangesEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _AddChangesEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        scope,
        changeTypes,
        changesCount,
        pCacheRequest?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Removes a changes event handler.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomation4-removechangeseventhandler>.
  @pragma('vm:prefer-inline')
  void removeChangesEventHandler(
    IUIAutomationElement? element,
    IUIAutomationChangesEventHandler? handler,
  ) {
    final hr$ = HRESULT(
      _RemoveChangesEventHandlerFn(
        ptr,
        element?.ptr ?? nullptr,
        handler?.ptr ?? nullptr,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IUIAutomation4(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomation4Vtbl extends Struct {
  external IUIAutomation3Vtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        Int32 scope,
        Pointer<Int32> changeTypes,
        Int32 changesCount,
        VTablePointer pCacheRequest,
        VTablePointer handler,
      )
    >
  >
  AddChangesEventHandler;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer element,
        VTablePointer handler,
      )
    >
  >
  RemoveChangesEventHandler;
}

@internal
final class IUIAutomation4Companion extends ComCompanion<IUIAutomation4> {
  const IUIAutomation4Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomation4 Function(VTablePointer) get fromPointer => IUIAutomation4.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomation4;
}
