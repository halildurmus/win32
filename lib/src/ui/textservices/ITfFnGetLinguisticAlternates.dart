// ITfFnGetLinguisticAlternates.dart

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
import '../../ui/textservices/ITfCandidateList.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfFnGetLinguisticAlternates =
    '{EA163CE2-7A65-4506-82A3-C528215DA64E}';

/// {@category Interface}
/// {@category com}
class ITfFnGetLinguisticAlternates extends ITfFunction {
  // vtable begins at 4, is 1 entries long.
  ITfFnGetLinguisticAlternates(Pointer<COMObject> ptr) : super(ptr);

  int GetAlternates(
    Pointer<COMObject> pRange,
    Pointer<Pointer<COMObject>> ppCandidateList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppCandidateList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pRange,
            Pointer<Pointer<COMObject>> ppCandidateList,
          )>()(
        ptr.ref.lpVtbl,
        pRange,
        ppCandidateList,
      );
}
