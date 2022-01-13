// ISyncFilter.dart

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
import '../../system/windowssync/ISyncFilter.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISyncFilter = '{087A3F15-0FCB-44C1-9639-53C14E2B5506}';

/// {@category Interface}
/// {@category com}
class ISyncFilter extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISyncFilter(Pointer<COMObject> ptr) : super(ptr);

  int IsIdentical(
    Pointer<COMObject> pSyncFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pSyncFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pSyncFilter,
          )>()(
        ptr.ref.lpVtbl,
        pSyncFilter,
      );

  int Serialize(
    Pointer<Uint8> pbSyncFilter,
    Pointer<Uint32> pcbSyncFilter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbSyncFilter,
            Pointer<Uint32> pcbSyncFilter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbSyncFilter,
            Pointer<Uint32> pcbSyncFilter,
          )>()(
        ptr.ref.lpVtbl,
        pbSyncFilter,
        pcbSyncFilter,
      );
}
