// ICreateDevEnum.dart

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
import '../../system/com/IEnumMoniker.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ICreateDevEnum = '{29840822-5B84-11D0-BD3B-00A0C911CE86}';

/// {@category Interface}
/// {@category com}
class ICreateDevEnum extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ICreateDevEnum(Pointer<COMObject> ptr) : super(ptr);

  int CreateClassEnumerator(
    Pointer<GUID> clsidDeviceClass,
    Pointer<Pointer<COMObject>> ppEnumMoniker,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsidDeviceClass,
            Pointer<Pointer<COMObject>> ppEnumMoniker,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsidDeviceClass,
            Pointer<Pointer<COMObject>> ppEnumMoniker,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        clsidDeviceClass,
        ppEnumMoniker,
        dwFlags,
      );
}
