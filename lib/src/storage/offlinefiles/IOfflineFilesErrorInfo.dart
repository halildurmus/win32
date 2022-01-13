// IOfflineFilesErrorInfo.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IOfflineFilesErrorInfo = '{7112FA5F-7571-435A-8EB7-195C7C1429BC}';

/// {@category Interface}
/// {@category com}
class IOfflineFilesErrorInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IOfflineFilesErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetRawData(
    Pointer<Pointer<BYTE_BLOB>> ppBlob,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<BYTE_BLOB>> ppBlob,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<BYTE_BLOB>> ppBlob,
          )>()(
        ptr.ref.lpVtbl,
        ppBlob,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> ppszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszDescription,
          )>()(
        ptr.ref.lpVtbl,
        ppszDescription,
      );
}
