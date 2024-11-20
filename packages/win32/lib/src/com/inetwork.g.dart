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
import 'idispatch.g.dart';
import 'ienumnetworkconnections.g.dart';
import 'interface.g.dart';
import 'iunknown.g.dart';

/// @nodoc
final IID_INetwork = Guid.fromComponents(
  0xdcb00002,
  0x570f,
  0x4a9b,
  Uint8List.fromList(const [0x8d, 0x69, 0x19, 0x9f, 0xdb, 0xa5, 0x72, 0x3b]),
);

/// Represents a network on the local machine.
///
/// It can also represent a collection of network connections with a similar
/// network signature.
///
/// To learn more, see
/// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nn-netlistmgr-inetwork>.
///
/// {@category com}
class INetwork extends IDispatch implements ComInterface {
  /// Creates a new instance of [INetwork] from a [VTablePointer].
  ///
  /// This constructor requires a valid pointer to the [INetwork] interface. The
  /// [ptr] must not be [nullptr]; otherwise, an assertion error is thrown.
  ///
  /// A [NativeFinalizer] is attached to the object to ensure that the [release]
  /// method is automatically called when the object is GCed, preventing memory
  /// leaks.
  INetwork(super.ptr) : _vtable = ptr.value.cast<INetworkVtbl>().ref;

  /// Creates a new instance of [INetwork] from an existing [interface].
  ///
  /// This factory constructor calls the [cast] method on the provided
  /// [interface], which internally uses the [queryInterface] method to obtain a
  /// reference to the [INetwork] interface.
  ///
  /// If [releaseOriginal] is set to `true`, the existing [interface] is
  /// _released_ by calling the [release] method before returning the new
  /// instance.
  ///
  /// Throws a [WindowsException] if the [queryInterface] call fails.
  @pragma('vm:prefer-inline')
  factory INetwork.from(IUnknown interface, {bool releaseOriginal = false}) =>
      interface.cast(releaseOriginal: releaseOriginal);

  final INetworkVtbl _vtable;
  late final _GetNameFn =
      _vtable.GetName.asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _SetNameFn =
      _vtable.SetName.asFunction<int Function(VTablePointer, BSTR)>();
  late final _GetDescriptionFn = _vtable
      .GetDescription.asFunction<int Function(VTablePointer, Pointer<BSTR>)>();
  late final _SetDescriptionFn =
      _vtable.SetDescription.asFunction<int Function(VTablePointer, BSTR)>();
  late final _GetNetworkIdFn = _vtable
      .GetNetworkId.asFunction<int Function(VTablePointer, Pointer<GUID>)>();
  late final _GetDomainTypeFn = _vtable
      .GetDomainType.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _GetNetworkConnectionsFn =
      _vtable.GetNetworkConnections.asFunction<
        int Function(VTablePointer, Pointer<VTablePointer>)
      >();
  late final _GetTimeCreatedAndConnectedFn =
      _vtable.GetTimeCreatedAndConnected.asFunction<
        int Function(
          VTablePointer,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
          Pointer<Uint32>,
        )
      >();
  late final _get_IsConnectedToInternetFn = _vtable.get_IsConnectedToInternet
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _get_IsConnectedFn = _vtable.get_IsConnected
      .asFunction<int Function(VTablePointer, Pointer<VARIANT_BOOL>)>();
  late final _GetConnectivityFn =
      _vtable.GetConnectivity.asFunction<
        int Function(VTablePointer, Pointer<Int32>)
      >();
  late final _GetCategoryFn = _vtable
      .GetCategory.asFunction<int Function(VTablePointer, Pointer<Int32>)>();
  late final _SetCategoryFn =
      _vtable.SetCategory.asFunction<int Function(VTablePointer, int)>();

