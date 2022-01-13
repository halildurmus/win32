// IDWriteFontDownloadQueue.dart

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
import '../../graphics/directwrite/IDWriteFontDownloadListener.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IDWriteFontDownloadQueue = '{B71E6052-5AEA-4FA3-832E-F60D431F7E91}';

/// {@category Interface}
/// {@category com}
class IDWriteFontDownloadQueue extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDWriteFontDownloadQueue(Pointer<COMObject> ptr) : super(ptr);

  int AddListener(
    Pointer<COMObject> listener,
    Pointer<Uint32> token,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> listener,
            Pointer<Uint32> token,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> listener,
            Pointer<Uint32> token,
          )>()(
        ptr.ref.lpVtbl,
        listener,
        token,
      );

  int RemoveListener(
    int token,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 token,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int token,
          )>()(
        ptr.ref.lpVtbl,
        token,
      );

  int IsEmpty() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int BeginDownload(
    Pointer<COMObject> context,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> context,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> context,
          )>()(
        ptr.ref.lpVtbl,
        context,
      );

  int CancelDownload() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int GetGenerationCount() => ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint64 Function(
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
