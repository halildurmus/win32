// IBackgroundCopyFile3.dart

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

import '../../networking/backgroundintelligenttransferservice/IBackgroundCopyFile2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyFile3 = '{659CDEAA-489E-11D9-A9CD-000D56965251}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyFile3 extends IBackgroundCopyFile2 {
  // vtable begins at 8, is 4 entries long.
  IBackgroundCopyFile3(Pointer<COMObject> ptr) : super(ptr);

  int GetTemporaryName(
    Pointer<Pointer<Utf16>> pFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pFilename,
          )>()(
        ptr.ref.lpVtbl,
        pFilename,
      );

  int SetValidationState(
    int state,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 state,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int state,
          )>()(
        ptr.ref.lpVtbl,
        state,
      );

  int GetValidationState(
    Pointer<Int32> pState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pState,
          )>()(
        ptr.ref.lpVtbl,
        pState,
      );

  int IsDownloadedFromPeer(
    Pointer<Int32> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );
}