  /// Returns the name of a network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getname>.
  BSTR getName() {
    final pszNetworkName = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetNameFn(ptr, pszNetworkName));
    if (hr$.isError) {
      free(pszNetworkName);
      throw WindowsException(hr$);
    }
    final result$ = pszNetworkName.value;
    free(pszNetworkName);
    return result$;
  }

  /// Sets or renames a network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-setname>.
  @pragma('vm:prefer-inline')
  void setName(BSTR szNetworkNewName) {
    final hr$ = HRESULT(_SetNameFn(ptr, szNetworkNewName));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns a description string for the network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getdescription>.
  BSTR getDescription() {
    final pszDescription = loggingCalloc<BSTR>();
    final hr$ = HRESULT(_GetDescriptionFn(ptr, pszDescription));
    if (hr$.isError) {
      free(pszDescription);
      throw WindowsException(hr$);
    }
    final result$ = pszDescription.value;
    free(pszDescription);
    return result$;
  }

  /// Sets or replaces the description for a network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-setdescription>.
  @pragma('vm:prefer-inline')
  void setDescription(BSTR szDescription) {
    final hr$ = HRESULT(_SetDescriptionFn(ptr, szDescription));
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Returns the unique identifier of a network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getnetworkid>.
  Pointer<GUID> getNetworkId() {
    final pgdGuidNetworkId = loggingCalloc<GUID>();
    final hr$ = HRESULT(_GetNetworkIdFn(ptr, pgdGuidNetworkId));
    if (hr$.isError) {
      free(pgdGuidNetworkId);
      throw WindowsException(hr$);
    }
    return pgdGuidNetworkId;
  }

  /// Returns the domain type of a network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getdomaintype>.
  NLM_DOMAIN_TYPE getDomainType() {
    final pNetworkType = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetDomainTypeFn(ptr, pNetworkType));
    if (hr$.isError) {
      free(pNetworkType);
      throw WindowsException(hr$);
    }
    final result$ = pNetworkType.value;
    free(pNetworkType);
    return NLM_DOMAIN_TYPE(result$);
  }

  /// Returns an enumeration of all network connections for a network.
  ///
  /// A network can have multiple connections to it from different interfaces or
  /// different links from the same interface.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getnetworkconnections>.
  IEnumNetworkConnections? getNetworkConnections() {
    final ppEnumNetworkConnection = loggingCalloc<VTablePointer>();
    final hr$ = HRESULT(_GetNetworkConnectionsFn(ptr, ppEnumNetworkConnection));
    if (hr$.isError) {
      free(ppEnumNetworkConnection);
      throw WindowsException(hr$);
    }
    final result$ = ppEnumNetworkConnection.value;
    free(ppEnumNetworkConnection);
    if (result$.isNull) return null;
    return IEnumNetworkConnections(result$);
  }

  /// Returns the local date and time when the network was created and
  /// connected.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-gettimecreatedandconnected>.
  @pragma('vm:prefer-inline')
  void getTimeCreatedAndConnected(
    Pointer<Uint32> pdwLowDateTimeCreated,
    Pointer<Uint32> pdwHighDateTimeCreated,
    Pointer<Uint32> pdwLowDateTimeConnected,
    Pointer<Uint32> pdwHighDateTimeConnected,
  ) {
    final hr$ = HRESULT(
      _GetTimeCreatedAndConnectedFn(
        ptr,
        pdwLowDateTimeCreated,
        pdwHighDateTimeCreated,
        pdwLowDateTimeConnected,
        pdwHighDateTimeConnected,
      ),
    );
    if (hr$.isError) throw WindowsException(hr$);
  }

  /// Specifies if the network has internet connectivity.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-get_isconnectedtointernet>.
  bool get isConnectedToInternet {
    final pbIsConnected = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_get_IsConnectedToInternetFn(ptr, pbIsConnected));
    if (hr$.isError) {
      free(pbIsConnected);
      throw WindowsException(hr$);
    }
    final result$ = pbIsConnected.value;
    free(pbIsConnected);
    return result$ != FALSE;
  }

  /// Specifies if the network has any network connectivity.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-get_isconnected>.
  bool get isConnected {
    final pbIsConnected = loggingCalloc<VARIANT_BOOL>();
    final hr$ = HRESULT(_get_IsConnectedFn(ptr, pbIsConnected));
    if (hr$.isError) {
      free(pbIsConnected);
      throw WindowsException(hr$);
    }
    final result$ = pbIsConnected.value;
    free(pbIsConnected);
    return result$ != FALSE;
  }

  /// Returns the connectivity state of the network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getconnectivity>.
  NLM_CONNECTIVITY getConnectivity() {
    final pConnectivity = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetConnectivityFn(ptr, pConnectivity));
    if (hr$.isError) {
      free(pConnectivity);
      throw WindowsException(hr$);
    }
    final result$ = pConnectivity.value;
    free(pConnectivity);
    return NLM_CONNECTIVITY(result$);
  }

  /// Returns the category of a network.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-getcategory>.
  NLM_NETWORK_CATEGORY getCategory() {
    final pCategory = loggingCalloc<Int32>();
    final hr$ = HRESULT(_GetCategoryFn(ptr, pCategory));
    if (hr$.isError) {
      free(pCategory);
      throw WindowsException(hr$);
    }
    final result$ = pCategory.value;
    free(pCategory);
    return NLM_NETWORK_CATEGORY(result$);
  }

  /// Sets the category of a network.
  ///
  /// Changes made take effect immediately. Callers of this API must be members
  /// of the Administrators group.
  ///
  /// Throws a [WindowsException] on failure.
  ///
  /// To learn more, see
  /// <https://learn.microsoft.com/windows/win32/api/netlistmgr/nf-netlistmgr-inetwork-setcategory>.
  @pragma('vm:prefer-inline')
  void setCategory(NLM_NETWORK_CATEGORY newCategory) {
    final hr$ = HRESULT(_SetCategoryFn(ptr, newCategory));
    if (hr$.isError) throw WindowsException(hr$);
  }

  @override
  String toString() => 'INetwork(ptr: $ptr)';
}

