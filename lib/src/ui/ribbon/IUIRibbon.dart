// IUIRibbon.dart

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
import '../../system/com/IStream.dart';

/// @nodoc
const IID_IUIRibbon = '{803982AB-370A-4F7E-A9E7-8784036A6E26}';

/// {@category Interface}
/// {@category com}
class IUIRibbon extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IUIRibbon(Pointer<COMObject> ptr) : super(ptr);

  int GetHeight(
    Pointer<Uint32> cy,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> cy,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> cy,
          )>()(
        ptr.ref.lpVtbl,
        cy,
      );

  int LoadSettingsFromStream(
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
      );

  int SaveSettingsToStream(
    Pointer<COMObject> pStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStream,
          )>()(
        ptr.ref.lpVtbl,
        pStream,
      );
}
