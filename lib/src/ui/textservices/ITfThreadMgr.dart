// ITfThreadMgr.dart

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
import '../../ui/textservices/ITfDocumentMgr.dart';
import '../../ui/textservices/IEnumTfDocumentMgrs.dart';
import '../../ui/textservices/ITfFunctionProvider.dart';
import '../../ui/textservices/IEnumTfFunctionProviders.dart';
import '../../ui/textservices/ITfCompartmentMgr.dart';

/// @nodoc
const IID_ITfThreadMgr = '{AA80E801-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfThreadMgr extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  ITfThreadMgr(Pointer<COMObject> ptr) : super(ptr);

  int Activate(
    Pointer<Uint32> ptid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> ptid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> ptid,
          )>()(
        ptr.ref.lpVtbl,
        ptid,
      );

  int Deactivate() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int CreateDocumentMgr(
    Pointer<Pointer<COMObject>> ppdim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdim,
          )>()(
        ptr.ref.lpVtbl,
        ppdim,
      );

  int EnumDocumentMgrs(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetFocus(
    Pointer<Pointer<COMObject>> ppdimFocus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdimFocus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdimFocus,
          )>()(
        ptr.ref.lpVtbl,
        ppdimFocus,
      );

  int SetFocus(
    Pointer<COMObject> pdimFocus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdimFocus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdimFocus,
          )>()(
        ptr.ref.lpVtbl,
        pdimFocus,
      );

  int AssociateFocus(
    int hwnd,
    Pointer<COMObject> pdimNew,
    Pointer<Pointer<COMObject>> ppdimPrev,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<COMObject> pdimNew,
            Pointer<Pointer<COMObject>> ppdimPrev,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<COMObject> pdimNew,
            Pointer<Pointer<COMObject>> ppdimPrev,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pdimNew,
        ppdimPrev,
      );

  int IsThreadFocus(
    Pointer<Int32> pfThreadFocus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfThreadFocus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfThreadFocus,
          )>()(
        ptr.ref.lpVtbl,
        pfThreadFocus,
      );

  int GetFunctionProvider(
    Pointer<GUID> clsid,
    Pointer<Pointer<COMObject>> ppFuncProv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Pointer<COMObject>> ppFuncProv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<Pointer<COMObject>> ppFuncProv,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        ppFuncProv,
      );

  int EnumFunctionProviders(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetGlobalCompartment(
    Pointer<Pointer<COMObject>> ppCompMgr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCompMgr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppCompMgr,
          )>()(
        ptr.ref.lpVtbl,
        ppCompMgr,
      );
}
