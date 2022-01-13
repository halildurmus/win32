// IStreamBuilder.dart

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
import '../../media/directshow/IPin.dart';
import '../../media/directshow/IGraphBuilder.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBuilder = '{56A868BF-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IStreamBuilder extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IStreamBuilder(Pointer<COMObject> ptr) : super(ptr);

  int Render(
    Pointer<COMObject> ppinOut,
    Pointer<COMObject> pGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> pGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> pGraph,
          )>()(
        ptr.ref.lpVtbl,
        ppinOut,
        pGraph,
      );

  int Backout(
    Pointer<COMObject> ppinOut,
    Pointer<COMObject> pGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> pGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> ppinOut,
            Pointer<COMObject> pGraph,
          )>()(
        ptr.ref.lpVtbl,
        ppinOut,
        pGraph,
      );
}
