// IEVRFilterConfig.dart

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
const IID_IEVRFilterConfig = '{83E91E85-82C1-4EA7-801D-85DC50B75086}';

/// {@category Interface}
/// {@category com}
class IEVRFilterConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IEVRFilterConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetNumberOfStreams(
    int dwMaxStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMaxStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMaxStreams,
          )>()(
        ptr.ref.lpVtbl,
        dwMaxStreams,
      );

  int GetNumberOfStreams(
    Pointer<Uint32> pdwMaxStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMaxStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMaxStreams,
          )>()(
        ptr.ref.lpVtbl,
        pdwMaxStreams,
      );
}
