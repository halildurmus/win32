// IMFMuxStreamAttributesManager.dart

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
import '../../media/mediafoundation/IMFAttributes.dart';

/// @nodoc
const IID_IMFMuxStreamAttributesManager =
    '{CE8BD576-E440-43B3-BE34-1E53F565F7E8}';

/// {@category Interface}
/// {@category com}
class IMFMuxStreamAttributesManager extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IMFMuxStreamAttributesManager(Pointer<COMObject> ptr) : super(ptr);

  int GetStreamCount(
    Pointer<Uint32> pdwMuxStreamCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwMuxStreamCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwMuxStreamCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwMuxStreamCount,
      );

  int GetAttributes(
    int dwMuxStreamIndex,
    Pointer<Pointer<COMObject>> ppStreamAttributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMuxStreamIndex,
            Pointer<Pointer<COMObject>> ppStreamAttributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMuxStreamIndex,
            Pointer<Pointer<COMObject>> ppStreamAttributes,
          )>()(
        ptr.ref.lpVtbl,
        dwMuxStreamIndex,
        ppStreamAttributes,
      );
}
