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

/// @nodoc
final IID_IWbemObjectSink = Guid.fromComponents(
  0x7c857801,
  0x7381,
  0x11cf,
  Uint8List.fromList(const [0x88, 0x4d, 0x0, 0xaa, 0x0, 0x4b, 0x2e, 0x24]),
);

/// Creates a sink interface that can receive all types of notifications within
/// the WMI programming model.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemobjectsink>.
///
/// {@category com}
class IWbemObjectSink extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemObjectSink] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemObjectSink]
  /// interface. The [ptr] must not be [nullptr]; otherwise, an assertion error
  /// is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IWbemObjectSink(super.ptr)
    : _vtable = ptr.value.cast<IWbemObjectSinkVtbl>().ref;

  /// Creates a new instance of [IWbemObjectSink] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IWbemObjectSink] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemObjectSink.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IWbemObjectSinkVtbl _vtable;
  late final _IndicateFn =
      _vtable.Indicate.asFunction<
        int Function(VTablePointer, int, Pointer<VTablePointer>)
      >();
  late final _SetStatusFn =
      _vtable.SetStatus.asFunction<
        int Function(VTablePointer, int, int, BSTR, VTablePointer)
      >();

  /// Called by a source to provide a notification.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectsink-indicate>.
  @pragma('vm:prefer-inline')
  void indicate(int lObjectCount, Pointer<VTablePointer> apObjArray) {
    final hr$ = HRESULT(_IndicateFn(ptr, lObjectCount, apObjArray));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Called by sources to indicate the end of a notification sequence, or to
  /// send other status codes to the sink.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemobjectsink-setstatus>.
  @pragma('vm:prefer-inline')
  void setStatus(
    int lFlags,
    HRESULT hResult,
    BSTR strParam,
    IWbemClassObject? pObjParam,
  ) {
    final hr$ = HRESULT(
      _SetStatusFn(ptr, lFlags, hResult, strParam, pObjParam?.ptr ?? nullptr),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'IWbemObjectSink(ptr: $ptr)';
}

/// @nodoc
base class IWbemObjectSinkVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lObjectCount,
        Pointer<VTablePointer> apObjArray,
      )
    >
  >
  Indicate;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Int32 lFlags,
        Int32 hResult,
        BSTR strParam,
        VTablePointer pObjParam,
      )
    >
  >
  SetStatus;
}

@internal
final class IWbemObjectSinkCompanion extends ComCompanion<IWbemObjectSink> {
  const IWbemObjectSinkCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemObjectSink Function(VTablePointer) get fromPointer =>
      IWbemObjectSink.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_IWbemObjectSink;
}
