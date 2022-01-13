// IAppxContentGroupMapWriter.dart

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
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IAppxContentGroupMapWriter = '{D07AB776-A9DE-4798-8C14-3DB31E687C78}';

/// {@category Interface}
/// {@category com}
class IAppxContentGroupMapWriter extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAppxContentGroupMapWriter(Pointer<COMObject> ptr) : super(ptr);

  int AddAutomaticGroup(
    Pointer<Utf16> groupName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> groupName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> groupName,
          )>()(
        ptr.ref.lpVtbl,
        groupName,
      );

  int AddAutomaticFile(
    Pointer<Utf16> fileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
