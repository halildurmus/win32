// ITfThreadMgrEventSink.dart

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
import '../../ui/textservices/ITfDocumentMgr.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfContext.dart';

/// @nodoc
const IID_ITfThreadMgrEventSink = '{AA80E80E-2021-11D2-93E0-0060B067B86E}';

/// {@category Interface}
/// {@category com}
class ITfThreadMgrEventSink extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  ITfThreadMgrEventSink(Pointer<COMObject> ptr) : super(ptr);

  int OnInitDocumentMgr(
    Pointer<COMObject> pdim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdim,
          )>()(
        ptr.ref.lpVtbl,
        pdim,
      );

  int OnUninitDocumentMgr(
    Pointer<COMObject> pdim,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdim,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdim,
          )>()(
        ptr.ref.lpVtbl,
        pdim,
      );

  int OnSetFocus(
    Pointer<COMObject> pdimFocus,
    Pointer<COMObject> pdimPrevFocus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdimFocus,
            Pointer<COMObject> pdimPrevFocus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdimFocus,
            Pointer<COMObject> pdimPrevFocus,
          )>()(
        ptr.ref.lpVtbl,
        pdimFocus,
        pdimPrevFocus,
      );

  int OnPushContext(
    Pointer<COMObject> pic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int OnPopContext(
    Pointer<COMObject> pic,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
