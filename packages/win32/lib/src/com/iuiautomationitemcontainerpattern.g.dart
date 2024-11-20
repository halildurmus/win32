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
final IID_IUIAutomationItemContainerPattern = Guid.fromComponents(
  0xc690fdb2,
  0x27a8,
  0x423c,
  Uint8List.fromList(const [0x81, 0x2d, 0x42, 0x97, 0x73, 0xc9, 0x8, 0x4e]),
);

/// Exposes a method that retrieves an item from a container, such as a virtual
/// list.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationitemcontainerpattern>.
///
/// {@category com}
class IUIAutomationItemContainerPattern extends IUnknown
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationItemContainerPattern] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationItemContainerPattern] interface. The [ptr] must not be
  /// [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationItemContainerPattern(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationItemContainerPatternVtbl>().ref;

  /// Creates a new instance of [IUIAutomationItemContainerPattern] from an
  /// existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationItemContainerPattern] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationItemContainerPattern.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationItemContainerPatternVtbl _vtable;
  late final _FindItemByPropertyFn =
      _vtable.FindItemByProperty.asFunction<
        int Function(
          VTablePointer,
          VTablePointer,
          int,
          VARIANT,
          Pointer<VTablePointer>,
        )
      >();

  /// Retrieves an element within a containing element, based on a specified
  /// property value.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationitemcontainerpattern-finditembyproperty>.
  IUIAutomationElement? findItemByProperty(
    IUIAutomationElement? pStartAfter,
    UIA_PROPERTY_ID propertyId,
    VARIANT value,
  ) {
    final pFound = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _FindItemByPropertyFn(
        ptr,
        pStartAfter?.ptr ?? nullptr,
        propertyId,
        value,
        pFound,
      ),
    );
    if (hr$.isError) {
      free(pFound);
      throw WindowsException(hr$);
    }
    final result$ = pFound.value;
    free(pFound);
    if (result$.isNull) return null;
    return IUIAutomationElement(result$);
  }

  @override
  String toString() => 'IUIAutomationItemContainerPattern(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationItemContainerPatternVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        VTablePointer pStartAfter,
        Int32 propertyId,
        VARIANT value,
        Pointer<VTablePointer> pFound,
      )
    >
  >
  FindItemByProperty;
}

@internal
final class IUIAutomationItemContainerPatternCompanion
    extends ComCompanion<IUIAutomationItemContainerPattern> {
  const IUIAutomationItemContainerPatternCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationItemContainerPattern Function(VTablePointer) get fromPointer =>
      IUIAutomationItemContainerPattern.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationItemContainerPattern;
}
