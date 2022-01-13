// ITfActiveLanguageProfileNotifySink.dart

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
const IID_ITfActiveLanguageProfileNotifySink =
    '{B246CB75-A93E-4652-BF8C-B3FE0CFD7E57}';

/// {@category Interface}
/// {@category com}
class ITfActiveLanguageProfileNotifySink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfActiveLanguageProfileNotifySink(Pointer<COMObject> ptr) : super(ptr);

  int OnActivated(
    Pointer<GUID> clsid,
    Pointer<GUID> guidProfile,
    int fActivated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<GUID> guidProfile,
            Int32 fActivated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> clsid,
            Pointer<GUID> guidProfile,
            int fActivated,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        guidProfile,
        fActivated,
      );
}
