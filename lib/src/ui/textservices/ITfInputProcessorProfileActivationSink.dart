// ITfInputProcessorProfileActivationSink.dart

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
import '../../ui/textservices/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfInputProcessorProfileActivationSink =
    '{71C6E74E-0F28-11D8-A82A-00065B84435C}';

/// {@category Interface}
/// {@category com}
class ITfInputProcessorProfileActivationSink extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ITfInputProcessorProfileActivationSink(Pointer<COMObject> ptr) : super(ptr);

  int OnActivated(
    int dwProfileType,
    int langid,
    Pointer<GUID> clsid,
    Pointer<GUID> catid,
    Pointer<GUID> guidProfile,
    int hkl,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProfileType,
            Uint16 langid,
            Pointer<GUID> clsid,
            Pointer<GUID> catid,
            Pointer<GUID> guidProfile,
            IntPtr hkl,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProfileType,
            int langid,
            Pointer<GUID> clsid,
            Pointer<GUID> catid,
            Pointer<GUID> guidProfile,
            int hkl,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwProfileType,
        langid,
        clsid,
        catid,
        guidProfile,
        hkl,
        dwFlags,
      );
}
