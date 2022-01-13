// IDWriteFontDownloadListener.dart

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
import '../../graphics/directwrite/IDWriteFontDownloadQueue.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IDWriteFontDownloadListener =
    '{B06FE5B9-43EC-4393-881B-DBE4DC72FDA7}';

/// {@category Interface}
/// {@category com}
class IDWriteFontDownloadListener extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IDWriteFontDownloadListener(Pointer<COMObject> ptr) : super(ptr);

  void DownloadCompleted(
    Pointer<COMObject> downloadQueue,
    Pointer<COMObject> context,
    int downloadResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<COMObject> downloadQueue,
            Pointer<COMObject> context,
            Int32 downloadResult,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<COMObject> downloadQueue,
            Pointer<COMObject> context,
            int downloadResult,
          )>()(
        ptr.ref.lpVtbl,
        downloadQueue,
        context,
        downloadResult,
      );
}
