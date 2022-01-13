// ISpTranscript.dart

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
const IID_ISpTranscript = '{10F63BCE-201A-11D3-AC70-00C04F8EE6C0}';

/// {@category Interface}
/// {@category com}
class ISpTranscript extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpTranscript(Pointer<COMObject> ptr) : super(ptr);

  int GetTranscript(
    Pointer<Pointer<Utf16>> ppszTranscript,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTranscript,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszTranscript,
          )>()(
        ptr.ref.lpVtbl,
        ppszTranscript,
      );

  int AppendTranscript(
    Pointer<Utf16> pszTranscript,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTranscript,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTranscript,
          )>()(
        ptr.ref.lpVtbl,
        pszTranscript,
      );
}
