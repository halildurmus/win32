// IMonikerProp.dart

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
import '../../../system/com/urlmon/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IMonikerProp = '{A5CA5F7F-1847-4D87-9C5B-918509F7511D}';

/// {@category Interface}
/// {@category com}
class IMonikerProp extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMonikerProp(Pointer<COMObject> ptr) : super(ptr);

  int PutProperty(
    int mkp,
    Pointer<Utf16> val,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 mkp,
            Pointer<Utf16> val,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int mkp,
            Pointer<Utf16> val,
          )>()(
        ptr.ref.lpVtbl,
        mkp,
        val,
      );
}
