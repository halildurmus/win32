// IXDSCodec.dart

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
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IXDSCodec = '{C4C4C4B3-0049-4E2B-98FB-9537F6CE516D}';

/// {@category Interface}
/// {@category com}
class IXDSCodec extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IXDSCodec(Pointer<COMObject> ptr) : super(ptr);

  int get XDSToRatObjOK {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pHrCoCreateRetVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pHrCoCreateRetVal,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  set CCSubstreamService(int value) {
    final hr = ptr.ref.lpVtbl.value
        .elementAt(4)
        .cast<
            Pointer<
                NativeFunction<
                    Int32 Function(
          Pointer,
          Int32 SubstreamMask,
        )>>>()
        .value
        .asFunction<
            int Function(
          Pointer,
          int SubstreamMask,
        )>()(ptr.ref.lpVtbl, value);

    if (FAILED(hr)) throw WindowsException(hr);
  }

  int get CCSubstreamService {
    final retValuePtr = calloc<Int32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pSubstreamMask,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pSubstreamMask,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int GetContentAdvisoryRating(
    Pointer<Int32> pRat,
    Pointer<Int32> pPktSeqID,
    Pointer<Int32> pCallSeqID,
    Pointer<Int64> pTimeStart,
    Pointer<Int64> pTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pRat,
            Pointer<Int32> pPktSeqID,
            Pointer<Int32> pCallSeqID,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pRat,
            Pointer<Int32> pPktSeqID,
            Pointer<Int32> pCallSeqID,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pRat,
        pPktSeqID,
        pCallSeqID,
        pTimeStart,
        pTimeEnd,
      );

  int GetXDSPacket(
    Pointer<Int32> pXDSClassPkt,
    Pointer<Int32> pXDSTypePkt,
    Pointer<Pointer<Utf16>> pBstrXDSPkt,
    Pointer<Int32> pPktSeqID,
    Pointer<Int32> pCallSeqID,
    Pointer<Int64> pTimeStart,
    Pointer<Int64> pTimeEnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pXDSClassPkt,
            Pointer<Int32> pXDSTypePkt,
            Pointer<Pointer<Utf16>> pBstrXDSPkt,
            Pointer<Int32> pPktSeqID,
            Pointer<Int32> pCallSeqID,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pXDSClassPkt,
            Pointer<Int32> pXDSTypePkt,
            Pointer<Pointer<Utf16>> pBstrXDSPkt,
            Pointer<Int32> pPktSeqID,
            Pointer<Int32> pCallSeqID,
            Pointer<Int64> pTimeStart,
            Pointer<Int64> pTimeEnd,
          )>()(
        ptr.ref.lpVtbl,
        pXDSClassPkt,
        pXDSTypePkt,
        pBstrXDSPkt,
        pPktSeqID,
        pCallSeqID,
        pTimeStart,
        pTimeEnd,
      );

  int GetCurrLicenseExpDate(
    Pointer<Int32> protType,
    Pointer<Int32> lpDateTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> protType,
            Pointer<Int32> lpDateTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> protType,
            Pointer<Int32> lpDateTime,
          )>()(
        ptr.ref.lpVtbl,
        protType,
        lpDateTime,
      );

  int GetLastErrorCode() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

/// @nodoc
const CLSID_XDSCodec = '{C4C4C4F3-0049-4E2B-98FB-9537F6CE516D}';

/// {@category com}
class XDSCodec extends IXDSCodec {
  XDSCodec(Pointer<COMObject> ptr) : super(ptr);

  factory XDSCodec.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_XDSCodec);
    final iid = calloc<GUID>()..ref.setGUID(IID_IXDSCodec);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return XDSCodec(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
