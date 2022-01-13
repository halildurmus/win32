// IBindStatusCallback.dart

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
import '../../system/com/IBinding.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IBindStatusCallback = '{79EAC9C1-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IBindStatusCallback extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IBindStatusCallback(Pointer<COMObject> ptr) : super(ptr);

  int OnStartBinding(
    int dwReserved,
    Pointer<COMObject> pib,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
            Pointer<COMObject> pib,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
            Pointer<COMObject> pib,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
        pib,
      );

  int GetPriority(
    Pointer<Int32> pnPriority,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pnPriority,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pnPriority,
          )>()(
        ptr.ref.lpVtbl,
        pnPriority,
      );

  int OnLowResource(
    int reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reserved,
          )>()(
        ptr.ref.lpVtbl,
        reserved,
      );

  int OnProgress(
    int ulProgress,
    int ulProgressMax,
    int ulStatusCode,
    Pointer<Utf16> szStatusText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulProgress,
            Uint32 ulProgressMax,
            Uint32 ulStatusCode,
            Pointer<Utf16> szStatusText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulProgress,
            int ulProgressMax,
            int ulStatusCode,
            Pointer<Utf16> szStatusText,
          )>()(
        ptr.ref.lpVtbl,
        ulProgress,
        ulProgressMax,
        ulStatusCode,
        szStatusText,
      );

  int OnStopBinding(
    int hresult,
    Pointer<Utf16> szError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hresult,
            Pointer<Utf16> szError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hresult,
            Pointer<Utf16> szError,
          )>()(
        ptr.ref.lpVtbl,
        hresult,
        szError,
      );

  int GetBindInfo(
    Pointer<Uint32> grfBINDF,
    Pointer<BINDINFO> pbindinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> grfBINDF,
            Pointer<BINDINFO> pbindinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> grfBINDF,
            Pointer<BINDINFO> pbindinfo,
          )>()(
        ptr.ref.lpVtbl,
        grfBINDF,
        pbindinfo,
      );

  int OnDataAvailable(
    int grfBSCF,
    int dwSize,
    Pointer<FORMATETC> pformatetc,
    Pointer<STGMEDIUM> pstgmed,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfBSCF,
            Uint32 dwSize,
            Pointer<FORMATETC> pformatetc,
            Pointer<STGMEDIUM> pstgmed,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfBSCF,
            int dwSize,
            Pointer<FORMATETC> pformatetc,
            Pointer<STGMEDIUM> pstgmed,
          )>()(
        ptr.ref.lpVtbl,
        grfBSCF,
        dwSize,
        pformatetc,
        pstgmed,
      );

  int OnObjectAvailable(
    Pointer<GUID> riid,
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> riid,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        riid,
        punk,
      );
}
