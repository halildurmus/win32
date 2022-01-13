// IVMRImagePresenterConfig.dart

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
const IID_IVMRImagePresenterConfig = '{9F3A1C85-8555-49BA-935F-BE5B5B29D178}';

/// {@category Interface}
/// {@category com}
class IVMRImagePresenterConfig extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IVMRImagePresenterConfig(Pointer<COMObject> ptr) : super(ptr);

  int SetRenderingPrefs(
    int dwRenderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRenderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRenderFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwRenderFlags,
      );

  int GetRenderingPrefs(
    Pointer<Uint32> dwRenderFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> dwRenderFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> dwRenderFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwRenderFlags,
      );
}
