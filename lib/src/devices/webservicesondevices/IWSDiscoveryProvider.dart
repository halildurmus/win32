// IWSDiscoveryProvider.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../devices/webservicesondevices/IWSDiscoveryProviderNotify.dart';
import '../../devices/webservicesondevices/structs.g.dart';
import '../../devices/webservicesondevices/IWSDXMLContext.dart';

/// @nodoc
const IID_IWSDiscoveryProvider = '{8FFC8E55-F0EB-480F-88B7-B435DD281D45}';

/// {@category Interface}
/// {@category com}
class IWSDiscoveryProvider extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWSDiscoveryProvider(Pointer<COMObject> ptr) : super(ptr);

  int SetAddressFamily(
    int dwAddressFamily,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAddressFamily,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAddressFamily,
          )>()(
        ptr.ref.lpVtbl,
        dwAddressFamily,
      );

  int Attach(
    Pointer<COMObject> pSink,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSink,
          )>()(
        ptr.ref.lpVtbl,
        pSink,
      );

  int Detach() => ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int SearchById(
    Pointer<Utf16> pszId,
    Pointer<Utf16> pszTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszId,
            Pointer<Utf16> pszTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszId,
            Pointer<Utf16> pszTag,
          )>()(
        ptr.ref.lpVtbl,
        pszId,
        pszTag,
      );

  int SearchByAddress(
    Pointer<Utf16> pszAddress,
    Pointer<Utf16> pszTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAddress,
            Pointer<Utf16> pszTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAddress,
            Pointer<Utf16> pszTag,
          )>()(
        ptr.ref.lpVtbl,
        pszAddress,
        pszTag,
      );

  int SearchByType(
    Pointer<WSD_NAME_LIST> pTypesList,
    Pointer<WSD_URI_LIST> pScopesList,
    Pointer<Utf16> pszMatchBy,
    Pointer<Utf16> pszTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<Utf16> pszMatchBy,
            Pointer<Utf16> pszTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WSD_NAME_LIST> pTypesList,
            Pointer<WSD_URI_LIST> pScopesList,
            Pointer<Utf16> pszMatchBy,
            Pointer<Utf16> pszTag,
          )>()(
        ptr.ref.lpVtbl,
        pTypesList,
        pScopesList,
        pszMatchBy,
        pszTag,
      );

  int GetXMLContext(
    Pointer<Pointer<COMObject>> ppContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppContext,
          )>()(
        ptr.ref.lpVtbl,
        ppContext,
      );
}
