// IWICColorTransform.dart

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

import '../../graphics/imaging/IWICBitmapSource.dart';
import '../../graphics/imaging/IWICColorContext.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICColorTransform = '{B66F034F-D0E2-40AB-B436-6DE39E321A94}';

/// {@category Interface}
/// {@category com}
class IWICColorTransform extends IWICBitmapSource {
  // vtable begins at 8, is 1 entries long.
  IWICColorTransform(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> pIBitmapSource,
    Pointer<COMObject> pIContextSource,
    Pointer<COMObject> pIContextDest,
    Pointer<GUID> pixelFmtDest,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            Pointer<COMObject> pIContextSource,
            Pointer<COMObject> pIContextDest,
            Pointer<GUID> pixelFmtDest,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIBitmapSource,
            Pointer<COMObject> pIContextSource,
            Pointer<COMObject> pIContextDest,
            Pointer<GUID> pixelFmtDest,
          )>()(
        ptr.ref.lpVtbl,
        pIBitmapSource,
        pIContextSource,
        pIContextDest,
        pixelFmtDest,
      );
}
