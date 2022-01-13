// ITypeLib.dart

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
import '../../system/com/ITypeInfo.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';
import '../../system/com/ITypeComp.dart';

/// @nodoc
const IID_ITypeLib = '{00020402-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ITypeLib extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  ITypeLib(Pointer<COMObject> ptr) : super(ptr);

  int GetTypeInfoCount() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetTypeInfo(
    int index,
    Pointer<Pointer<COMObject>> ppTInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Pointer<COMObject>> ppTInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<COMObject>> ppTInfo,
          )>()(
        ptr.ref.lpVtbl,
        index,
        ppTInfo,
      );

  int GetTypeInfoType(
    int index,
    Pointer<Int32> pTKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<Int32> pTKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Int32> pTKind,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pTKind,
      );

  int GetTypeInfoOfGuid(
    Pointer<GUID> guid,
    Pointer<Pointer<COMObject>> ppTinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Pointer<COMObject>> ppTinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<Pointer<COMObject>> ppTinfo,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        ppTinfo,
      );

  int GetLibAttr(
    Pointer<Pointer<TLIBATTR>> ppTLibAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<TLIBATTR>> ppTLibAttr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<TLIBATTR>> ppTLibAttr,
          )>()(
        ptr.ref.lpVtbl,
        ppTLibAttr,
      );

  int GetTypeComp(
    Pointer<Pointer<COMObject>> ppTComp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTComp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppTComp,
          )>()(
        ptr.ref.lpVtbl,
        ppTComp,
      );

  int GetDocumentation(
    int index,
    Pointer<Pointer<Utf16>> pBstrName,
    Pointer<Pointer<Utf16>> pBstrDocString,
    Pointer<Uint32> pdwHelpContext,
    Pointer<Pointer<Utf16>> pBstrHelpFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
            Pointer<Pointer<Utf16>> pBstrName,
            Pointer<Pointer<Utf16>> pBstrDocString,
            Pointer<Uint32> pdwHelpContext,
            Pointer<Pointer<Utf16>> pBstrHelpFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<Pointer<Utf16>> pBstrName,
            Pointer<Pointer<Utf16>> pBstrDocString,
            Pointer<Uint32> pdwHelpContext,
            Pointer<Pointer<Utf16>> pBstrHelpFile,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pBstrName,
        pBstrDocString,
        pdwHelpContext,
        pBstrHelpFile,
      );

  int IsName(
    Pointer<Utf16> szNameBuf,
    int lHashVal,
    Pointer<Int32> pfName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szNameBuf,
            Uint32 lHashVal,
            Pointer<Int32> pfName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szNameBuf,
            int lHashVal,
            Pointer<Int32> pfName,
          )>()(
        ptr.ref.lpVtbl,
        szNameBuf,
        lHashVal,
        pfName,
      );

  int FindName(
    Pointer<Utf16> szNameBuf,
    int lHashVal,
    Pointer<Pointer<COMObject>> ppTInfo,
    Pointer<Int32> rgMemId,
    Pointer<Uint16> pcFound,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szNameBuf,
            Uint32 lHashVal,
            Pointer<Pointer<COMObject>> ppTInfo,
            Pointer<Int32> rgMemId,
            Pointer<Uint16> pcFound,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szNameBuf,
            int lHashVal,
            Pointer<Pointer<COMObject>> ppTInfo,
            Pointer<Int32> rgMemId,
            Pointer<Uint16> pcFound,
          )>()(
        ptr.ref.lpVtbl,
        szNameBuf,
        lHashVal,
        ppTInfo,
        rgMemId,
        pcFound,
      );

  void ReleaseTLibAttr(
    Pointer<TLIBATTR> pTLibAttr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<TLIBATTR> pTLibAttr,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<TLIBATTR> pTLibAttr,
          )>()(
        ptr.ref.lpVtbl,
        pTLibAttr,
      );
}
