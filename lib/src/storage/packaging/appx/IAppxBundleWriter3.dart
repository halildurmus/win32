// IAppxBundleWriter3.dart

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
const IID_IAppxBundleWriter3 = '{AD711152-F969-4193-82D5-9DDF2786D21A}';

/// {@category Interface}
/// {@category com}
class IAppxBundleWriter3 extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IAppxBundleWriter3(Pointer<COMObject> ptr) : super(ptr);

  int AddPackageReference(
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

  int Close(
    Pointer<Utf16> hashMethodString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> hashMethodString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> hashMethodString,
          )>()(
        ptr.ref.lpVtbl,
        hashMethodString,
      );
}
