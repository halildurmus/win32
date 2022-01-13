// IBackgroundCopyFile.dart

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
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/structs.g.dart';

/// @nodoc
const IID_IBackgroundCopyFile = '{01B7BD23-FB88-4A77-8490-5891D3E4653A}';

/// {@category Interface}
/// {@category com}
class IBackgroundCopyFile extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IBackgroundCopyFile(Pointer<COMObject> ptr) : super(ptr);

  int GetRemoteName(
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetLocalName(
    Pointer<Pointer<Utf16>> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );

  int GetProgress(
    Pointer<BG_FILE_PROGRESS> pVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BG_FILE_PROGRESS> pVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BG_FILE_PROGRESS> pVal,
          )>()(
        ptr.ref.lpVtbl,
        pVal,
      );
}
