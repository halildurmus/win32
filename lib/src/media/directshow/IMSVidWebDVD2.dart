// IMSVidWebDVD2.dart

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

import '../../media/directshow/IMSVidWebDVD.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMSVidWebDVD2 = '{7027212F-EE9A-4A7C-8B67-F023714CDAFF}';

/// {@category Interface}
/// {@category com}
class IMSVidWebDVD2 extends IMSVidWebDVD {
  // vtable begins at 127, is 2 entries long.
  IMSVidWebDVD2(Pointer<COMObject> ptr) : super(ptr);

  int get_Bookmark(
    Pointer<Pointer<Uint8>> ppData,
    Pointer<Uint32> pDataLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(127)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppData,
            Pointer<Uint32> pDataLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> ppData,
            Pointer<Uint32> pDataLength,
          )>()(
        ptr.ref.lpVtbl,
        ppData,
        pDataLength,
      );

  int put_Bookmark(
    Pointer<Uint8> pData,
    int dwDataLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(128)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Uint32 dwDataLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            int dwDataLength,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        dwDataLength,
      );
}
