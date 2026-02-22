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
import 'irawelementprovidersimple.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationProxyFactory = GUID.fromComponents(
  0x85b94ecd,
  0x849d,
  0x42b6,
  Uint8List.fromList(const [0xb9, 0x4d, 0xd6, 0xdb, 0x23, 0xfd, 0xf5, 0xa4]),
);

/// Exposes properties and methods of an object that creates a Microsoft UI
/// Automation provider for UI elements that do not have native support for UI
/// Automation.
///
/// This interface is implemented by proxies.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nn-uiautomationclient-iuiautomationproxyfactory>.
///
/// {@category com}
class IUIAutomationProxyFactory extends IUnknown implements ComInterface {
  /// Creates a new instance of [IUIAutomationProxyFactory] from a
  /// [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the
  /// [IUIAutomationProxyFactory] interface. The [ptr] must not be [nullptr];
  /// otherwise, an assertion error is thrown.
  IUIAutomationProxyFactory(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationProxyFactoryVtbl>().ref;

  /// Creates a new instance of [IUIAutomationProxyFactory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationProxyFactory] interface.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationProxyFactory.from(IUnknown interface) =>
      interface.queryInterface();

  final IUIAutomationProxyFactoryVtbl _vtable;
  late final _CreateProviderFn =
      _vtable.CreateProvider.asFunction<
        int Function(VTablePointer, Pointer, int, int, Pointer<VTablePointer>)
      >();
  late final _get_ProxyFactoryIdFn = _vtable.get_ProxyFactoryId
      .asFunction<int Function(VTablePointer, Pointer<Pointer<Utf16>>)>();

  /// Creates a proxy object that provides Microsoft UI Automation support for a
  /// UI element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactory-createprovider>.
  IRawElementProviderSimple? createProvider(
    HWND hwnd,
    int idObject,
    int idChild,
  ) {
    final provider = adaptiveCalloc<VTablePointer>();
    final hr$ = HRESULT(
      _CreateProviderFn(ptr, hwnd, idObject, idChild, provider),
    );
    if (hr$.isError) {
      free(provider);
      throw WindowsException(hr$);
    }
    final result$ = provider.value;
    free(provider);
    if (result$.isNull) return null;
    return IRawElementProviderSimple(result$);
  }

  /// Retrieves the identifier of the proxy factory.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactory-get_proxyfactoryid>.
  BSTR get proxyFactoryId {
    final factoryId = adaptiveCalloc<Pointer<Utf16>>();
    final hr$ = HRESULT(_get_ProxyFactoryIdFn(ptr, factoryId));
    if (hr$.isError) {
      free(factoryId);
      throw WindowsException(hr$);
    }
    final result$ = factoryId.value;
    free(factoryId);
    return BSTR(result$);
  }

  @override
  String toString() => 'IUIAutomationProxyFactory(ptr: $ptr)';
}

/// @nodoc
base class IUIAutomationProxyFactoryVtbl extends Struct {
  external IUnknownVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer hwnd,
        Int32 idObject,
        Int32 idChild,
        Pointer<VTablePointer> provider,
      )
    >
  >
  CreateProvider;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Pointer<Utf16>> factoryId)
    >
  >
  get_ProxyFactoryId;
}

@internal
final class IUIAutomationProxyFactoryCompanion
    extends ComCompanion<IUIAutomationProxyFactory> {
  const IUIAutomationProxyFactoryCompanion();

  @pragma('vm:prefer-inline')
  @override
  IUIAutomationProxyFactory Function(VTablePointer) get fromPointer =>
      IUIAutomationProxyFactory.new;

  @pragma('vm:prefer-inline')
  @override
  GUID get iid => IID_IUIAutomationProxyFactory;
}
