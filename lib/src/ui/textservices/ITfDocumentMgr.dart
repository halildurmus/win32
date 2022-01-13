// ITfDocumentMgr.dart

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
import '../../ui/textservices/ITfContext.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/IEnumTfContexts.dart';

/// @nodoc
const IID_ITfDocumentMgr = '{AA80E7F4-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfDocumentMgr extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  ITfDocumentMgr(Pointer<COMObject> ptr) : super(ptr);

  int CreateContext(
    int tidOwner,
    int dwFlags,
    Pointer<COMObject> punk,
    Pointer<Pointer<COMObject>> ppic,
    Pointer<Uint32> pecTextStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 tidOwner,
            Uint32 dwFlags,
            Pointer<COMObject> punk,
            Pointer<Pointer<COMObject>> ppic,
            Pointer<Uint32> pecTextStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int tidOwner,
            int dwFlags,
            Pointer<COMObject> punk,
            Pointer<Pointer<COMObject>> ppic,
            Pointer<Uint32> pecTextStore,
          )>()(
        ptr.ref.lpVtbl,
        tidOwner,
        dwFlags,
        punk,
        ppic,
        pecTextStore,
      );

  int Push(
    Pointer<COMObject> pic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pic,
          )>()(
        ptr.ref.lpVtbl,
        pic,
      );

  int Pop(
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
      );

  int GetTop(
    Pointer<Pointer<COMObject>> ppic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppic,
          )>()(
        ptr.ref.lpVtbl,
        ppic,
      );

  int GetBase(
    Pointer<Pointer<COMObject>> ppic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppic,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppic,
          )>()(
        ptr.ref.lpVtbl,
        ppic,
      );

  int EnumContexts(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
}
