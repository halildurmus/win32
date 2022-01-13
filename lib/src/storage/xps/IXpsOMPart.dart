// IXpsOMPart.dart

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
import '../../storage/packaging/opc/IOpcPartUri.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IXpsOMPart = '{74EB2F0B-A91E-4486-AFAC-0FABECA3DFC6}';

/// {@category Interface}
/// {@category com}
class IXpsOMPart extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IXpsOMPart(Pointer<COMObject> ptr) : super(ptr);

  int GetPartName(
    Pointer<Pointer<COMObject>> partUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> partUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> partUri,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
      );

  int SetPartName(
    Pointer<COMObject> partUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> partUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> partUri,
          )>()(
        ptr.ref.lpVtbl,
        partUri,
      );
}
