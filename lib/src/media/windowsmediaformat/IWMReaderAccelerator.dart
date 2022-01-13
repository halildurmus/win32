// IWMReaderAccelerator.dart

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
import '../../media/windowsmediaformat/structs.g.dart';

/// @nodoc
const IID_IWMReaderAccelerator = '{BDDC4D08-944D-4D52-A612-46C3FDA07DD4}';

/// {@category Interface}
/// {@category com}
class IWMReaderAccelerator extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMReaderAccelerator(Pointer<COMObject> ptr) : super(ptr);

  int GetCodecInterface(
    int dwOutputNum,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvCodecInterface,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvCodecInterface,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvCodecInterface,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        riid,
        ppvCodecInterface,
      );

  int Notify(
    int dwOutputNum,
    Pointer<WM_MEDIA_TYPE> pSubtype,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<WM_MEDIA_TYPE> pSubtype,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<WM_MEDIA_TYPE> pSubtype,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pSubtype,
      );
}
