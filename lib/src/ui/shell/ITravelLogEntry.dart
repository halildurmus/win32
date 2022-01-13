// ITravelLogEntry.dart

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
const IID_ITravelLogEntry = '{7EBFDD87-AD18-11D3-A4C5-00C04F72D6B8}';

/// {@category Interface}
/// {@category com}
class ITravelLogEntry extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITravelLogEntry(Pointer<COMObject> ptr) : super(ptr);

  int GetTitle(
    Pointer<Pointer<Utf16>> ppszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTitle,
          )>()(
        ptr.ref.lpVtbl,
        ppszTitle,
      );

  int GetURL(
    Pointer<Pointer<Utf16>> ppszURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszURL,
          )>()(
        ptr.ref.lpVtbl,
        ppszURL,
      );
}
