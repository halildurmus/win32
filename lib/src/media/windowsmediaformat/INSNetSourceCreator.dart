// INSNetSourceCreator.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_INSNetSourceCreator = '{0C0E4080-9081-11D2-BEEC-0060082F2054}';

/// {@category Interface}
/// {@category com}
class INSNetSourceCreator extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  INSNetSourceCreator(Pointer<COMObject> ptr) : super(ptr);

  int Initialize() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int CreateNetSource(
    Pointer<Utf16> pszStreamName,
    Pointer<COMObject> pMonitor,
    Pointer<Uint8> pData,
    Pointer<COMObject> pUserContext,
    Pointer<COMObject> pCallback,
    int qwContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStreamName,
            Pointer<COMObject> pMonitor,
            Pointer<Uint8> pData,
            Pointer<COMObject> pUserContext,
            Pointer<COMObject> pCallback,
            Uint64 qwContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStreamName,
            Pointer<COMObject> pMonitor,
            Pointer<Uint8> pData,
            Pointer<COMObject> pUserContext,
            Pointer<COMObject> pCallback,
            int qwContext,
          )>()(
        ptr.ref.lpVtbl,
        pszStreamName,
        pMonitor,
        pData,
        pUserContext,
        pCallback,
        qwContext,
      );

  int GetNetSourceProperties(
    Pointer<Utf16> pszStreamName,
    Pointer<Pointer<COMObject>> ppPropertiesNode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStreamName,
            Pointer<Pointer<COMObject>> ppPropertiesNode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStreamName,
            Pointer<Pointer<COMObject>> ppPropertiesNode,
          )>()(
        ptr.ref.lpVtbl,
        pszStreamName,
        ppPropertiesNode,
      );

  int GetNetSourceSharedNamespace(
    Pointer<Pointer<COMObject>> ppSharedNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSharedNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppSharedNamespace,
          )>()(
        ptr.ref.lpVtbl,
        ppSharedNamespace,
      );

  int GetNetSourceAdminInterface(
    Pointer<Utf16> pszStreamName,
    Pointer<VARIANT> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStreamName,
            Pointer<VARIANT> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStreamName,
            Pointer<VARIANT> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pszStreamName,
        pVal,
      );

  int GetNumProtocolsSupported(
    Pointer<Uint32> pcProtocols,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcProtocols,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcProtocols,
          )>()(
        ptr.ref.lpVtbl,
        pcProtocols,
      );

  int GetProtocolName(
    int dwProtocolNum,
    Pointer<Utf16> pwszProtocolName,
    Pointer<Uint16> pcchProtocolName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProtocolNum,
            Pointer<Utf16> pwszProtocolName,
            Pointer<Uint16> pcchProtocolName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProtocolNum,
            Pointer<Utf16> pwszProtocolName,
            Pointer<Uint16> pcchProtocolName,
          )>()(
        ptr.ref.lpVtbl,
        dwProtocolNum,
        pwszProtocolName,
        pcchProtocolName,
      );

  int Shutdown() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
}
