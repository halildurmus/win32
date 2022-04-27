// INetworkInformationStatics.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../api-ms-win-core-winrt-string-l1-1-0.dart';
import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../types.dart';
import '../utils.dart';
import '../winrt/winrt_helpers.dart';
import 'IHostName.dart';
import 'IInspectable.dart';
import 'IVectorView`1.dart';

/// @nodoc
const IID_INetworkInformationStatics = '{5074F851-950D-4165-9C15-365619481EEA}';

/// {@category Interface}
/// {@category winrt}
class INetworkInformationStatics extends IInspectable {
  // vtable begins at 6, is 8 entries long.
  INetworkInformationStatics(Pointer<COMObject> ptr) : super(ptr);

  Pointer<COMObject> GetConnectionProfiles() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(6)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject>,
        )>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  Pointer<COMObject> GetInternetConnectionProfile() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(7)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject>,
        )>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  Pointer<COMObject> GetLanIdentifiers() {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(8)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject>,
        )>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  List<IHostName> GetHostNames() {
    final allocator = Arena();
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(9)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject>,
        )>()(
      ptr.ref.lpVtbl,
      retValuePtr,
    );

    if (FAILED(hr)) throw WindowsException(hr);

    try {
      return IVectorView<IHostName>(retValuePtr,
              creator: IHostName.new, allocator: allocator)
          .toList();
    } finally {
      allocator.releaseAll();
    }
  }

  Pointer<COMObject> GetProxyConfigurationAsync(
    Pointer<COMObject> uri,
  ) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(10)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject> uri,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> uri,
          Pointer<COMObject>,
        )>()(
      ptr.ref.lpVtbl,
      uri.cast<Pointer<COMObject>>().value,
      retValuePtr,
    );

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  Pointer<COMObject> GetSortedEndpointPairs(
    Pointer<COMObject> destinationList,
    int sortOptions,
  ) {
    final retValuePtr = calloc<COMObject>();

    final hr = ptr.ref.lpVtbl.value
        .elementAt(11)
        .cast<
            Pointer<
                NativeFunction<
                    HRESULT Function(
          Pointer,
          Pointer<COMObject> destinationList,
          Uint32 sortOptions,
          Pointer<COMObject>,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          Pointer<COMObject> destinationList,
          int sortOptions,
          Pointer<COMObject>,
        )>()(
      ptr.ref.lpVtbl,
      destinationList.cast<Pointer<COMObject>>().value,
      sortOptions,
      retValuePtr,
    );

    if (FAILED(hr)) throw WindowsException(hr);

    return retValuePtr;
  }

  // EventRegistrationToken add_NetworkStatusChanged(
  //   Pointer<NativeFunction<NetworkStatusChangedEventHandler>>
  //       networkStatusHandler,
  // ) {
  //   final retValuePtr = calloc<EventRegistrationToken>();

  //   try {
  //     final hr = ptr.ref.lpVtbl.value
  //         .elementAt(12)
  //         .cast<
  //             Pointer<
  //                 NativeFunction<
  //                     HRESULT Function(
  //           Pointer,
  //           Pointer<NativeFunction<NetworkStatusChangedEventHandler>>
  //               networkStatusHandler,
  //           Pointer<EventRegistrationToken>,
  //         )>>>()
  //         .value
  //         .asFunction<
  //             int Function(
  //           Pointer,
  //           Pointer<NativeFunction<NetworkStatusChangedEventHandler>>
  //               networkStatusHandler,
  //           Pointer<EventRegistrationToken>,
  //         )>()(
  //       ptr.ref.lpVtbl,
  //       networkStatusHandler,
  //       retValuePtr,
  //     );

  //     if (FAILED(hr)) throw WindowsException(hr);

  //     final retValue = retValuePtr.ref;
  //     return retValue;
  //   } finally {
  //     free(retValuePtr);
  //   }
  // }

  // void remove_NetworkStatusChanged(
  //   EventRegistrationToken eventCookie,
  // ) =>
  //     ptr.ref.lpVtbl.value
  //         .elementAt(13)
  //         .cast<
  //             Pointer<
  //                 NativeFunction<
  //                     HRESULT Function(
  //           Pointer,
  //           EventRegistrationToken eventCookie,
  //         )>>>()
  //         .value
  //         .asFunction<
  //             int Function(
  //           Pointer,
  //           EventRegistrationToken eventCookie,
  //         )>()(
  //       ptr.ref.lpVtbl,
  //       eventCookie,
  //     );
}
