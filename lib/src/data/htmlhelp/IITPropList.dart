// IITPropList.dart

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

import '../../system/com/IPersistStreamInit.dart';
import '../../foundation/structs.g.dart';
import '../../data/htmlhelp/structs.g.dart';
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IITPropList = '{1F403BB1-9997-11D0-A850-00AA006C7D01}';

/// {@category Interface}
/// {@category com}
class IITPropList extends IPersistStreamInit {
  // vtable begins at 9, is 18 entries long.
  IITPropList(Pointer<COMObject> ptr) : super(ptr);

  int $Set_2(
    int PropID,
    Pointer<Utf16> lpszwString,
    int dwOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer<Utf16> lpszwString,
            Uint32 dwOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer<Utf16> lpszwString,
            int dwOperation,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        lpszwString,
        dwOperation,
      );

  int $Set_1(
    int PropID,
    Pointer lpvData,
    int cbData,
    int dwOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer lpvData,
            Uint32 cbData,
            Uint32 dwOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer lpvData,
            int cbData,
            int dwOperation,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        lpvData,
        cbData,
        dwOperation,
      );

  int $Set(
    int PropID,
    int dwData,
    int dwOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Uint32 dwData,
            Uint32 dwOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            int dwData,
            int dwOperation,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        dwData,
        dwOperation,
      );

  int Add(
    Pointer<CProperty> Prop,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CProperty> Prop,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CProperty> Prop,
          )>()(
        ptr.ref.lpVtbl,
        Prop,
      );

  int Get(
    int PropID,
    Pointer<CProperty> Property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Pointer<CProperty> Property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            Pointer<CProperty> Property,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        Property,
      );

  int Clear() => ptr.ref.lpVtbl.value
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

  int SetPersist_1(
    int fPersist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fPersist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fPersist,
          )>()(
        ptr.ref.lpVtbl,
        fPersist,
      );

  int SetPersist(
    int PropID,
    int fPersist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 PropID,
            Int32 fPersist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int PropID,
            int fPersist,
          )>()(
        ptr.ref.lpVtbl,
        PropID,
        fPersist,
      );

  int GetFirst(
    Pointer<CProperty> Property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CProperty> Property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CProperty> Property,
          )>()(
        ptr.ref.lpVtbl,
        Property,
      );

  int GetNext(
    Pointer<CProperty> Property,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CProperty> Property,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CProperty> Property,
          )>()(
        ptr.ref.lpVtbl,
        Property,
      );

  int GetPropCount(
    Pointer<Int32> cProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> cProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> cProp,
          )>()(
        ptr.ref.lpVtbl,
        cProp,
      );

  int SaveHeader(
    Pointer lpvData,
    int dwHdrSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvData,
            Uint32 dwHdrSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvData,
            int dwHdrSize,
          )>()(
        ptr.ref.lpVtbl,
        lpvData,
        dwHdrSize,
      );

  int SaveData(
    Pointer lpvHeader,
    int dwHdrSize,
    Pointer lpvData,
    int dwBufSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvHeader,
            Uint32 dwHdrSize,
            Pointer lpvData,
            Uint32 dwBufSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvHeader,
            int dwHdrSize,
            Pointer lpvData,
            int dwBufSize,
          )>()(
        ptr.ref.lpVtbl,
        lpvHeader,
        dwHdrSize,
        lpvData,
        dwBufSize,
      );

  int GetHeaderSize(
    Pointer<Uint32> dwHdrSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwHdrSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwHdrSize,
          )>()(
        ptr.ref.lpVtbl,
        dwHdrSize,
      );

  int GetDataSize(
    Pointer lpvHeader,
    int dwHdrSize,
    Pointer<Uint32> dwDataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvHeader,
            Uint32 dwHdrSize,
            Pointer<Uint32> dwDataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvHeader,
            int dwHdrSize,
            Pointer<Uint32> dwDataSize,
          )>()(
        ptr.ref.lpVtbl,
        lpvHeader,
        dwHdrSize,
        dwDataSize,
      );

  int SaveDataToStream(
    Pointer lpvHeader,
    int dwHdrSize,
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvHeader,
            Uint32 dwHdrSize,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvHeader,
            int dwHdrSize,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        lpvHeader,
        dwHdrSize,
        pStream,
      );

  int LoadFromMem(
    Pointer lpvData,
    int dwBufSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvData,
            Uint32 dwBufSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvData,
            int dwBufSize,
          )>()(
        ptr.ref.lpVtbl,
        lpvData,
        dwBufSize,
      );

  int SaveToMem(
    Pointer lpvData,
    int dwBufSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer lpvData,
            Uint32 dwBufSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer lpvData,
            int dwBufSize,
          )>()(
        ptr.ref.lpVtbl,
        lpvData,
        dwBufSize,
      );
}
