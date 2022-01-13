// ISpeechFileStream.dart

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

import '../../media/speech/ISpeechBaseStream.dart';
import '../../foundation/structs.g.dart';
import '../../media/speech/structs.g.dart';

/// @nodoc
const IID_ISpeechFileStream = '{AF67F125-AB39-4E93-B4A2-CC2E66E182A7}';

/// {@category Interface}
/// {@category com}
class ISpeechFileStream extends ISpeechBaseStream {
  // vtable begins at 12, is 2 entries long.
  ISpeechFileStream(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> FileName,
    int FileMode,
    int DoEvents,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileName,
            Int32 FileMode,
            Int16 DoEvents,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileName,
            int FileMode,
            int DoEvents,
          )>()(
        ptr.ref.lpVtbl,
        FileName,
        FileMode,
        DoEvents,
      );

  int Close() => ptr.ref.lpVtbl.value
          .elementAt(13)
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
