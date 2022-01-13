// IMFTopologyNodeAttributeEditor.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFTopologyNodeAttributeEditor =
    '{676AA6DD-238A-410D-BB99-65668D01605A}';

/// {@category Interface}
/// {@category com}
class IMFTopologyNodeAttributeEditor extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFTopologyNodeAttributeEditor(Pointer<COMObject> ptr) : super(ptr);

  int UpdateNodeAttributes(
    int TopoId,
    int cUpdates,
    Pointer<MFTOPONODE_ATTRIBUTE_UPDATE> pUpdates,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint64 TopoId,
            Uint32 cUpdates,
            Pointer<MFTOPONODE_ATTRIBUTE_UPDATE> pUpdates,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int TopoId,
            int cUpdates,
            Pointer<MFTOPONODE_ATTRIBUTE_UPDATE> pUpdates,
          )>()(
        ptr.ref.lpVtbl,
        TopoId,
        cUpdates,
        pUpdates,
      );
}
