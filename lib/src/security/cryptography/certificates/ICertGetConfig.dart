// ICertGetConfig.dart

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

import '../../../system/com/IDispatch.dart';
import '../../../security/cryptography/certificates/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_ICertGetConfig = '{C7EA09C0-CE17-11D0-8833-00A0C903B83C}';

/// {@category Interface}
/// {@category com}
class ICertGetConfig extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  ICertGetConfig(Pointer<COMObject> ptr) : super(ptr);

  int GetConfig(
    int Flags,
    Pointer<Pointer<Utf16>> pstrOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Flags,
            Pointer<Pointer<Utf16>> pstrOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Flags,
            Pointer<Pointer<Utf16>> pstrOut,
          )>()(
        ptr.ref.lpVtbl,
        Flags,
        pstrOut,
      );
}
