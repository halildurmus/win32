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
import 'iunknown.g.dart';
import 'iwbemclassobject.g.dart';
import 'iwbemservices.g.dart';

/// @nodoc
final IID_IWbemCallResult = Guid.fromComponents(
  0x44aca675,
  0xe8fc,
  0x11d0,
  Uint8List.fromList(const [0xa0, 0x7c, 0x0, 0xc0, 0x4f, 0xb6, 0x88, 0x20]),
);

/// Used for semisynchronous calls of the IWbemServices interface.
///
/// When making such calls, the called IWbemServices method returns immediately,
/// along with an IWbemCallResult object.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemcallresult>.
///
/// {@category com}
class IWbemCallResult extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemCallResult] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemCallResult]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemCallResult(super.ptr)
    : _vtable = ptr.value.cast<IWbemCallResultVtbl>().ref;

  /// Creates a new instance of [IWbemCallResult] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemCallResult] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemCallResult.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemCallResultVtbl _vtable;
  late final _GetResultObjectFn =
      _vtable.GetResultObject.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetResultStringFn =
      _vtable.GetResultString.asFunction<
        int Function(VTablePointer, int, Pointer<BSTR>)
      >();
  late final _GetResultServicesFn =
      _vtable.GetResultServices.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _GetCallStatusFn =
      _vtable.GetCallStatus.asFunction<
        int Function(VTablePointer, int, Pointer<Int32>)
      >();

  /// Attempts to retrieve an object from a previous semisynchronous call to
  /// `IWbemServices.getObject` or `IWbemServices.execMethod`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcallresult-getresultobject>.
  IWbemClassObject? getResultObject(int lTimeout) {
    final ppResultObject = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetResultObjectFn(ptr, lTimeout, ppResultObject));
    if (hr$.isError) {
      free(ppResultObject);
      throw WindowsException(hr$);
    }
    final result$ = ppResultObject.value;
    free(ppResultObject);
    if (result$.isNull) return null;
    return IWbemClassObject(result$);
  }

  /// Returns the assigned object path of an instance newly created by
  /// `IWbemServices.putInstance`.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcallresult-getresultstring>.
  BSTR getResultString(int lTimeout) {
    final pstrResultString = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetResultStringFn(ptr, lTimeout, pstrResultString));
    if (hr$.isError) {
      free(pstrResultString);
      throw WindowsException(hr$);
    }
    final result$ = pstrResultString.value;
    free(pstrResultString);
    return result$;
  }

  /// Retrieves the IWbemServices pointer, which results from a semisynchronous
  /// call to `IWbemServices.openNamespace` when it becomes available.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcallresult-getresultservices>.
  IWbemServices? getResultServices(int lTimeout) {
    final ppServices = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetResultServicesFn(ptr, lTimeout, ppServices));
    if (hr$.isError) {
      free(ppServices);
      throw WindowsException(hr$);
    }
    final result$ = ppServices.value;
    free(ppServices);
    if (result$.isNull) return null;
    return IWbemServices(result$);
  }

  /// Returns to the user the status of the current outstanding semisynchronous
  /// call.
  ///
  /// When this call returns WBEM_S_NO_ERROR, the original call to the
  /// IWbemServices method is complete.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemcallresult-getcallstatus>.
  int getCallStatus(int lTimeout) {
    final plStatus = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetCallStatusFn(ptr, lTimeout, plStatus));
    if (hr$.isError) {
      free(plStatus);
      throw WindowsException(hr$);
    }
    final result$ = plStatus.value;
    free(plStatus);
    return result$;
  }

  @override
  String toString() => 'IWbemCallResult(ptr: $ptr)';
}

/// @nodoc
base class IWbemCallResultVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lTimeout,
        Pointer<VTablePointer> ppResultObject,
      )
    >
  >
  GetResultObject;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lTimeout,
        Pointer<BSTR> pstrResultString,
      )
    >
  >
  GetResultString;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lTimeout,
        Pointer<VTablePointer> ppServices,
      )
    >
  >
  GetResultServices;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lTimeout,
        Pointer<Int32> plStatus,
      )
    >
  >
  GetCallStatus;
}

@internal
final class IWbemCallResultCompanion extends ComCompanion<IWbemCallResult> {
  const IWbemCallResultCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemCallResult Function(VTablePointer) get fromPointer =>
      IWbemCallResult.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemCallResult;
}
