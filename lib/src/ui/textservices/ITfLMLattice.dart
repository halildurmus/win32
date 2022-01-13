// ITfLMLattice.dart

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
import '../../ui/textservices/IEnumTfLatticeElements.dart';

/// @nodoc
const IID_ITfLMLattice = '{D4236675-A5BF-4570-9D42-5D6D7B02D59B}';

/// {@category Interface}
/// {@category com}
class ITfLMLattice extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ITfLMLattice(Pointer<COMObject> ptr) : super(ptr);

  int QueryType(
    Pointer<GUID> rguidType,
    Pointer<Int32> pfSupported,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rguidType,
            Pointer<Int32> pfSupported,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rguidType,
            Pointer<Int32> pfSupported,
          )>()(
        ptr.ref.lpVtbl,
        rguidType,
        pfSupported,
      );

  int EnumLatticeElements(
    int dwFrameStart,
    Pointer<GUID> rguidType,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFrameStart,
            Pointer<GUID> rguidType,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFrameStart,
            Pointer<GUID> rguidType,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        dwFrameStart,
        rguidType,
        ppEnum,
      );
}
