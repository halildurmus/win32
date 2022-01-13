// IPrintCoreHelperUni.dart

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

import '../../graphics/printing/IPrintCoreHelper.dart';
import '../../graphics/gdi/structs.g.dart';
import '../../system/com/IStream.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintCoreHelperUni = '{7E8E51D6-E5EE-4426-817B-958B9444EB79}';

/// {@category Interface}
/// {@category com}
class IPrintCoreHelperUni extends IPrintCoreHelper {
  // vtable begins at 12, is 2 entries long.
  IPrintCoreHelperUni(Pointer<COMObject> ptr) : super(ptr);

  int CreateGDLSnapshot(
    Pointer<DEVMODE> pDevmode,
    int cbSize,
    int dwFlags,
    Pointer<Pointer<COMObject>> ppSnapshotStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            Uint32 cbSize,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppSnapshotStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<DEVMODE> pDevmode,
            int cbSize,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppSnapshotStream,
          )>()(
        ptr.ref.lpVtbl,
        pDevmode,
        cbSize,
        dwFlags,
        ppSnapshotStream,
      );

  int CreateDefaultGDLSnapshot(
    int dwFlags,
    Pointer<Pointer<COMObject>> ppSnapshotStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<Pointer<COMObject>> ppSnapshotStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<COMObject>> ppSnapshotStream,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppSnapshotStream,
      );
}
