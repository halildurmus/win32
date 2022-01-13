// ITfFnReconversion.dart

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

import '../../ui/textservices/ITfFunction.dart';
import '../../ui/textservices/ITfRange.dart';
import '../../foundation/structs.g.dart';
import '../../ui/textservices/ITfCandidateList.dart';

/// @nodoc
const IID_ITfFnReconversion = '{4CEA93C0-0A58-11D3-8DF0-00105A2799B5}';

/// {@category Interface}
/// {@category com}
class ITfFnReconversion extends ITfFunction {
  // vtable begins at 4, is 3 entries long.
  ITfFnReconversion(Pointer<COMObject> ptr) : super(ptr);

  int QueryRange(
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppNewRange,
    Pointer<Int32> pfConvertable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppNewRange,
            Pointer<Int32> pfConvertable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppNewRange,
            Pointer<Int32> pfConvertable,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        ppNewRange,
        pfConvertable,
      );

  int GetReconversion(
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppCandList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppCandList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppCandList,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        ppCandList,
      );

  int Reconvert(
    Pointer<COMObject> pRange,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
      );
}
