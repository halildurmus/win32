// ITfLanguageProfileNotifySink.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfLanguageProfileNotifySink =
    '{43C9FE15-F494-4C17-9DE2-B8A4AC350AA8}';

/// {@category Interface}
/// {@category com}
class ITfLanguageProfileNotifySink extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfLanguageProfileNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnLanguageChange(
    int langid,
    Pointer<Int32> pfAccept,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<Int32> pfAccept,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<Int32> pfAccept,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        pfAccept,
      );

  int OnLanguageChanged() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
