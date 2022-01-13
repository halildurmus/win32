// IThumbnailExtractor.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../system/com/structuredstorage/IStorage.dart';
import '../../../graphics/gdi/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IThumbnailExtractor = '{969DC708-5C76-11D1-8D86-0000F804B057}';

/// {@category Interface}
/// {@category com}
class IThumbnailExtractor extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IThumbnailExtractor(Pointer<COMObject> ptr) : super(ptr);

  int ExtractThumbnail(
    Pointer<COMObject> pStg,
    int ulLength,
    int ulHeight,
    Pointer<Uint32> pulOutputLength,
    Pointer<Uint32> pulOutputHeight,
    Pointer<IntPtr> phOutputBitmap,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStg,
            Uint32 ulLength,
            Uint32 ulHeight,
            Pointer<Uint32> pulOutputLength,
            Pointer<Uint32> pulOutputHeight,
            Pointer<IntPtr> phOutputBitmap,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStg,
            int ulLength,
            int ulHeight,
            Pointer<Uint32> pulOutputLength,
            Pointer<Uint32> pulOutputHeight,
            Pointer<IntPtr> phOutputBitmap,
          )>()(
        ptr.ref.lpVtbl,
        pStg,
        ulLength,
        ulHeight,
        pulOutputLength,
        pulOutputHeight,
        phOutputBitmap,
      );

  int OnFileUpdated(
    Pointer<COMObject> pStg,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pStg,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pStg,
          )>()(
        ptr.ref.lpVtbl,
        pStg,
      );
}
