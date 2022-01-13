// ITfInputProcessorProfilesEx.dart

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

import '../../ui/textservices/ITfInputProcessorProfiles.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITfInputProcessorProfilesEx =
    '{892F230F-FE00-4A41-A98E-FCD6DE0D35EF}';

/// {@category Interface}
/// {@category com}
class ITfInputProcessorProfilesEx extends ITfInputProcessorProfiles {
  // vtable begins at 21, is 1 entries long.
  ITfInputProcessorProfilesEx(Pointer<COMObject> ptr) : super(ptr);

  int SetLanguageProfileDisplayName(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    Pointer<Utf16> pchFile,
    int cchFile,
    int uResId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Pointer<Utf16> pchFile,
            Uint32 cchFile,
            Uint32 uResId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            Pointer<Utf16> pchFile,
            int cchFile,
            int uResId,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        pchFile,
        cchFile,
        uResId,
      );
}
