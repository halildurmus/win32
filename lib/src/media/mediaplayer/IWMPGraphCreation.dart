// IWMPGraphCreation.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPGraphCreation = '{BFB377E5-C594-4369-A970-DE896D5ECE74}';

/// {@category Interface}
/// {@category com}
class IWMPGraphCreation extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMPGraphCreation(Pointer<COMObject> ptr) : super(ptr);

  int GraphCreationPreRender(
    Pointer<COMObject> pFilterGraph,
    Pointer<COMObject> pReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilterGraph,
            Pointer<COMObject> pReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilterGraph,
            Pointer<COMObject> pReserved,
          )>()(
        ptr.ref.lpVtbl,
        pFilterGraph,
        pReserved,
      );

  int GraphCreationPostRender(
    Pointer<COMObject> pFilterGraph,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFilterGraph,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFilterGraph,
          )>()(
        ptr.ref.lpVtbl,
        pFilterGraph,
      );

  int GetGraphCreationFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );
}
