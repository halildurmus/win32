// IMFSourceBufferList.dart

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
import '../../media/mediafoundation/IMFSourceBuffer.dart';

/// @nodoc
const IID_IMFSourceBufferList = '{249981F8-8325-41F3-B80C-3B9E3AAD0CBE}';

/// {@category Interface}
/// {@category com}
class IMFSourceBufferList extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFSourceBufferList(Pointer<COMObject> ptr) : super(ptr);

  int GetLength() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  Pointer<COMObject> GetSourceBuffer(
    int index,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<COMObject> Function(
            Pointer,
            Uint32 index,
          )>>>()
          .value
          .asFunction<
              Pointer<COMObject> Function(
            Pointer,
            int index,
          )>()(
        ptr.ref.lpVtbl,
        index,
      );
}
