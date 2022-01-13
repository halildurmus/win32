// IAMPhysicalPinInfo.dart

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

/// @nodoc
const IID_IAMPhysicalPinInfo = '{F938C991-3029-11CF-8C44-00AA006B6814}';

/// {@category Interface}
/// {@category com}
class IAMPhysicalPinInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAMPhysicalPinInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetPhysicalType(
    Pointer<Int32> pType,
    Pointer<Pointer<Utf16>> ppszType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pType,
            Pointer<Pointer<Utf16>> ppszType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pType,
            Pointer<Pointer<Utf16>> ppszType,
          )>()(
        ptr.ref.lpVtbl,
        pType,
        ppszType,
      );
}
