// IInternetBindInfo.dart

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
import '../../../system/com/structs.g.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IInternetBindInfo = '{79EAC9E1-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IInternetBindInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IInternetBindInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetBindInfo(
    Pointer<Uint32> grfBINDF,
    Pointer<BINDINFO> pbindinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> grfBINDF,
            Pointer<BINDINFO> pbindinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> grfBINDF,
            Pointer<BINDINFO> pbindinfo,
          )>()(
        ptr.ref.lpVtbl,
        grfBINDF,
        pbindinfo,
      );

  int GetBindString(
    int ulStringType,
    Pointer<Pointer<Utf16>> ppwzStr,
    int cEl,
    Pointer<Uint32> pcElFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulStringType,
            Pointer<Pointer<Utf16>> ppwzStr,
            Uint32 cEl,
            Pointer<Uint32> pcElFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulStringType,
            Pointer<Pointer<Utf16>> ppwzStr,
            int cEl,
            Pointer<Uint32> pcElFetched,
          )>()(
        ptr.ref.lpVtbl,
        ulStringType,
        ppwzStr,
        cEl,
        pcElFetched,
      );
}
