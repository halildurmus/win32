// IWMDMOperation3.dart

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

import '../../media/devicemanager/IWMDMOperation.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMOperation3 = '{D1F9B46A-9CA8-46D8-9D0F-1EC9BAE54919}';

/// {@category Interface}
/// {@category com}
class IWMDMOperation3 extends IWMDMOperation {
  // vtable begins at 13, is 1 entries long.
  IWMDMOperation3(Pointer<COMObject> ptr) : super(ptr);

  int TransferObjectDataOnClearChannel(
    Pointer<Uint8> pData,
    Pointer<Uint32> pdwSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pData,
            Pointer<Uint32> pdwSize,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        pdwSize,
      );
}
