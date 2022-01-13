// IXpsOMPage1.dart

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

import '../../storage/xps/IXpsOMPage.dart';
import '../../storage/xps/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/ISequentialStream.dart';

/// @nodoc
const IID_IXpsOMPage1 = '{305B60EF-6892-4DDA-9CBB-3AA65974508A}';

/// {@category Interface}
/// {@category com}
class IXpsOMPage1 extends IXpsOMPage {
  // vtable begins at 27, is 2 entries long.
  IXpsOMPage1(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentType(
    Pointer<Int32> documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> documentType,
          )>()(
        ptr.ref.lpVtbl,
        documentType,
      );

  int Write1(
    Pointer<COMObject> stream,
    int optimizeMarkupSize,
    int documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Int32 optimizeMarkupSize,
            Int32 documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            int optimizeMarkupSize,
            int documentType,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        optimizeMarkupSize,
        documentType,
      );
}
