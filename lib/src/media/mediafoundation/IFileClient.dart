// IFileClient.dart

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
import '../../media/mediafoundation/IFileIo.dart';

/// @nodoc
const IID_IFileClient = '{BFCCD196-1244-4840-AB44-480975C4FFE4}';

/// {@category Interface}
/// {@category com}
class IFileClient extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IFileClient(Pointer<COMObject> ptr) : super(ptr);

  int GetObjectDiskSize(
    Pointer<Uint64> pqwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint64> pqwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint64> pqwSize,
          )>()(
        ptr.ref.lpVtbl,
        pqwSize,
      );

  int Write(
    Pointer<COMObject> pFio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFio,
          )>()(
        ptr.ref.lpVtbl,
        pFio,
      );

  int Read(
    Pointer<COMObject> pFio,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFio,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFio,
          )>()(
        ptr.ref.lpVtbl,
        pFio,
      );
}
