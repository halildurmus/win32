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
import 'iuiautomationcondition.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationOrCondition = Guid.fromComponents(
  0x8753f032,
  0x3db1,
  0x47b5,
  Uint8List.fromList(const [0xa1, 0xfc, 0x6e, 0x34, 0xa2, 0x66, 0xc7, 0x12]),
);

/// Represents a condition made up of multiple conditions, at least one of which
/// must be true.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationorcondition>.
///
/// {@category com}
class IUIAutomationOrCondition extends IUIAutomationCondition
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationOrCondition] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationOrCondition] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationOrCondition(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationOrConditionVtbl>().ref;

  /// Creates a new instance of [IUIAutomationOrCondition] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationOrCondition] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationOrCondition.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationOrConditionVtbl _vtable;
  late final _get_ChildCountFn = _vtable.get_ChildCount
      .asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetChildrenAsNativeArrayFn =
      _vtable.GetChildrenAsNativeArray.asFunction<
        int Function(
          VTablePointer,
          Pointer<Pointer<VTablePointer>>,
          Pointer<Int32>,
        )
      >();
  late final _GetChildrenFn =
      _vtable.GetChildren.asFunction<
        int Function(VTablePointer, Pointer<Pointer<SAFEARRAY>>)
      >();

  /// Retrieves the number of conditions that make up this `or` condition.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationorcondition-get_childcount>.
  int get childCount {
    final childCount = loggingCalloc<Int32>();
    final hr$ = HRESULT(_get_ChildCountFn(ptr, childCount));
    if (hr$.isError) {
      free(childCount);
      throw WindowsException(hr$);
    }
    final result$ = childCount.value;
    free(childCount);
    return result$;
  }

  /// Retrieves the conditions that make up this `or` condition, as an ordinary
  /// array.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationorcondition-getchildrenasnativearray>.
  @pragma('vm:prefer-inline')
  void getChildrenAsNativeArray(
    Pointer<Pointer<VTablePointer>> childArray,
    Pointer<Int32> childArrayCount,
  ) {
    final hr$ = HRESULT(
      _GetChildrenAsNativeArrayFn(ptr, childArray, childArrayCount),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Retrieves the conditions that make up this `or` condition.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationorcondition-getchildren>.
  Pointer<SAFEARRAY> getChildren() {
    final childArray = loggingCalloc<Pointer<SAFEARRAY>>();
    final hr$ = HRESULT(_GetChildrenFn(ptr, childArray));
    if (hr$.isError) {
      free(childArray);
      throw WindowsException(hr$);
    }
    final result$ = childArray.value;
    free(childArray);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationOrCondition(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationOrConditionVtbl extends Struct {
  external IUIAutomationConditionVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> childCount)
    >
  >
  get_ChildCount;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<VTablePointer>> childArray,
        Pointer<Int32> childArrayCount,
      )
    >
  >
  GetChildrenAsNativeArray;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Pointer<SAFEARRAY>> childArray,
      )
    >
  >
  GetChildren;
}

@internal
final class IUIAutomationOrConditionCompanion
    extends ComCompanion<IUIAutomationOrCondition> {
  const IUIAutomationOrConditionCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationOrCondition Function(VTablePointer) get fromPointer =>
      IUIAutomationOrCondition.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationOrCondition;
}
