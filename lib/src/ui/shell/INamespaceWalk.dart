// INamespaceWalk.dart

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
import '../../ui/shell/INamespaceWalkCB.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/common/structs.g.dart';

/// @nodoc
const IID_INamespaceWalk = '{57CED8A7-3F4A-432C-9350-30F24483F74F}';

/// {@category Interface}
/// {@category com}
class INamespaceWalk extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  INamespaceWalk(Pointer<COMObject> ptr) : super(ptr);

  int Walk(
    Pointer<COMObject> punkToWalk,
    int dwFlags,
    int cDepth,
    Pointer<COMObject> pnswcb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkToWalk,
            Uint32 dwFlags,
            Int32 cDepth,
            Pointer<COMObject> pnswcb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkToWalk,
            int dwFlags,
            int cDepth,
            Pointer<COMObject> pnswcb,
          )>()(
        ptr.ref.lpVtbl,
        punkToWalk,
        dwFlags,
        cDepth,
        pnswcb,
      );

  int GetIDArrayResult(
    Pointer<Uint32> pcItems,
    Pointer<Pointer<Pointer<ITEMIDLIST>>> prgpidl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcItems,
            Pointer<Pointer<Pointer<ITEMIDLIST>>> prgpidl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcItems,
            Pointer<Pointer<Pointer<ITEMIDLIST>>> prgpidl,
          )>()(
        ptr.ref.lpVtbl,
        pcItems,
        prgpidl,
      );
}
