// ISpeechMemoryStream.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpeechMemoryStream = '{EEB14B68-808B-4ABE-A5EA-B51DA7588008}';

/// {@category Interface}
/// {@category com}
class ISpeechMemoryStream extends ISpeechBaseStream {
  // vtable begins at 12, is 2 entries long.
  ISpeechMemoryStream(Pointer<COMObject> ptr) : super(ptr);

  int SetData(
    VARIANT Data,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT Data,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT Data,
          )>()(
        ptr.ref.lpVtbl,
        Data,
      );

  int GetData(
    Pointer<VARIANT> pData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> pData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> pData,
          )>()(
        ptr.ref.lpVtbl,
        pData,
      );
}
