// IGuideDataLoader.dart

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
import '../../media/directshow/IGuideData.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGuideDataLoader = '{4764FF7C-FA95-4525-AF4D-D32236DB9E38}';

/// {@category Interface}
/// {@category com}
class IGuideDataLoader extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IGuideDataLoader(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    Pointer<COMObject> pGuideStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pGuideStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pGuideStore,
          )>()(
        ptr.ref.lpVtbl,
        pGuideStore,
      );

  int Terminate() => ptr.ref.lpVtbl.value
          .elementAt(4)
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
