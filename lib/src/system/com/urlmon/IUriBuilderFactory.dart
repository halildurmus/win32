// IUriBuilderFactory.dart

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
import '../../../system/com/IUriBuilder.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IUriBuilderFactory = '{E982CE48-0B96-440C-BC37-0C869B27A29E}';

/// {@category Interface}
/// {@category com}
class IUriBuilderFactory extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IUriBuilderFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateIUriBuilder(
    int dwFlags,
    int dwReserved,
    Pointer<Pointer<COMObject>> ppIUriBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            IntPtr dwReserved,
            Pointer<Pointer<COMObject>> ppIUriBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dwReserved,
            Pointer<Pointer<COMObject>> ppIUriBuilder,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dwReserved,
        ppIUriBuilder,
      );

  int CreateInitializedIUriBuilder(
    int dwFlags,
    int dwReserved,
    Pointer<Pointer<COMObject>> ppIUriBuilder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            IntPtr dwReserved,
            Pointer<Pointer<COMObject>> ppIUriBuilder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            int dwReserved,
            Pointer<Pointer<COMObject>> ppIUriBuilder,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        dwReserved,
        ppIUriBuilder,
      );
}
