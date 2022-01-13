// IDataObject.dart

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
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IEnumFORMATETC.dart';
import '../../system/com/IAdviseSink.dart';
import '../../system/com/IEnumSTATDATA.dart';

/// @nodoc
const IID_IDataObject = '{0000010E-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IDataObject extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IDataObject(Pointer<COMObject> ptr) : super(ptr);

  int GetData(
    Pointer<FORMATETC> pformatetcIn,
    Pointer<STGMEDIUM> pmedium,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FORMATETC> pformatetcIn,
            Pointer<STGMEDIUM> pmedium,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FORMATETC> pformatetcIn,
            Pointer<STGMEDIUM> pmedium,
          )>()(
        ptr.ref.lpVtbl,
        pformatetcIn,
        pmedium,
      );

  int GetDataHere(
    Pointer<FORMATETC> pformatetc,
    Pointer<STGMEDIUM> pmedium,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
            Pointer<STGMEDIUM> pmedium,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
            Pointer<STGMEDIUM> pmedium,
          )>()(
        ptr.ref.lpVtbl,
        pformatetc,
        pmedium,
      );

  int QueryGetData(
    Pointer<FORMATETC> pformatetc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
          )>()(
        ptr.ref.lpVtbl,
        pformatetc,
      );

  int GetCanonicalFormatEtc(
    Pointer<FORMATETC> pformatectIn,
    Pointer<FORMATETC> pformatetcOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FORMATETC> pformatectIn,
            Pointer<FORMATETC> pformatetcOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FORMATETC> pformatectIn,
            Pointer<FORMATETC> pformatetcOut,
          )>()(
        ptr.ref.lpVtbl,
        pformatectIn,
        pformatetcOut,
      );

  int SetData(
    Pointer<FORMATETC> pformatetc,
    Pointer<STGMEDIUM> pmedium,
    int fRelease,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
            Pointer<STGMEDIUM> pmedium,
            Int32 fRelease,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
            Pointer<STGMEDIUM> pmedium,
            int fRelease,
          )>()(
        ptr.ref.lpVtbl,
        pformatetc,
        pmedium,
        fRelease,
      );

  int EnumFormatEtc(
    int dwDirection,
    Pointer<Pointer<COMObject>> ppenumFormatEtc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDirection,
            Pointer<Pointer<COMObject>> ppenumFormatEtc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDirection,
            Pointer<Pointer<COMObject>> ppenumFormatEtc,
          )>()(
        ptr.ref.lpVtbl,
        dwDirection,
        ppenumFormatEtc,
      );

  int DAdvise(
    Pointer<FORMATETC> pformatetc,
    int advf,
    Pointer<COMObject> pAdvSink,
    Pointer<Uint32> pdwConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
            Uint32 advf,
            Pointer<COMObject> pAdvSink,
            Pointer<Uint32> pdwConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FORMATETC> pformatetc,
            int advf,
            Pointer<COMObject> pAdvSink,
            Pointer<Uint32> pdwConnection,
          )>()(
        ptr.ref.lpVtbl,
        pformatetc,
        advf,
        pAdvSink,
        pdwConnection,
      );

  int DUnadvise(
    int dwConnection,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwConnection,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwConnection,
          )>()(
        ptr.ref.lpVtbl,
        dwConnection,
      );

  int EnumDAdvise(
    Pointer<Pointer<COMObject>> ppenumAdvise,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumAdvise,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppenumAdvise,
          )>()(
        ptr.ref.lpVtbl,
        ppenumAdvise,
      );
}
