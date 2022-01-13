// IDirectXVideoMemoryConfiguration.dart

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
const IID_IDirectXVideoMemoryConfiguration =
    '{B7F916DD-DB3B-49C1-84D7-E45EF99EC726}';

/// {@category Interface}
/// {@category com}
class IDirectXVideoMemoryConfiguration extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectXVideoMemoryConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int GetAvailableSurfaceTypeByIndex(
    int dwTypeIndex,
    Pointer<Int32> pdwType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwTypeIndex,
            Pointer<Int32> pdwType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwTypeIndex,
            Pointer<Int32> pdwType,
          )>()(
        ptr.ref.lpVtbl,
        dwTypeIndex,
        pdwType,
      );

  int SetSurfaceType(
    int dwType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwType,
          )>()(
        ptr.ref.lpVtbl,
        dwType,
      );
}
