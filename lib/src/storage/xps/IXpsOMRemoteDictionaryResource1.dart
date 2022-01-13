// IXpsOMRemoteDictionaryResource1.dart

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

import '../../storage/xps/IXpsOMRemoteDictionaryResource.dart';
import '../../storage/xps/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/ISequentialStream.dart';

/// @nodoc
const IID_IXpsOMRemoteDictionaryResource1 =
    '{BF8FC1D4-9D46-4141-BA5F-94BB9250D041}';

/// {@category Interface}
/// {@category com}
class IXpsOMRemoteDictionaryResource1 extends IXpsOMRemoteDictionaryResource {
  // vtable begins at 7, is 2 entries long.
  IXpsOMRemoteDictionaryResource1(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentType(
    Pointer<Int32> documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
    int documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> stream,
            Int32 documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> stream,
            int documentType,
          )>()(
        ptr.ref.lpVtbl,
        stream,
        documentType,
      );
}
