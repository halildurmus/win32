// IWMProfileManager.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../media/windowsmediaformat/IWMProfile.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMProfileManager = '{D16679F2-6CA0-472D-8D31-2F5D55AEE155}';

/// {@category Interface}
/// {@category com}
class IWMProfileManager extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IWMProfileManager(Pointer<COMObject> ptr) : super(ptr);

  int CreateEmptyProfile(
    int dwVersion,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 dwVersion,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwVersion,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        dwVersion,
        ppProfile,
      );

  int LoadProfileByID(
    Pointer<GUID> guidProfile,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProfile,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProfile,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        guidProfile,
        ppProfile,
      );

  int LoadProfileByData(
    Pointer<Utf16> pwszProfile,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszProfile,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszProfile,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        pwszProfile,
        ppProfile,
      );

  int SaveProfile(
    Pointer<COMObject> pIWMProfile,
    Pointer<Utf16> pwszProfile,
    Pointer<Uint32> pdwLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMProfile,
            Pointer<Utf16> pwszProfile,
            Pointer<Uint32> pdwLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMProfile,
            Pointer<Utf16> pwszProfile,
            Pointer<Uint32> pdwLength,
          )>()(
        ptr.ref.lpVtbl,
        pIWMProfile,
        pwszProfile,
        pdwLength,
      );

  int GetSystemProfileCount(
    Pointer<Uint32> pcProfiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcProfiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcProfiles,
          )>()(
        ptr.ref.lpVtbl,
        pcProfiles,
      );

  int LoadSystemProfile(
    int dwProfileIndex,
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProfileIndex,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProfileIndex,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        dwProfileIndex,
        ppProfile,
      );
}
