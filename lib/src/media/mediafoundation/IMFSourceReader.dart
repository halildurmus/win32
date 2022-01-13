// IMFSourceReader.dart

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
import '../../media/mediafoundation/IMFMediaType.dart';
import '../../specialTypes.dart';
import '../../media/mediafoundation/IMFSample.dart';

/// @nodoc
const IID_IMFSourceReader = '{70AE66F2-C809-4E4F-8915-BDCB406B7993}';

/// {@category Interface}
/// {@category com}
class IMFSourceReader extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IMFSourceReader(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamSelection(
    int dwStreamIndex,
    Pointer<Int32> pfSelected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Int32> pfSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Int32> pfSelected,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pfSelected,
      );

  int SetStreamSelection(
    int dwStreamIndex,
    int fSelected,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Int32 fSelected,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int fSelected,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        fSelected,
      );

  int GetNativeMediaType(
    int dwStreamIndex,
    int dwMediaTypeIndex,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwMediaTypeIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwMediaTypeIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwMediaTypeIndex,
        ppMediaType,
      );

  int GetCurrentMediaType(
    int dwStreamIndex,
    Pointer<Pointer<COMObject>> ppMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Pointer<COMObject>> ppMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        ppMediaType,
      );

  int SetCurrentMediaType(
    int dwStreamIndex,
    Pointer<Uint32> pdwReserved,
    Pointer<COMObject> pMediaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Uint32> pdwReserved,
            Pointer<COMObject> pMediaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Uint32> pdwReserved,
            Pointer<COMObject> pMediaType,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        pdwReserved,
        pMediaType,
      );

  int SetCurrentPosition(
    Pointer<GUID> guidTimeFormat,
    Pointer<PROPVARIANT> varPosition,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidTimeFormat,
            Pointer<PROPVARIANT> varPosition,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidTimeFormat,
            Pointer<PROPVARIANT> varPosition,
          )>()(
        ptr.ref.lpVtbl,
        guidTimeFormat,
        varPosition,
      );

  int ReadSample(
    int dwStreamIndex,
    int dwControlFlags,
    Pointer<Uint32> pdwActualStreamIndex,
    Pointer<Uint32> pdwStreamFlags,
    Pointer<Int64> pllTimestamp,
    Pointer<Pointer<COMObject>> ppSample,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Uint32 dwControlFlags,
            Pointer<Uint32> pdwActualStreamIndex,
            Pointer<Uint32> pdwStreamFlags,
            Pointer<Int64> pllTimestamp,
            Pointer<Pointer<COMObject>> ppSample,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            int dwControlFlags,
            Pointer<Uint32> pdwActualStreamIndex,
            Pointer<Uint32> pdwStreamFlags,
            Pointer<Int64> pllTimestamp,
            Pointer<Pointer<COMObject>> ppSample,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        dwControlFlags,
        pdwActualStreamIndex,
        pdwStreamFlags,
        pllTimestamp,
        ppSample,
      );

  int Flush(
    int dwStreamIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
      );

  int GetServiceForStream(
    int dwStreamIndex,
    Pointer<GUID> guidService,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        guidService,
        riid,
        ppvObject,
      );

  int GetPresentationAttribute(
    int dwStreamIndex,
    Pointer<GUID> guidAttribute,
    Pointer<PROPVARIANT> pvarAttribute,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<GUID> guidAttribute,
            Pointer<PROPVARIANT> pvarAttribute,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<GUID> guidAttribute,
            Pointer<PROPVARIANT> pvarAttribute,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        guidAttribute,
        pvarAttribute,
      );
}
