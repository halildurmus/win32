// IUPnPHttpHeaderControl.dart

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
const IID_IUPnPHttpHeaderControl = '{0405AF4F-8B5C-447C-80F2-B75984A31F3C}';

/// {@category Interface}
/// {@category com}
class IUPnPHttpHeaderControl extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IUPnPHttpHeaderControl(Pointer<COMObject> ptr) : super(ptr);

  int AddRequestHeaders(
    Pointer<Utf16> bstrHttpHeaders,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrHttpHeaders,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrHttpHeaders,
          )>()(
        ptr.ref.lpVtbl,
        bstrHttpHeaders,
      );
}
