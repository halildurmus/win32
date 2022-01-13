// IQueryInfo.dart

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
import '../../ui/shell/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IQueryInfo = '{00021500-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class IQueryInfo extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IQueryInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetInfoTip(
    int dwFlags,
    Pointer<Pointer<Utf16>> ppwszTip,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwFlags,
            Pointer<Pointer<Utf16>> ppwszTip,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<Pointer<Utf16>> ppwszTip,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        ppwszTip,
      );

  int GetInfoFlags(
    Pointer<Uint32> pdwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwFlags,
      );
}
