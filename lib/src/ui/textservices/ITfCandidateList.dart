// ITfCandidateList.dart

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
import '../../ui/textservices/IEnumTfCandidates.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfCandidateString.dart';
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfCandidateList = '{A3AD50FB-9BDB-49E3-A843-6C76520FBF5D}';

/// {@category Interface}
/// {@category com}
class ITfCandidateList extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  ITfCandidateList(Pointer<COMObject> ptr) : super(ptr);

  int EnumCandidates(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int GetCandidate(
    int nIndex,
    Pointer<Pointer<COMObject>> ppCand,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<Pointer<COMObject>> ppCand,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<Pointer<COMObject>> ppCand,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        ppCand,
      );

  int GetCandidateNum(
    Pointer<Uint32> pnCnt,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pnCnt,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pnCnt,
          )>()(
        ptr.ref.lpVtbl,
        pnCnt,
      );

  int SetResult(
    int nIndex,
    int imcr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Int32 imcr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            int imcr,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        imcr,
      );
}
