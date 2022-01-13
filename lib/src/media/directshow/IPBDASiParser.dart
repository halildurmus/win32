// IPBDASiParser.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/directshow/IPBDA_EIT.dart';
import '../../media/directshow/IPBDA_Services.dart';

/// @nodoc
const IID_IPBDASiParser = '{9DE49A74-ABA2-4A18-93E1-21F17F95C3C3}';

/// {@category Interface}
/// {@category com}
class IPBDASiParser extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IPBDASiParser(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int GetEIT(
    int dwSize,
    Pointer<Uint8> pBuffer,
    Pointer<Pointer<COMObject>> ppEIT,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSize,
            Pointer<Uint8> pBuffer,
            Pointer<Pointer<COMObject>> ppEIT,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSize,
            Pointer<Uint8> pBuffer,
            Pointer<Pointer<COMObject>> ppEIT,
          )>()(
        ptr.ref.lpVtbl,
        dwSize,
        pBuffer,
        ppEIT,
      );

  int GetServices(
    int dwSize,
    Pointer<Uint8> pBuffer,
    Pointer<Pointer<COMObject>> ppServices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSize,
            Pointer<Uint8> pBuffer,
            Pointer<Pointer<COMObject>> ppServices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSize,
            Pointer<Uint8> pBuffer,
            Pointer<Pointer<COMObject>> ppServices,
          )>()(
        ptr.ref.lpVtbl,
        dwSize,
        pBuffer,
        ppServices,
      );
}
