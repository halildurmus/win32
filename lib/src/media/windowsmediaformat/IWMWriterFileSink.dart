// IWMWriterFileSink.dart

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

import '../../media/windowsmediaformat/IWMWriterSink.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMWriterFileSink = '{96406BE5-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMWriterFileSink extends IWMWriterSink {
  // vtable begins at 8, is 1 entries long.
  IWMWriterFileSink(Pointer<COMObject> ptr) : super(ptr);

  int Open(
    Pointer<Utf16> pwszFilename,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszFilename,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszFilename,
          )>()(
        ptr.ref.lpVtbl,
        pwszFilename,
      );
}
