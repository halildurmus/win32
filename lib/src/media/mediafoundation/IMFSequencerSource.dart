// IMFSequencerSource.dart

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
import '../../media/mediafoundation/IMFPresentationDescriptor.dart';

/// @nodoc
const IID_IMFSequencerSource = '{197CD219-19CB-4DE1-A64C-ACF2EDCBE59E}';

/// {@category Interface}
/// {@category com}
class IMFSequencerSource extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IMFSequencerSource(Pointer<COMObject> ptr) : super(ptr);

  int AppendTopology(
    Pointer<COMObject> pTopology,
    int dwFlags,
    Pointer<Uint32> pdwId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTopology,
            Uint32 dwFlags,
            Pointer<Uint32> pdwId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTopology,
            int dwFlags,
            Pointer<Uint32> pdwId,
          )>()(
        ptr.ref.lpVtbl,
        pTopology,
        dwFlags,
        pdwId,
      );

  int DeleteTopology(
    int dwId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwId,
          )>()(
        ptr.ref.lpVtbl,
        dwId,
      );

  int GetPresentationContext(
    Pointer<COMObject> pPD,
    Pointer<Uint32> pId,
    Pointer<Pointer<COMObject>> ppTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pPD,
            Pointer<Uint32> pId,
            Pointer<Pointer<COMObject>> ppTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pPD,
            Pointer<Uint32> pId,
            Pointer<Pointer<COMObject>> ppTopology,
          )>()(
        ptr.ref.lpVtbl,
        pPD,
        pId,
        ppTopology,
      );

  int UpdateTopology(
    int dwId,
    Pointer<COMObject> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwId,
            Pointer<COMObject> pTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwId,
            Pointer<COMObject> pTopology,
          )>()(
        ptr.ref.lpVtbl,
        dwId,
        pTopology,
      );

  int UpdateTopologyFlags(
    int dwId,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwId,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwId,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwId,
        dwFlags,
      );
}
