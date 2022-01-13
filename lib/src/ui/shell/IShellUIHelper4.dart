// IShellUIHelper4.dart

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

import '../../ui/shell/IShellUIHelper3.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellUIHelper4 = '{B36E6A53-8073-499E-824C-D776330A333E}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper4 extends IShellUIHelper3 {
  // vtable begins at 49, is 18 entries long.
  IShellUIHelper4(Pointer<COMObject> ptr) : super(ptr);

  int msIsSiteMode(
    Pointer<Int16> pfSiteMode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(49)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfSiteMode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfSiteMode,
          )>()(
        ptr.ref.lpVtbl,
        pfSiteMode,
      );

  int msSiteModeShowThumbBar() => ptr.ref.lpVtbl.value
          .elementAt(50)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int msSiteModeAddThumbBarButton(
    Pointer<Utf16> bstrIconURL,
    Pointer<Utf16> bstrTooltip,
    Pointer<VARIANT> pvarButtonID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(51)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrIconURL,
            Pointer<Utf16> bstrTooltip,
            Pointer<VARIANT> pvarButtonID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrIconURL,
            Pointer<Utf16> bstrTooltip,
            Pointer<VARIANT> pvarButtonID,
          )>()(
        ptr.ref.lpVtbl,
        bstrIconURL,
        bstrTooltip,
        pvarButtonID,
      );

  int msSiteModeUpdateThumbBarButton(
    VARIANT ButtonID,
    int fEnabled,
    int fVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(52)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT ButtonID,
            Int16 fEnabled,
            Int16 fVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT ButtonID,
            int fEnabled,
            int fVisible,
          )>()(
        ptr.ref.lpVtbl,
        ButtonID,
        fEnabled,
        fVisible,
      );

  int msSiteModeSetIconOverlay(
    Pointer<Utf16> IconUrl,
    Pointer<VARIANT> pvarDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(53)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> IconUrl,
            Pointer<VARIANT> pvarDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> IconUrl,
            Pointer<VARIANT> pvarDescription,
          )>()(
        ptr.ref.lpVtbl,
        IconUrl,
        pvarDescription,
      );

  int msSiteModeClearIconOverlay() => ptr.ref.lpVtbl.value
          .elementAt(54)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int msAddSiteMode() => ptr.ref.lpVtbl.value
          .elementAt(55)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int msSiteModeCreateJumpList(
    Pointer<Utf16> bstrHeader,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(56)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrHeader,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrHeader,
          )>()(
        ptr.ref.lpVtbl,
        bstrHeader,
      );

  int msSiteModeAddJumpListItem(
    Pointer<Utf16> bstrName,
    Pointer<Utf16> bstrActionUri,
    Pointer<Utf16> bstrIconUri,
    Pointer<VARIANT> pvarWindowType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(57)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrActionUri,
            Pointer<Utf16> bstrIconUri,
            Pointer<VARIANT> pvarWindowType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrName,
            Pointer<Utf16> bstrActionUri,
            Pointer<Utf16> bstrIconUri,
            Pointer<VARIANT> pvarWindowType,
          )>()(
        ptr.ref.lpVtbl,
        bstrName,
        bstrActionUri,
        bstrIconUri,
        pvarWindowType,
      );

  int msSiteModeClearJumpList() => ptr.ref.lpVtbl.value
          .elementAt(58)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int msSiteModeShowJumpList() => ptr.ref.lpVtbl.value
          .elementAt(59)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int msSiteModeAddButtonStyle(
    VARIANT uiButtonID,
    Pointer<Utf16> bstrIconUrl,
    Pointer<Utf16> bstrTooltip,
    Pointer<VARIANT> pvarStyleID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(60)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT uiButtonID,
            Pointer<Utf16> bstrIconUrl,
            Pointer<Utf16> bstrTooltip,
            Pointer<VARIANT> pvarStyleID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT uiButtonID,
            Pointer<Utf16> bstrIconUrl,
            Pointer<Utf16> bstrTooltip,
            Pointer<VARIANT> pvarStyleID,
          )>()(
        ptr.ref.lpVtbl,
        uiButtonID,
        bstrIconUrl,
        bstrTooltip,
        pvarStyleID,
      );

  int msSiteModeShowButtonStyle(
    VARIANT uiButtonID,
    VARIANT uiStyleID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(61)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT uiButtonID,
            VARIANT uiStyleID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT uiButtonID,
            VARIANT uiStyleID,
          )>()(
        ptr.ref.lpVtbl,
        uiButtonID,
        uiStyleID,
      );

  int msSiteModeActivate() => ptr.ref.lpVtbl.value
          .elementAt(62)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int msIsSiteModeFirstRun(
    int fPreserveState,
    Pointer<VARIANT> puiFirstRun,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(63)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fPreserveState,
            Pointer<VARIANT> puiFirstRun,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fPreserveState,
            Pointer<VARIANT> puiFirstRun,
          )>()(
        ptr.ref.lpVtbl,
        fPreserveState,
        puiFirstRun,
      );

  int msAddTrackingProtectionList(
    Pointer<Utf16> URL,
    Pointer<Utf16> bstrFilterName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(64)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> bstrFilterName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> bstrFilterName,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        bstrFilterName,
      );

  int msTrackingProtectionEnabled(
    Pointer<Int16> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(65)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );

  int msActiveXFilteringEnabled(
    Pointer<Int16> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(66)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );
}
