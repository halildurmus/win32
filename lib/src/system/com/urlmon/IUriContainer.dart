// IUriContainer.dart

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
import '../../../system/com/IUri.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUriContainer = '{A158A630-ED6F-45FB-B987-F68676F57752}';

/// {@category Interface}
/// {@category com}
class IUriContainer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUriContainer(Pointer<COMObject> ptr) : super(ptr);

  int GetIUri(
    Pointer<Pointer<COMObject>> ppIUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIUri,
          )>()(
        ptr.ref.lpVtbl,
        ppIUri,
      );
}
