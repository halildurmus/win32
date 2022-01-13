// IMFAttributes.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IMFAttributes.dart';

/// @nodoc
const IID_IMFAttributes = '{2CD2D921-C447-44A7-A13C-4ADABFC247E3}';

/// {@category Interface}
/// {@category com}
class IMFAttributes extends IUnknown {
  // vtable begins at 3, is 30 entries long.
  IMFAttributes(Pointer<COMObject> ptr) : super(ptr);

  int GetItem(
    Pointer<GUID> guidKey,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pValue,
      );

  int GetItemType(
    Pointer<GUID> guidKey,
    Pointer<Int32> pType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Int32> pType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Int32> pType,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pType,
      );

  int CompareItem(
    Pointer<GUID> guidKey,
    Pointer<PROPVARIANT> Value,
    Pointer<Int32> pbResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<PROPVARIANT> Value,
            Pointer<Int32> pbResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<PROPVARIANT> Value,
            Pointer<Int32> pbResult,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        Value,
        pbResult,
      );

  int Compare(
    Pointer<COMObject> pTheirs,
    int MatchType,
    Pointer<Int32> pbResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTheirs,
            Int32 MatchType,
            Pointer<Int32> pbResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTheirs,
            int MatchType,
            Pointer<Int32> pbResult,
          )>()(
        ptr.ref.lpVtbl,
        pTheirs,
        MatchType,
        pbResult,
      );

  int GetUINT32(
    Pointer<GUID> guidKey,
    Pointer<Uint32> punValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint32> punValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint32> punValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        punValue,
      );

  int GetUINT64(
    Pointer<GUID> guidKey,
    Pointer<Uint64> punValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint64> punValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint64> punValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        punValue,
      );

  int GetDouble(
    Pointer<GUID> guidKey,
    Pointer<Double> pfValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Double> pfValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Double> pfValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pfValue,
      );

  int GetGUID(
    Pointer<GUID> guidKey,
    Pointer<GUID> pguidValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<GUID> pguidValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<GUID> pguidValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pguidValue,
      );

  int GetStringLength(
    Pointer<GUID> guidKey,
    Pointer<Uint32> pcchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint32> pcchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint32> pcchLength,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pcchLength,
      );

  int GetString(
    Pointer<GUID> guidKey,
    Pointer<Utf16> pwszValue,
    int cchBufSize,
    Pointer<Uint32> pcchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Utf16> pwszValue,
            Uint32 cchBufSize,
            Pointer<Uint32> pcchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Utf16> pwszValue,
            int cchBufSize,
            Pointer<Uint32> pcchLength,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pwszValue,
        cchBufSize,
        pcchLength,
      );

  int GetAllocatedString(
    Pointer<GUID> guidKey,
    Pointer<Pointer<Utf16>> ppwszValue,
    Pointer<Uint32> pcchLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Utf16>> ppwszValue,
            Pointer<Uint32> pcchLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Utf16>> ppwszValue,
            Pointer<Uint32> pcchLength,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        ppwszValue,
        pcchLength,
      );

  int GetBlobSize(
    Pointer<GUID> guidKey,
    Pointer<Uint32> pcbBlobSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint32> pcbBlobSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint32> pcbBlobSize,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pcbBlobSize,
      );

  int GetBlob(
    Pointer<GUID> guidKey,
    Pointer<Uint8> pBuf,
    int cbBufSize,
    Pointer<Uint32> pcbBlobSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint8> pBuf,
            Uint32 cbBufSize,
            Pointer<Uint32> pcbBlobSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint8> pBuf,
            int cbBufSize,
            Pointer<Uint32> pcbBlobSize,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pBuf,
        cbBufSize,
        pcbBlobSize,
      );

  int GetAllocatedBlob(
    Pointer<GUID> guidKey,
    Pointer<Pointer<Uint8>> ppBuf,
    Pointer<Uint32> pcbSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppBuf,
            Pointer<Uint32> pcbSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Pointer<Uint8>> ppBuf,
            Pointer<Uint32> pcbSize,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        ppBuf,
        pcbSize,
      );

  int GetUnknown(
    Pointer<GUID> guidKey,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        riid,
        ppv,
      );

  int SetItem(
    Pointer<GUID> guidKey,
    Pointer<PROPVARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<PROPVARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<PROPVARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        Value,
      );

  int DeleteItem(
    Pointer<GUID> guidKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
      );

  int DeleteAllItems() => ptr.ref.lpVtbl.value
          .elementAt(20)
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

  int SetUINT32(
    Pointer<GUID> guidKey,
    int unValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Uint32 unValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            int unValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        unValue,
      );

  int SetUINT64(
    Pointer<GUID> guidKey,
    int unValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Uint64 unValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            int unValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        unValue,
      );

  int SetDouble(
    Pointer<GUID> guidKey,
    double fValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Double fValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            double fValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        fValue,
      );

  int SetGUID(
    Pointer<GUID> guidKey,
    Pointer<GUID> guidValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<GUID> guidValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<GUID> guidValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        guidValue,
      );

  int SetString(
    Pointer<GUID> guidKey,
    Pointer<Utf16> wszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Utf16> wszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Utf16> wszValue,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        wszValue,
      );

  int SetBlob(
    Pointer<GUID> guidKey,
    Pointer<Uint8> pBuf,
    int cbBufSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint8> pBuf,
            Uint32 cbBufSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<Uint8> pBuf,
            int cbBufSize,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pBuf,
        cbBufSize,
      );

  int SetUnknown(
    Pointer<GUID> guidKey,
    Pointer<COMObject> pUnknown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<COMObject> pUnknown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidKey,
            Pointer<COMObject> pUnknown,
          )>()(
        ptr.ref.lpVtbl,
        guidKey,
        pUnknown,
      );

  int LockStore() => ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int UnlockStore() => ptr.ref.lpVtbl.value
          .elementAt(29)
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

  int GetCount(
    Pointer<Uint32> pcItems,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcItems,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcItems,
          )>()(
        ptr.ref.lpVtbl,
        pcItems,
      );

  int GetItemByIndex(
    int unIndex,
    Pointer<GUID> pguidKey,
    Pointer<PROPVARIANT> pValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 unIndex,
            Pointer<GUID> pguidKey,
            Pointer<PROPVARIANT> pValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int unIndex,
            Pointer<GUID> pguidKey,
            Pointer<PROPVARIANT> pValue,
          )>()(
        ptr.ref.lpVtbl,
        unIndex,
        pguidKey,
        pValue,
      );

  int CopyAllItems(
    Pointer<COMObject> pDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pDest,
          )>()(
        ptr.ref.lpVtbl,
        pDest,
      );
}
