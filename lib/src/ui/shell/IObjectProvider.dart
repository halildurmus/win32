// IObjectProvider.dart

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
const IID_IObjectProvider = '{A6087428-3BE3-4D73-B308-7C04A540BF1A}';

/// {@category Interface}
/// {@category com}
class IObjectProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IObjectProvider(Pointer<COMObject> ptr) : super(ptr);

  int QueryObject(
    Pointer<GUID> guidObject,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidObject,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidObject,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvOut,
          )>()(
        ptr.ref.lpVtbl,
        guidObject,
        riid,
        ppvOut,
      );
}
