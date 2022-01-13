// IOpcSignatureCustomObject.dart

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
const IID_IOpcSignatureCustomObject = '{5D77A19E-62C1-44E7-BECD-45DA5AE51A56}';

/// {@category Interface}
/// {@category com}
class IOpcSignatureCustomObject extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IOpcSignatureCustomObject(Pointer<COMObject> ptr) : super(ptr);

  int GetXml(
    Pointer<Pointer<Uint8>> xmlMarkup,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> xmlMarkup,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> xmlMarkup,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        xmlMarkup,
        count,
      );
}
