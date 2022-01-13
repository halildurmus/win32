// ITfInputProcessorProfiles.dart

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
import '../../system/com/IEnumGUID.dart';
import '../../ui/textservices/IEnumTfLanguageProfiles.dart';
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfInputProcessorProfiles = '{1F02B6C5-7842-4EE6-8A0B-9A24183A95CA}';

/// {@category Interface}
/// {@category com}
class ITfInputProcessorProfiles extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  ITfInputProcessorProfiles(Pointer<COMObject> ptr) : super(ptr);

  int Register(
    Pointer<GUID> rclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
      );

  int Unregister(
    Pointer<GUID> rclsid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
      );

  int AddLanguageProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    Pointer<Utf16> pchDesc,
    int cchDesc,
    Pointer<Utf16> pchIconFile,
    int cchFile,
    int uIconIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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
      );

  int RemoveLanguageProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
      );

  int EnumInputProcessorInfo(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );

  int GetDefaultLanguageProfile(
    int langid,
    Pointer<GUID> catid,
    Pointer<GUID> pclsid,
    Pointer<GUID> pguidProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<GUID> catid,
            Pointer<GUID> pclsid,
            Pointer<GUID> pguidProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<GUID> catid,
            Pointer<GUID> pclsid,
            Pointer<GUID> pguidProfile,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        catid,
        pclsid,
        pguidProfile,
      );

  int SetDefaultLanguageProfile(
    int langid,
    Pointer<GUID> rclsid,
    Pointer<GUID> guidProfiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<GUID> rclsid,
            Pointer<GUID> guidProfiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<GUID> rclsid,
            Pointer<GUID> guidProfiles,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        rclsid,
        guidProfiles,
      );

  int ActivateLanguageProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfiles,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfiles,
      );

  int GetActiveLanguageProfile(
    Pointer<GUID> rclsid,
    Pointer<Uint16> plangid,
    Pointer<GUID> pguidProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Uint16> plangid,
            Pointer<GUID> pguidProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            Pointer<Uint16> plangid,
            Pointer<GUID> pguidProfile,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        plangid,
        pguidProfile,
      );

  int GetLanguageProfileDescription(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    Pointer<Pointer<Utf16>> pbstrProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Pointer<Pointer<Utf16>> pbstrProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            Pointer<Pointer<Utf16>> pbstrProfile,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        pbstrProfile,
      );

  int GetCurrentLanguage(
    Pointer<Uint16> plangid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> plangid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> plangid,
          )>()(
        ptr.ref.lpVtbl,
        plangid,
      );

  int ChangeCurrentLanguage(
    int langid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
          )>()(
        ptr.ref.lpVtbl,
        langid,
      );

  int GetLanguageList(
    Pointer<Pointer<Uint16>> ppLangId,
    Pointer<Uint32> pulCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppLangId,
            Pointer<Uint32> pulCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint16>> ppLangId,
            Pointer<Uint32> pulCount,
          )>()(
        ptr.ref.lpVtbl,
        ppLangId,
        pulCount,
      );

  int EnumLanguageProfiles(
    int langid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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

  int EnableLanguageProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        fEnable,
      );

  int IsEnabledLanguageProfile(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    Pointer<Int32> pfEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Pointer<Int32> pfEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            Pointer<Int32> pfEnable,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        pfEnable,
      );

  int EnableLanguageProfileByDefault(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            Int32 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        fEnable,
      );

  int SubstituteKeyboardLayout(
    Pointer<GUID> rclsid,
    int langid,
    Pointer<GUID> guidProfile,
    int hKL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> rclsid,
            Uint16 langid,
            Pointer<GUID> guidProfile,
            IntPtr hKL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> rclsid,
            int langid,
            Pointer<GUID> guidProfile,
            int hKL,
          )>()(
        ptr.ref.lpVtbl,
        rclsid,
        langid,
        guidProfile,
        hKL,
      );
}
