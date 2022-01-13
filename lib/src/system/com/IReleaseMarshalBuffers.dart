// IReleaseMarshalBuffers.dart

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
import '../../system/com/structs.g.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IReleaseMarshalBuffers = '{EB0CB9E8-7996-11D2-872E-0000F8080859}';

/// {@category Interface}
/// {@category com}
class IReleaseMarshalBuffers extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IReleaseMarshalBuffers(Pointer<COMObject> ptr) : super(ptr);

  int ReleaseMarshalBuffer(
    Pointer<RPCOLEMESSAGE> pMsg,
    int dwFlags,
    Pointer<COMObject> pChnl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            Uint32 dwFlags,
            Pointer<COMObject> pChnl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<RPCOLEMESSAGE> pMsg,
            int dwFlags,
            Pointer<COMObject> pChnl,
          )>()(
        ptr.ref.lpVtbl,
        pMsg,
        dwFlags,
        pChnl,
      );
}
