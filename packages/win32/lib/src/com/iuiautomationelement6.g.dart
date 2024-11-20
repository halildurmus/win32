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
import 'iuiautomationelement5.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationElement6 = Guid.fromComponents(
  0x4780d450,
  0x8bca,
  0x4977,
  Uint8List.fromList(const [0xaf, 0xa5, 0xa4, 0xa5, 0x17, 0xf5, 0x55, 0xe3]),
);

/// Extends the IUIAutomationElement5 interface to provide access to current and
/// cached full descriptions.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationelement6>.
///
/// {@category com}
class IUIAutomationElement6 extends IUIAutomationElement5
    implements ComInterface {
  /// Creates a new instance of [IUIAutomationElement6] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IUIAutomationElement6]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationElement6(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationElement6Vtbl>().ref;

  /// Creates a new instance of [IUIAutomationElement6] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationElement6] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationElement6.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationElement6Vtbl _vtable;
  late final _get_CurrentFullDescriptionFn = _vtable.get_CurrentFullDescription
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _get_CachedFullDescriptionFn = _vtable.get_CachedFullDescription
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();

  /// Gets the current full description of the automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement6-get_currentfulldescription>.
  BSTR get currentFullDescription {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CurrentFullDescriptionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  /// Gets the cached full description of the automation element.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationelement6-get_cachedfulldescription>.
  BSTR get cachedFullDescription {
    final retVal = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_CachedFullDescriptionFn(ptr, retVal));
    if (hr$.isError) {
      free(retVal);
      throw WindowsException(hr$);
    }
    final result$ = retVal.value;
    free(retVal);
    return result$;
  }

  @override
  String toString() => 'IUIAutomationElement6(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationElement6Vtbl extends Struct {
  external IUIAutomationElement5Vtbl base$;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CurrentFullDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> retVal)>
  >
  get_CachedFullDescription;
}

@internal
final class IUIAutomationElement6Companion
    extends ComCompanion<IUIAutomationElement6> {
  const IUIAutomationElement6Companion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationElement6 Function(VTablePointer) get fromPointer =>
      IUIAutomationElement6.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IUIAutomationElement6;
}