/// @nodoc
base class INetworkVtbl extends Struct {
  external IDispatchVtbl base$;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszNetworkName)
    >
  >
  GetName;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR szNetworkNewName)>
  >
  SetName;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<BSTR> pszDescription)
    >
  >
  GetDescription;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, BSTR szDescription)>
  >
  SetDescription;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<GUID> pgdGuidNetworkId)
    >
  >
  GetNetworkId;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pNetworkType)
    >
  >
  GetDomainType;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<VTablePointer> ppEnumNetworkConnection,
      )
    >
  >
  GetNetworkConnections;
  external Pointer<
    NativeFunction<
      Int32 Function(
        VTablePointer this$,
        Pointer<Uint32> pdwLowDateTimeCreated,
        Pointer<Uint32> pdwHighDateTimeCreated,
        Pointer<Uint32> pdwLowDateTimeConnected,
        Pointer<Uint32> pdwHighDateTimeConnected,
      )
    >
  >
  GetTimeCreatedAndConnected;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT_BOOL> pbIsConnected)
    >
  >
  get_IsConnectedToInternet;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<VARIANT_BOOL> pbIsConnected)
    >
  >
  get_IsConnected;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pConnectivity)
    >
  >
  GetConnectivity;
  external Pointer<
    NativeFunction<
      Int32 Function(VTablePointer this$, Pointer<Int32> pCategory)
    >
  >
  GetCategory;
  external Pointer<
    NativeFunction<Int32 Function(VTablePointer this$, Int32 newCategory)>
  >
  SetCategory;
}

@internal
final class INetworkCompanion extends ComCompanion<INetwork> {
  const INetworkCompanion();

  @pragma('vm:prefer-inline')
  @override
  INetwork Function(VTablePointer) get fromPointer => INetwork.new;

  @pragma('vm:prefer-inline')
  @override
  Guid get iid => IID_INetwork;
}
