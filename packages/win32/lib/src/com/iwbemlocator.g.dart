// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// Dart representation of a COM interface.
//
// ignore_for_file: avoid_positional_boolean_parameters
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: specify_nonobvious_property_types, unused_import

import 'dart:ffi';
import 'dart:typed_data';

import 'package:ffi/ffi.dart';
import 'package:ffi_leak_tracker/ffi_leak_tracker.dart';
import 'package:meta/meta.dart';

import '../bstr.dart';
import '../constants.dart';
import '../constants.g.dart';
import '../exception.dart';
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
import '../rpc_status.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';
import 'iwbemcontext.g.dart';
import 'iwbemservices.g.dart';

/// @nodoc
final IID_IWbemLocator = GUID.fromComponents(
  0xdc12a687,
  0x737f,
  0x11cf,
  .fromList(const [0x88, 0x4d, 0x0, 0xaa, 0x0, 0x4b, 0x2e, 0x24]),
);

/// Use the IWbemLocator interface to obtain the initial namespace pointer to
/// the IWbemServices interface for WMI on a specific host computer.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/wbemcli/nn-wbemcli-iwbemlocator>.
///
/// {@category com}
class IWbemLocator extends IUnknown implements ComInterface {
  /// Creates a new instance of [IWbemLocator] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [IWbemLocator] interface.
  /// The [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  IWbemLocator(super.ptr) : _vtable = ptr.value.cast<IWbemLocatorVtbl>().ref;

  /// Creates a new instance of [IWbemLocator] from an existing [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IWbemLocator] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IWbemLocator.from(IUnknown interface) => interface.queryInterface();

  final IWbemLocatorVtbl _vtable;
  late final _ConnectServerFn =
      _vtable.ConnectServer.asFunction<
        int Function(
          VTablePointer,
          Pointer<Utf16>,
          Pointer<Utf16>,
          Pointer<Utf16>,
          Pointer<Utf16>,
          int,
          Pointer<Utf16>,
          VTablePointer,
          Pointer<VTablePointer>,
        )
      >();

  /// Creates a connection through DCOM to a WMI namespace on the computer
  /// specified in the strNetworkResource parameter.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/wbemcli/nf-wbemcli-iwbemlocator-connectserver>.
  IWbemServices? connectServer(
    BSTR strNetworkResource,
    BSTR strUser,
    BSTR strPassword,
    BSTR strLocale,
    int lSecurityFlags,
    BSTR strAuthority,
    IWbemContext? pCtx,
  ) {
    final ppNamespace = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _ConnectServerFn(
        ptr,
        strNetworkResource,
        strUser,
        strPassword,
        strLocale,
        lSecurityFlags,
        strAuthority,
        pCtx?.ptr ?? nullptr,
        ppNamespace,
      ),
    );
    if (hr$.isError) {
      free(ppNamespace);
      throw WindowsException(hr$);
    }
    final result$ = ppNamespace.value;
    free(ppNamespace);
    if (result$.isNull) return null;
    return .new(result$);
  }

  @override
  String toString() => 'IWbemLocator(ptr: $ptr)';
}

/// @nodoc
base class IWbemLocatorVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Utf16> strNetworkResource,
        Pointer<Utf16> strUser,
        Pointer<Utf16> strPassword,
        Pointer<Utf16> strLocale,
        Int32 lSecurityFlags,
        Pointer<Utf16> strAuthority,
        VTablePointer pCtx,
        Pointer<VTablePointer> ppNamespace,
      )
    >
  >
  ConnectServer;
}

@internal
final class IWbemLocatorCompanion extends ComCompanion<IWbemLocator> {
  const IWbemLocatorCompanion();

  @pragma('vm:prefer-inline')
  @override
  IWbemLocator Function(VTablePointer) get fromPointer => IWbemLocator.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IWbemLocator;
}
