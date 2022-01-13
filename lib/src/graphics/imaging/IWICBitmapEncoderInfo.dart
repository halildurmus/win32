// IWICBitmapEncoderInfo.dart

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

import '../../graphics/imaging/IWICBitmapCodecInfo.dart';
import '../../graphics/imaging/IWICBitmapEncoder.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapEncoderInfo = '{94C9B4EE-A09F-4F92-8A1E-4A9BCE7E76FB}';

/// {@category Interface}
/// {@category com}
class IWICBitmapEncoderInfo extends IWICBitmapCodecInfo {
  // vtable begins at 23, is 1 entries long.
  IWICBitmapEncoderInfo(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    Pointer<Pointer<COMObject>> ppIBitmapEncoder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapEncoder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIBitmapEncoder,
          )>()(
        ptr.ref.lpVtbl,
        ppIBitmapEncoder,
      );
}
