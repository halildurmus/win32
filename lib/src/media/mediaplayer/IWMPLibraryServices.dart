// IWMPLibraryServices.dart

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
import '../../media/mediaplayer/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediaplayer/IWMPLibrary.dart';

/// @nodoc
const IID_IWMPLibraryServices = '{39C2F8D5-1CF2-4D5E-AE09-D73492CF9EAA}';

/// {@category Interface}
/// {@category com}
class IWMPLibraryServices extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMPLibraryServices(Pointer<COMObject> ptr) : super(ptr);

  int getCountByType(
    int wmplt,
    Pointer<Int32> plCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 wmplt,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wmplt,
            Pointer<Int32> plCount,
          )>()(
        ptr.ref.lpVtbl,
        wmplt,
        plCount,
      );

  int getLibraryByType(
    int wmplt,
    int lIndex,
    Pointer<Pointer<COMObject>> ppIWMPLibrary,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 wmplt,
            Int32 lIndex,
            Pointer<Pointer<COMObject>> ppIWMPLibrary,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wmplt,
            int lIndex,
            Pointer<Pointer<COMObject>> ppIWMPLibrary,
          )>()(
        ptr.ref.lpVtbl,
        wmplt,
        lIndex,
        ppIWMPLibrary,
      );
}
