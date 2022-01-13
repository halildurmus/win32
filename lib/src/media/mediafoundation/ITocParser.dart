// ITocParser.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../media/mediafoundation/IToc.dart';
import '../../media/mediafoundation/ITocCollection.dart';

/// @nodoc
const IID_ITocParser = '{ECFB9A55-9298-4F49-887F-0B36206599D2}';

/// {@category Interface}
/// {@category com}
class ITocParser extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ITocParser(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<Utf16> pwszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFileName,
          )>()(
        ptr.ref.lpVtbl,
        pwszFileName,
      );

  int GetTocCount(
    int enumTocPosType,
    Pointer<Uint32> pdwTocCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumTocPosType,
            Pointer<Uint32> pdwTocCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumTocPosType,
            Pointer<Uint32> pdwTocCount,
          )>()(
        ptr.ref.lpVtbl,
        enumTocPosType,
        pdwTocCount,
      );

  int GetTocByIndex(
    int enumTocPosType,
    int dwTocIndex,
    Pointer<Pointer<COMObject>> ppToc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumTocPosType,
            Uint32 dwTocIndex,
            Pointer<Pointer<COMObject>> ppToc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumTocPosType,
            int dwTocIndex,
            Pointer<Pointer<COMObject>> ppToc,
          )>()(
        ptr.ref.lpVtbl,
        enumTocPosType,
        dwTocIndex,
        ppToc,
      );

  int GetTocByType(
    int enumTocPosType,
    GUID guidTocType,
    Pointer<Pointer<COMObject>> ppTocs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumTocPosType,
            GUID guidTocType,
            Pointer<Pointer<COMObject>> ppTocs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumTocPosType,
            GUID guidTocType,
            Pointer<Pointer<COMObject>> ppTocs,
          )>()(
        ptr.ref.lpVtbl,
        enumTocPosType,
        guidTocType,
        ppTocs,
      );

  int AddToc(
    int enumTocPosType,
    Pointer<COMObject> pToc,
    Pointer<Uint32> pdwTocIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumTocPosType,
            Pointer<COMObject> pToc,
            Pointer<Uint32> pdwTocIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumTocPosType,
            Pointer<COMObject> pToc,
            Pointer<Uint32> pdwTocIndex,
          )>()(
        ptr.ref.lpVtbl,
        enumTocPosType,
        pToc,
        pdwTocIndex,
      );

  int RemoveTocByIndex(
    int enumTocPosType,
    int dwTocIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumTocPosType,
            Uint32 dwTocIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumTocPosType,
            int dwTocIndex,
          )>()(
        ptr.ref.lpVtbl,
        enumTocPosType,
        dwTocIndex,
      );

  int RemoveTocByType(
    int enumTocPosType,
    GUID guidTocType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enumTocPosType,
            GUID guidTocType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enumTocPosType,
            GUID guidTocType,
          )>()(
        ptr.ref.lpVtbl,
        enumTocPosType,
        guidTocType,
      );

  int Commit() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
