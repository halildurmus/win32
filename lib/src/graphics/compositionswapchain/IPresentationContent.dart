// IPresentationContent.dart

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

/// @nodoc
const IID_IPresentationContent = '{5668BB79-3D8E-415C-B215-F38020F2D252}';

/// {@category Interface}
/// {@category com}
class IPresentationContent extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPresentationContent(Pointer<COMObject> ptr) : super(ptr);

  void SetTag(
    int tag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            IntPtr tag,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int tag,
          )>()(
        ptr.ref.lpVtbl,
        tag,
      );
}
