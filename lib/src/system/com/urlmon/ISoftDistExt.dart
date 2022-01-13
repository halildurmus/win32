// ISoftDistExt.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../data/xml/msxml/IXMLElement.dart';
import '../../../system/com/urlmon/structs.g.dart';
import '../../../system/com/IBindCtx.dart';

/// @nodoc
const IID_ISoftDistExt = '{B15B8DC1-C7E1-11D0-8680-00AA00BDCB71}';

/// {@category Interface}
/// {@category com}
class ISoftDistExt extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ISoftDistExt(Pointer<COMObject> ptr) : super(ptr);

  int ProcessSoftDist(
    Pointer<Utf16> szCDFURL,
    Pointer<COMObject> pSoftDistElement,
    Pointer<SOFTDISTINFO> lpsdi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szCDFURL,
            Pointer<COMObject> pSoftDistElement,
            Pointer<SOFTDISTINFO> lpsdi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szCDFURL,
            Pointer<COMObject> pSoftDistElement,
            Pointer<SOFTDISTINFO> lpsdi,
          )>()(
        ptr.ref.lpVtbl,
        szCDFURL,
        pSoftDistElement,
        lpsdi,
      );

  int GetFirstCodeBase(
    Pointer<Pointer<Utf16>> szCodeBase,
    Pointer<Uint32> dwMaxSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> szCodeBase,
            Pointer<Uint32> dwMaxSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> szCodeBase,
            Pointer<Uint32> dwMaxSize,
          )>()(
        ptr.ref.lpVtbl,
        szCodeBase,
        dwMaxSize,
      );

  int GetNextCodeBase(
    Pointer<Pointer<Utf16>> szCodeBase,
    Pointer<Uint32> dwMaxSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> szCodeBase,
            Pointer<Uint32> dwMaxSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> szCodeBase,
            Pointer<Uint32> dwMaxSize,
          )>()(
        ptr.ref.lpVtbl,
        szCodeBase,
        dwMaxSize,
      );

  int AsyncInstallDistributionUnit(
    Pointer<COMObject> pbc,
    Pointer pvReserved,
    int flags,
    Pointer<CODEBASEHOLD> lpcbh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pbc,
            Pointer pvReserved,
            Uint32 flags,
            Pointer<CODEBASEHOLD> lpcbh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pbc,
            Pointer pvReserved,
            int flags,
            Pointer<CODEBASEHOLD> lpcbh,
          )>()(
        ptr.ref.lpVtbl,
        pbc,
        pvReserved,
        flags,
        lpcbh,
      );
}
