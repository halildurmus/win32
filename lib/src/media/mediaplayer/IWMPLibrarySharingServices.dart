// IWMPLibrarySharingServices.dart

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
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPLibrarySharingServices = '{82CBA86B-9F04-474B-A365-D6DD1466E541}';

/// {@category Interface}
/// {@category com}
class IWMPLibrarySharingServices extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IWMPLibrarySharingServices(Pointer<COMObject> ptr) : super(ptr);

  int isLibraryShared(
    Pointer<Int16> pvbShared,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbShared,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbShared,
          )>()(
        ptr.ref.lpVtbl,
        pvbShared,
      );

  int isLibrarySharingEnabled(
    Pointer<Int16> pvbEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pvbEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pvbEnabled,
      );

  int showLibrarySharing() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
