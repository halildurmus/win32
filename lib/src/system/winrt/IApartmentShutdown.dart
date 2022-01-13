// IApartmentShutdown.dart

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

/// @nodoc
const IID_IApartmentShutdown = '{A2F05A09-27A2-42B5-BC0E-AC163EF49D9B}';

/// {@category Interface}
/// {@category com}
class IApartmentShutdown extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IApartmentShutdown(Pointer<COMObject> ptr) : super(ptr);

  void OnUninitialize(
    int ui64ApartmentIdentifier,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint64 ui64ApartmentIdentifier,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int ui64ApartmentIdentifier,
          )>()(
        ptr.ref.lpVtbl,
        ui64ApartmentIdentifier,
      );
}
