// IBDA_ConditionalAccess.dart

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
import '../../media/directshow/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IBDA_ConditionalAccess = '{CD51F1E0-7BE9-4123-8482-A2A796C0A6B0}';

/// {@category Interface}
/// {@category com}
class IBDA_ConditionalAccess extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IBDA_ConditionalAccess(Pointer<COMObject> ptr) : super(ptr);

  int get_SmartCardStatus(
    Pointer<Int32> pCardStatus,
    Pointer<Int32> pCardAssociation,
    Pointer<Pointer<Utf16>> pbstrCardError,
    Pointer<Int16> pfOOBLocked,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pCardStatus,
            Pointer<Int32> pCardAssociation,
            Pointer<Pointer<Utf16>> pbstrCardError,
            Pointer<Int16> pfOOBLocked,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pCardStatus,
            Pointer<Int32> pCardAssociation,
            Pointer<Pointer<Utf16>> pbstrCardError,
            Pointer<Int16> pfOOBLocked,
          )>()(
        ptr.ref.lpVtbl,
        pCardStatus,
        pCardAssociation,
        pbstrCardError,
        pfOOBLocked,
      );

  int get_SmartCardInfo(
    Pointer<Pointer<Utf16>> pbstrCardName,
    Pointer<Pointer<Utf16>> pbstrCardManufacturer,
    Pointer<Int16> pfDaylightSavings,
    Pointer<Uint8> pbyRatingRegion,
    Pointer<Int32> plTimeZoneOffsetMinutes,
    Pointer<Pointer<Utf16>> pbstrLanguage,
    Pointer<EALocationCodeType> pEALocationCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCardName,
            Pointer<Pointer<Utf16>> pbstrCardManufacturer,
            Pointer<Int16> pfDaylightSavings,
            Pointer<Uint8> pbyRatingRegion,
            Pointer<Int32> plTimeZoneOffsetMinutes,
            Pointer<Pointer<Utf16>> pbstrLanguage,
            Pointer<EALocationCodeType> pEALocationCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrCardName,
            Pointer<Pointer<Utf16>> pbstrCardManufacturer,
            Pointer<Int16> pfDaylightSavings,
            Pointer<Uint8> pbyRatingRegion,
            Pointer<Int32> plTimeZoneOffsetMinutes,
            Pointer<Pointer<Utf16>> pbstrLanguage,
            Pointer<EALocationCodeType> pEALocationCode,
          )>()(
        ptr.ref.lpVtbl,
        pbstrCardName,
        pbstrCardManufacturer,
        pfDaylightSavings,
        pbyRatingRegion,
        plTimeZoneOffsetMinutes,
        pbstrLanguage,
        pEALocationCode,
      );

  int get_SmartCardApplications(
    Pointer<Uint32> pulcApplications,
    int ulcApplicationsMax,
    Pointer<SmartCardApplication> rgApplications,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulcApplications,
            Uint32 ulcApplicationsMax,
            Pointer<SmartCardApplication> rgApplications,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulcApplications,
            int ulcApplicationsMax,
            Pointer<SmartCardApplication> rgApplications,
          )>()(
        ptr.ref.lpVtbl,
        pulcApplications,
        ulcApplicationsMax,
        rgApplications,
      );

  int get_Entitlement(
    int usVirtualChannel,
    Pointer<Int32> pEntitlement,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 usVirtualChannel,
            Pointer<Int32> pEntitlement,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int usVirtualChannel,
            Pointer<Int32> pEntitlement,
          )>()(
        ptr.ref.lpVtbl,
        usVirtualChannel,
        pEntitlement,
      );

  int TuneByChannel(
    int usVirtualChannel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 usVirtualChannel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int usVirtualChannel,
          )>()(
        ptr.ref.lpVtbl,
        usVirtualChannel,
      );

  int SetProgram(
    int usProgramNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 usProgramNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int usProgramNumber,
          )>()(
        ptr.ref.lpVtbl,
        usProgramNumber,
      );

  int AddProgram(
    int usProgramNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 usProgramNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int usProgramNumber,
          )>()(
        ptr.ref.lpVtbl,
        usProgramNumber,
      );

  int RemoveProgram(
    int usProgramNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 usProgramNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int usProgramNumber,
          )>()(
        ptr.ref.lpVtbl,
        usProgramNumber,
      );

  int GetModuleUI(
    int byDialogNumber,
    Pointer<Pointer<Utf16>> pbstrURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 byDialogNumber,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int byDialogNumber,
            Pointer<Pointer<Utf16>> pbstrURL,
          )>()(
        ptr.ref.lpVtbl,
        byDialogNumber,
        pbstrURL,
      );

  int InformUIClosed(
    int byDialogNumber,
    int CloseReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 byDialogNumber,
            Int32 CloseReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int byDialogNumber,
            int CloseReason,
          )>()(
        ptr.ref.lpVtbl,
        byDialogNumber,
        CloseReason,
      );
}
