// IMFTopoLoader.dart

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
import '../../media/mediafoundation/IMFTopology.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTopoLoader = '{DE9A6157-F660-4643-B56A-DF9F7998C7CD}';

/// {@category Interface}
/// {@category com}
class IMFTopoLoader extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFTopoLoader(Pointer<COMObject> ptr) : super(ptr);

  int Load(
    Pointer<COMObject> pInputTopo,
    Pointer<Pointer<COMObject>> ppOutputTopo,
    Pointer<COMObject> pCurrentTopo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pInputTopo,
            Pointer<Pointer<COMObject>> ppOutputTopo,
            Pointer<COMObject> pCurrentTopo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pInputTopo,
            Pointer<Pointer<COMObject>> ppOutputTopo,
            Pointer<COMObject> pCurrentTopo,
          )>()(
        ptr.ref.lpVtbl,
        pInputTopo,
        ppOutputTopo,
        pCurrentTopo,
      );
}
