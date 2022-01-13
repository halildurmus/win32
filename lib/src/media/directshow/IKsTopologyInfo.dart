// IKsTopologyInfo.dart

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
import '../../media/kernelstreaming/structs.g.dart';

/// @nodoc
const IID_IKsTopologyInfo = '{720D4AC0-7533-11D0-A5D6-28DB04C10000}';

/// {@category Interface}
/// {@category com}
class IKsTopologyInfo extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IKsTopologyInfo(Pointer<COMObject> ptr) : super(ptr);

  int get NumCategories {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumCategories,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumCategories,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Category(
    int dwIndex,
    Pointer<GUID> pCategory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<GUID> pCategory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<GUID> pCategory,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pCategory,
      );

  int get NumConnections {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumConnections,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumConnections,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_ConnectionInfo(
    int dwIndex,
    Pointer<KSTOPOLOGY_CONNECTION> pConnectionInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<KSTOPOLOGY_CONNECTION> pConnectionInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<KSTOPOLOGY_CONNECTION> pConnectionInfo,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pConnectionInfo,
      );

  int get_NodeName(
    int dwNodeId,
    Pointer<Utf16> pwchNodeName,
    int dwBufSize,
    Pointer<Uint32> pdwNameLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNodeId,
            Pointer<Utf16> pwchNodeName,
            Uint32 dwBufSize,
            Pointer<Uint32> pdwNameLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNodeId,
            Pointer<Utf16> pwchNodeName,
            int dwBufSize,
            Pointer<Uint32> pdwNameLen,
          )>()(
        ptr.ref.lpVtbl,
        dwNodeId,
        pwchNodeName,
        dwBufSize,
        pdwNameLen,
      );

  int get NumNodes {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumNodes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumNodes,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_NodeType(
    int dwNodeId,
    Pointer<GUID> pNodeType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNodeId,
            Pointer<GUID> pNodeType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNodeId,
            Pointer<GUID> pNodeType,
          )>()(
        ptr.ref.lpVtbl,
        dwNodeId,
        pNodeType,
      );

  int CreateNodeInstance(
    int dwNodeId,
    Pointer<GUID> iid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNodeId,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNodeId,
            Pointer<GUID> iid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        dwNodeId,
        iid,
        ppvObject,
      );
}
