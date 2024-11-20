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
import 'irawelementprovidersimple.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_IUIAutomationProxyFactory = Guid.fromComponents(
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
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  IUIAutomationProxyFactory(super.ptr)
    : _vtable = ptr.value.cast<IUIAutomationProxyFactoryVtbl>().ref;

  /// Creates a new instance of [IUIAutomationProxyFactory] from an existing
  /// [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [IUIAutomationProxyFactory] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory IUIAutomationProxyFactory.from(
    IUnknown interface, {
    bool releaseOriginal = false,
  }) => interface.cast(releaseOriginal: releaseOriginal);

  final IUIAutomationProxyFactoryVtbl _vtable;
  late final _CreateProviderFn =
      _vtable.CreateProvider.asFunction<
        int Function(VTablePointer, int, int, int, Pointer<VTablePointer>)
      >();
  late final _get_ProxyFactoryIdFn = _vtable.get_ProxyFactoryId
      .asFunction<int Function(VTablePointer, Pointer<BSTR>)>();

  /// Creates a proxy object that provides Microsoft UI Automation support for a
  /// UI element.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/uiautomationclient/nf-uiautomationclient-iuiautomationproxyfactory-createprovider>.
  IRawElementProviderSimple? createProvider(
    int hwnd,
    int idObject,
    int idChild,
  ) {
    final provider = loggingCalloc<VTablePointer>();
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
    final factoryId = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_get_ProxyFactoryIdFn(ptr, factoryId));
    if (hr$.isError) {
      free(factoryId);
      throw WindowsException(hr$);
    }
    final result$ = factoryId.value;
    free(factoryId);
    return result$;
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
        HWND hwnd,
        Int32 idObject,
        Int32 idChild,
        Pointer<VTablePointer> provider,
      )
    >
  >
  CreateProvider;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Pointer<BSTR> factoryId)>
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
  Guid get iid => IID_IUIAutomationProxyFactory;
}
