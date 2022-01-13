// IStrokeBuilder.dart

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
import '../../ui/tabletpc/structs.g.dart';
import '../../ui/tabletpc/IInkStrokeDisp.dart';
import '../../foundation/structs.g.dart';
import '../../ui/tabletpc/IInkDisp.dart';

/// @nodoc
const IID_IStrokeBuilder = '{A5FD4E2D-C44B-4092-9177-260905EB672B}';

/// {@category Interface}
/// {@category com}
class IStrokeBuilder extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IStrokeBuilder(Pointer<COMObject> ptr) : super(ptr);

  int CreateStroke(
    int cPktBuffLength,
    Pointer<Int32> pPackets,
    int cPacketProperties,
    Pointer<PACKET_PROPERTY> pPacketProperties,
    double fInkToDeviceScaleX,
    double fInkToDeviceScaleY,
    Pointer<Pointer<COMObject>> ppIInkStroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cPktBuffLength,
            Pointer<Int32> pPackets,
            Uint32 cPacketProperties,
            Pointer<PACKET_PROPERTY> pPacketProperties,
            Float fInkToDeviceScaleX,
            Float fInkToDeviceScaleY,
            Pointer<Pointer<COMObject>> ppIInkStroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cPktBuffLength,
            Pointer<Int32> pPackets,
            int cPacketProperties,
            Pointer<PACKET_PROPERTY> pPacketProperties,
            double fInkToDeviceScaleX,
            double fInkToDeviceScaleY,
            Pointer<Pointer<COMObject>> ppIInkStroke,
          )>()(
        ptr.ref.lpVtbl,
        cPktBuffLength,
        pPackets,
        cPacketProperties,
        pPacketProperties,
        fInkToDeviceScaleX,
        fInkToDeviceScaleY,
        ppIInkStroke,
      );

  int BeginStroke(
    int tcid,
    int sid,
    Pointer<Int32> pPacket,
    int cPacketProperties,
    Pointer<PACKET_PROPERTY> pPacketProperties,
    double fInkToDeviceScaleX,
    double fInkToDeviceScaleY,
    Pointer<Pointer<COMObject>> ppIInkStroke,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tcid,
            Uint32 sid,
            Pointer<Int32> pPacket,
            Uint32 cPacketProperties,
            Pointer<PACKET_PROPERTY> pPacketProperties,
            Float fInkToDeviceScaleX,
            Float fInkToDeviceScaleY,
            Pointer<Pointer<COMObject>> ppIInkStroke,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tcid,
            int sid,
            Pointer<Int32> pPacket,
            int cPacketProperties,
            Pointer<PACKET_PROPERTY> pPacketProperties,
            double fInkToDeviceScaleX,
            double fInkToDeviceScaleY,
            Pointer<Pointer<COMObject>> ppIInkStroke,
          )>()(
        ptr.ref.lpVtbl,
        tcid,
        sid,
        pPacket,
        cPacketProperties,
        pPacketProperties,
        fInkToDeviceScaleX,
        fInkToDeviceScaleY,
        ppIInkStroke,
      );

  int AppendPackets(
    int tcid,
    int sid,
    int cPktBuffLength,
    Pointer<Int32> pPackets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tcid,
            Uint32 sid,
            Uint32 cPktBuffLength,
            Pointer<Int32> pPackets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tcid,
            int sid,
            int cPktBuffLength,
            Pointer<Int32> pPackets,
          )>()(
        ptr.ref.lpVtbl,
        tcid,
        sid,
        cPktBuffLength,
        pPackets,
      );

  int EndStroke(
    int tcid,
    int sid,
    Pointer<Pointer<COMObject>> ppIInkStroke,
    Pointer<RECT> pDirtyRect,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tcid,
            Uint32 sid,
            Pointer<Pointer<COMObject>> ppIInkStroke,
            Pointer<RECT> pDirtyRect,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tcid,
            int sid,
            Pointer<Pointer<COMObject>> ppIInkStroke,
            Pointer<RECT> pDirtyRect,
          )>()(
        ptr.ref.lpVtbl,
        tcid,
        sid,
        ppIInkStroke,
        pDirtyRect,
      );

  Pointer<COMObject> get Ink {
    final retValuePtr = calloc<Pointer<COMObject>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiInkObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppiInkObj,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int putref_Ink(
    Pointer<COMObject> piInkObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piInkObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piInkObj,
          )>()(
        ptr.ref.lpVtbl,
        piInkObj,
      );
}

/// @nodoc
const CLSID_StrokeBuilder = '{E810CEE7-6E51-4CB0-AA3A-0B985B70DAF7}';

/// {@category com}
class StrokeBuilder extends IStrokeBuilder {
  StrokeBuilder(Pointer<COMObject> ptr) : super(ptr);

  factory StrokeBuilder.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_StrokeBuilder);
    final iid = calloc<GUID>()..ref.setGUID(IID_IStrokeBuilder);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return StrokeBuilder(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
