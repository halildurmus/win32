// ITfInputProcessorProfileMgr.dart

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
import '../../ui/textservices/IEnumTfInputProcessorProfiles.dart';

/// @nodoc
const IID_ITfInputProcessorProfileMgr =
    '{71C6E74C-0F28-11D8-A82A-00065B84435C}';

/// {@category Interface}
/// {@category com}
class ITfInputProcessorProfileMgr extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ITfInputProcessorProfileMgr(Pointer<COMObject> ptr) : super(ptr);

  int ActivateProfile(
    int dwProfileType,
    int langid,
    Pointer<GUID> clsid,
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
            Pointer<GUID> guidProfile,
            int hkl,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwProfileType,
        langid,
        clsid,
        guidProfile,
        hkl,
        dwFlags,
      );

  int DeactivateProfile(
    int dwProfileType,
    int langid,
    Pointer<GUID> clsid,
    Pointer<GUID> guidProfile,
    int hkl,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProfileType,
            Uint16 langid,
            Pointer<GUID> clsid,
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
            Pointer<GUID> guidProfile,
            int hkl,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwProfileType,
        langid,
        clsid,
        guidProfile,
        hkl,
        dwFlags,
      );

  int GetProfile(
    int dwProfileType,
    int langid,
    Pointer<GUID> clsid,
    Pointer<GUID> guidProfile,
    int hkl,
    Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProfileType,
            Uint16 langid,
            Pointer<GUID> clsid,
            Pointer<GUID> guidProfile,
            IntPtr hkl,
            Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProfileType,
            int langid,
            Pointer<GUID> clsid,
            Pointer<GUID> guidProfile,
            int hkl,
            Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        dwProfileType,
        langid,
        clsid,
        guidProfile,
        hkl,
        pProfile,
      );

  int EnumProfiles(
    int langid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        ppEnum,
      );

  int ReleaseInputProcessor(
    Pointer<GUID> rclsid,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        dwFlags,
      );

  int RegisterProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    Pointer<Utf16> pchDesc,
    int cchDesc,
    Pointer<Utf16> pchIconFile,
    int cchFile,
    int uIconIndex,
    int hklsubstitute,
    int dwPreferredLayout,
    int bEnabledByDefault,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Pointer<Utf16> pchDesc,
            Uint32 cchDesc,
            Pointer<Utf16> pchIconFile,
            Uint32 cchFile,
            Uint32 uIconIndex,
            IntPtr hklsubstitute,
            Uint32 dwPreferredLayout,
            Int32 bEnabledByDefault,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            Pointer<Utf16> pchDesc,
            int cchDesc,
            Pointer<Utf16> pchIconFile,
            int cchFile,
            int uIconIndex,
            int hklsubstitute,
            int dwPreferredLayout,
            int bEnabledByDefault,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        pchDesc,
        cchDesc,
        pchIconFile,
        cchFile,
        uIconIndex,
        hklsubstitute,
        dwPreferredLayout,
        bEnabledByDefault,
        dwFlags,
      );

  int UnregisterProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    int dwFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Uint32 dwFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            int dwFlags,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        dwFlags,
      );

  int GetActiveProfile(
    Pointer<GUID> catid,
    Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> catid,
            Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> catid,
            Pointer<TF_INPUTPROCESSORPROFILE> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        catid,
        pProfile,
      );
}
