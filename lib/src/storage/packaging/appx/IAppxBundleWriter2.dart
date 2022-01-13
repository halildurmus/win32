// IAppxBundleWriter2.dart

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
import '../../../system/com/IStream.dart';

/// @nodoc
const IID_IAppxBundleWriter2 = '{6D8FE971-01CC-49A0-B685-233851279962}';

/// {@category Interface}
/// {@category com}
class IAppxBundleWriter2 extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAppxBundleWriter2(Pointer<COMObject> ptr) : super(ptr);

  int AddExternalPackageReference(
    Pointer<Utf16> fileName,
    Pointer<COMObject> inputStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> inputStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<COMObject> inputStream,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        inputStream,
      );
}
