// IServiceProvider.dart

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
const IID_IServiceProvider = '{6D5140C1-7436-11CE-8034-00AA006009FA}';

/// {@category Interface}
/// {@category com}
class IServiceProvider extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IServiceProvider(Pointer<COMObject> ptr) : super(ptr);

  int QueryService(
    Pointer<GUID> guidService,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvObject,
          )>()(
        ptr.ref.lpVtbl,
        guidService,
        riid,
        ppvObject,
      );
}
