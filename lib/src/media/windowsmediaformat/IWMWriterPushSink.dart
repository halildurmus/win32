// IWMWriterPushSink.dart

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
const IID_IWMWriterPushSink = '{DC10E6A5-072C-467D-BF57-6330A9DDE12A}';

/// {@category Interface}
/// {@category com}
class IWMWriterPushSink extends IWMWriterSink {
  // vtable begins at 8, is 3 entries long.
  IWMWriterPushSink(Pointer<COMObject> ptr) : super(ptr);

  int Connect(
    Pointer<Utf16> pwszURL,
    Pointer<Utf16> pwszTemplateURL,
    int fAutoDestroy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<Utf16> pwszTemplateURL,
            Int32 fAutoDestroy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<Utf16> pwszTemplateURL,
            int fAutoDestroy,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        pwszTemplateURL,
        fAutoDestroy,
      );

  int Disconnect() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int EndSession() => ptr.ref.lpVtbl.value
          .elementAt(10)
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
