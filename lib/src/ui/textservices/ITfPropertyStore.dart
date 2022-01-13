// ITfPropertyStore.dart

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
import '../../ui/textservices/ITfRange.dart';
import '../../ui/textservices/ITfPropertyStore.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_ITfPropertyStore = '{6834B120-88CB-11D2-BF45-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfPropertyStore extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  ITfPropertyStore(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguid,
          )>()(
        ptr.ref.lpVtbl,
        pguid,
      );

  int GetDataType(
    Pointer<Uint32> pdwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwReserved,
          )>()(
        ptr.ref.lpVtbl,
        pdwReserved,
      );

  int GetData(
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        pvarValue,
      );

  int OnTextUpdated(
    int dwFlags,
    Pointer<COMObject> pRangeNew,
    Pointer<Int32> pfAccept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pRangeNew,
            Pointer<Int32> pfAccept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pRangeNew,
            Pointer<Int32> pfAccept,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pRangeNew,
        pfAccept,
      );

  int Shrink(
    Pointer<COMObject> pRangeNew,
    Pointer<Int32> pfFree,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRangeNew,
            Pointer<Int32> pfFree,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRangeNew,
            Pointer<Int32> pfFree,
          )>()(
        ptr.ref.lpVtbl,
        pRangeNew,
        pfFree,
      );

  int Divide(
    Pointer<COMObject> pRangeThis,
    Pointer<COMObject> pRangeNew,
    Pointer<Pointer<COMObject>> ppPropStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRangeThis,
            Pointer<COMObject> pRangeNew,
            Pointer<Pointer<COMObject>> ppPropStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRangeThis,
            Pointer<COMObject> pRangeNew,
            Pointer<Pointer<COMObject>> ppPropStore,
          )>()(
        ptr.ref.lpVtbl,
        pRangeThis,
        pRangeNew,
        ppPropStore,
      );

  int Clone(
    Pointer<Pointer<COMObject>> pPropStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pPropStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pPropStore,
          )>()(
        ptr.ref.lpVtbl,
        pPropStore,
      );

  int GetPropertyRangeCreator(
    Pointer<GUID> pclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pclsid,
          )>()(
        ptr.ref.lpVtbl,
        pclsid,
      );

  int Serialize(
    Pointer<COMObject> pStream,
    Pointer<Uint32> pcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Uint32> pcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
            Pointer<Uint32> pcb,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
        pcb,
      );
}
