// ID2D1ImageSource.dart

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

import '../../graphics/direct2d/ID2D1Image.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ID2D1ImageSource = '{C9B664E5-74A1-4378-9AC2-EEFC37A3F4D8}';

/// {@category Interface}
/// {@category com}
class ID2D1ImageSource extends ID2D1Image {
  // vtable begins at 4, is 2 entries long.
  ID2D1ImageSource(Pointer<COMObject> ptr) : super(ptr);

  int OfferResources() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int TryReclaimResources(
    Pointer<Int32> resourcesDiscarded,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> resourcesDiscarded,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> resourcesDiscarded,
          )>()(
        ptr.ref.lpVtbl,
        resourcesDiscarded,
      );
}
