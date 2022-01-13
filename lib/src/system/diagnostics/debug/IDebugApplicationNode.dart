// IDebugApplicationNode.dart

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

import '../../../system/diagnostics/debug/IDebugDocumentProvider.dart';
import '../../../system/diagnostics/debug/IEnumDebugApplicationNodes.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugApplicationNode.dart';

/// @nodoc
const IID_IDebugApplicationNode = '{51973C34-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugApplicationNode extends IDebugDocumentProvider {
  // vtable begins at 6, is 6 entries long.
  IDebugApplicationNode(Pointer<COMObject> ptr) : super(ptr);

  int EnumChildren(
    Pointer<Pointer<COMObject>> pperddp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pperddp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pperddp,
          )>()(
        ptr.ref.lpVtbl,
        pperddp,
      );

  int GetParent(
    Pointer<Pointer<COMObject>> pprddp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> pprddp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> pprddp,
          )>()(
        ptr.ref.lpVtbl,
        pprddp,
      );

  int SetDocumentProvider(
    Pointer<COMObject> pddp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pddp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pddp,
          )>()(
        ptr.ref.lpVtbl,
        pddp,
      );

  int Close() => ptr.ref.lpVtbl.value
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

  int Attach(
    Pointer<COMObject> pdanParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pdanParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pdanParent,
          )>()(
        ptr.ref.lpVtbl,
        pdanParent,
      );

  int Detach() => ptr.ref.lpVtbl.value
          .elementAt(11)
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
