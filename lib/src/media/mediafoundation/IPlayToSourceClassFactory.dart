// IPlayToSourceClassFactory.dart

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
import '../../media/mediafoundation/IPlayToControl.dart';
import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPlayToSourceClassFactory = '{842B32A3-9B9B-4D1C-B3F3-49193248A554}';

/// {@category Interface}
/// {@category com}
class IPlayToSourceClassFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPlayToSourceClassFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateInstance(
    int dwFlags,
    Pointer<COMObject> pControl,
    Pointer<Pointer<COMObject>> ppSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwFlags,
            Pointer<COMObject> pControl,
            Pointer<Pointer<COMObject>> ppSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwFlags,
            Pointer<COMObject> pControl,
            Pointer<Pointer<COMObject>> ppSource,
          )>()(
        ptr.ref.lpVtbl,
        dwFlags,
        pControl,
        ppSource,
      );
}
