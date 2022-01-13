// IPin.dart

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
import '../../media/directshow/IPin.dart';
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IEnumMediaTypes.dart';

/// @nodoc
const IID_IPin = '{56A86891-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IPin extends IUnknown {
  // vtable begins at 3, is 15 entries long.
  IPin(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<COMObject> pReceivePin,
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pReceivePin,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pReceivePin,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pReceivePin,
        pmt,
      );

  int ReceiveConnection(
    Pointer<COMObject> pConnector,
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConnector,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConnector,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pConnector,
        pmt,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
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

  int ConnectedTo(
    Pointer<Pointer<COMObject>> pPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pPin,
          )>()(
        ptr.ref.lpVtbl,
        pPin,
      );

  int ConnectionMediaType(
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
      );

  int QueryPinInfo(
    Pointer<PIN_INFO> pInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PIN_INFO> pInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PIN_INFO> pInfo,
          )>()(
        ptr.ref.lpVtbl,
        pInfo,
      );

  int QueryDirection(
    Pointer<Int32> pPinDir,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pPinDir,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pPinDir,
          )>()(
        ptr.ref.lpVtbl,
        pPinDir,
      );

  int QueryId(
    Pointer<Pointer<Utf16>> Id,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> Id,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> Id,
          )>()(
        ptr.ref.lpVtbl,
        Id,
      );

  int QueryAccept(
    Pointer<AM_MEDIA_TYPE> pmt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<AM_MEDIA_TYPE> pmt,
          )>()(
        ptr.ref.lpVtbl,
        pmt,
      );

  int EnumMediaTypes(
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

  int QueryInternalConnections(
    Pointer<Pointer<COMObject>> apPin,
    Pointer<Uint32> nPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> apPin,
            Pointer<Uint32> nPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> apPin,
            Pointer<Uint32> nPin,
          )>()(
        ptr.ref.lpVtbl,
        apPin,
        nPin,
      );

  int EndOfStream() => ptr.ref.lpVtbl.value
          .elementAt(14)
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

  int BeginFlush() => ptr.ref.lpVtbl.value
          .elementAt(15)
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

  int EndFlush() => ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int NewSegment(
    int tStart,
    int tStop,
    double dRate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int64 tStart,
            Int64 tStop,
            Double dRate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tStart,
            int tStop,
            double dRate,
          )>()(
        ptr.ref.lpVtbl,
        tStart,
        tStop,
        dRate,
      );
}
