// IStdMarshalInfo.dart

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
const IID_IStdMarshalInfo = '{00000018-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IStdMarshalInfo extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IStdMarshalInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetClassForHandler(
    int dwDestContext,
    Pointer pvDestContext,
    Pointer<GUID> pClsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDestContext,
            Pointer pvDestContext,
            Pointer<GUID> pClsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDestContext,
            Pointer pvDestContext,
            Pointer<GUID> pClsid,
          )>()(
        ptr.ref.lpVtbl,
        dwDestContext,
        pvDestContext,
        pClsid,
      );
}
