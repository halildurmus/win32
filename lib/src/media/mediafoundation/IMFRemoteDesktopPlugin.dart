// IMFRemoteDesktopPlugin.dart

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
const IID_IMFRemoteDesktopPlugin = '{1CDE6309-CAE0-4940-907E-C1EC9C3D1D4A}';

/// {@category Interface}
/// {@category com}
class IMFRemoteDesktopPlugin extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFRemoteDesktopPlugin(Pointer<COMObject> ptr) : super(ptr);

  int UpdateTopology(
    Pointer<COMObject> pTopology,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pTopology,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pTopology,
          )>()(
        ptr.ref.lpVtbl,
        pTopology,
      );
}
