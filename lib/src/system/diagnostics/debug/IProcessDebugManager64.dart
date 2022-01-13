// IProcessDebugManager64.dart

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
import '../../../system/diagnostics/debug/IDebugApplication64.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/diagnostics/debug/IDebugDocumentHelper64.dart';

/// @nodoc
const IID_IProcessDebugManager64 = '{56B9FC1C-63A9-4CC1-AC21-087D69A17FAB}';

/// {@category Interface}
/// {@category com}
class IProcessDebugManager64 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IProcessDebugManager64(Pointer<COMObject> ptr) : super(ptr);

  int CreateApplication(
    Pointer<Pointer<COMObject>> ppda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppda,
          )>()(
        ptr.ref.lpVtbl,
        ppda,
      );

  int GetDefaultApplication(
    Pointer<Pointer<COMObject>> ppda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppda,
          )>()(
        ptr.ref.lpVtbl,
        ppda,
      );

  int AddApplication(
    Pointer<COMObject> pda,
    Pointer<Uint32> pdwAppCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pda,
            Pointer<Uint32> pdwAppCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pda,
            Pointer<Uint32> pdwAppCookie,
          )>()(
        ptr.ref.lpVtbl,
        pda,
        pdwAppCookie,
      );

  int RemoveApplication(
    int dwAppCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAppCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAppCookie,
          )>()(
        ptr.ref.lpVtbl,
        dwAppCookie,
      );

  int CreateDebugDocumentHelper(
    Pointer<COMObject> punkOuter,
    Pointer<Pointer<COMObject>> pddh,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punkOuter,
            Pointer<Pointer<COMObject>> pddh,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punkOuter,
            Pointer<Pointer<COMObject>> pddh,
          )>()(
        ptr.ref.lpVtbl,
        punkOuter,
        pddh,
      );
}
