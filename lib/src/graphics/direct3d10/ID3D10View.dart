// ID3D10View.dart

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

import '../../graphics/direct3d10/ID3D10DeviceChild.dart';
import '../../graphics/direct3d10/ID3D10Resource.dart';

/// @nodoc
const IID_ID3D10View = '{C902B03F-60A7-49BA-9936-2A3AB37A7E33}';

/// {@category Interface}
/// {@category com}
class ID3D10View extends ID3D10DeviceChild {
  // vtable begins at 7, is 1 entries long.
  ID3D10View(Pointer<COMObject> ptr) : super(ptr);

  void GetResource(
    Pointer<Pointer<COMObject>> ppResource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResource,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppResource,
          )>()(
        ptr.ref.lpVtbl,
        ppResource,
      );
}
