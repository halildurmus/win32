// IHlink.dart

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
import '../../ui/shell/IHlinkSite.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IMoniker.dart';
import '../../system/com/IBindCtx.dart';
import '../../system/com/IBindStatusCallback.dart';
import '../../ui/shell/IHlinkBrowseContext.dart';

/// @nodoc
const IID_IHlink = '{79EAC9C3-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHlink extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IHlink(Pointer<COMObject> ptr) : super(ptr);

  int SetHlinkSite(
    Pointer<COMObject> pihlSite,
    int dwSiteData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pihlSite,
            Uint32 dwSiteData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pihlSite,
            int dwSiteData,
          )>()(
        ptr.ref.lpVtbl,
        pihlSite,
        dwSiteData,
      );

  int GetHlinkSite(
    Pointer<Pointer<COMObject>> ppihlSite,
    Pointer<Uint32> pdwSiteData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppihlSite,
            Pointer<Uint32> pdwSiteData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppihlSite,
            Pointer<Uint32> pdwSiteData,
          )>()(
        ptr.ref.lpVtbl,
        ppihlSite,
        pdwSiteData,
      );

  int SetMonikerReference(
    int grfHLSETF,
    Pointer<COMObject> pimkTarget,
    Pointer<Utf16> pwzLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLSETF,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLSETF,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
          )>()(
        ptr.ref.lpVtbl,
        grfHLSETF,
        pimkTarget,
        pwzLocation,
      );

  int GetMonikerReference(
    int dwWhichRef,
    Pointer<Pointer<COMObject>> ppimkTarget,
    Pointer<Pointer<Utf16>> ppwzLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWhichRef,
            Pointer<Pointer<COMObject>> ppimkTarget,
            Pointer<Pointer<Utf16>> ppwzLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWhichRef,
            Pointer<Pointer<COMObject>> ppimkTarget,
            Pointer<Pointer<Utf16>> ppwzLocation,
          )>()(
        ptr.ref.lpVtbl,
        dwWhichRef,
        ppimkTarget,
        ppwzLocation,
      );

  int SetStringReference(
    int grfHLSETF,
    Pointer<Utf16> pwzTarget,
    Pointer<Utf16> pwzLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLSETF,
            Pointer<Utf16> pwzTarget,
            Pointer<Utf16> pwzLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLSETF,
            Pointer<Utf16> pwzTarget,
            Pointer<Utf16> pwzLocation,
          )>()(
        ptr.ref.lpVtbl,
        grfHLSETF,
        pwzTarget,
        pwzLocation,
      );

  int GetStringReference(
    int dwWhichRef,
    Pointer<Pointer<Utf16>> ppwzTarget,
    Pointer<Pointer<Utf16>> ppwzLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWhichRef,
            Pointer<Pointer<Utf16>> ppwzTarget,
            Pointer<Pointer<Utf16>> ppwzLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWhichRef,
            Pointer<Pointer<Utf16>> ppwzTarget,
            Pointer<Pointer<Utf16>> ppwzLocation,
          )>()(
        ptr.ref.lpVtbl,
        dwWhichRef,
        ppwzTarget,
        ppwzLocation,
      );

  int SetFriendlyName(
    Pointer<Utf16> pwzFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pwzFriendlyName,
      );

  int GetFriendlyName(
    int grfHLFNAMEF,
    Pointer<Pointer<Utf16>> ppwzFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLFNAMEF,
            Pointer<Pointer<Utf16>> ppwzFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLFNAMEF,
            Pointer<Pointer<Utf16>> ppwzFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        grfHLFNAMEF,
        ppwzFriendlyName,
      );

  int SetTargetFrameName(
    Pointer<Utf16> pwzTargetFrameName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzTargetFrameName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzTargetFrameName,
          )>()(
        ptr.ref.lpVtbl,
        pwzTargetFrameName,
      );

  int GetTargetFrameName(
    Pointer<Pointer<Utf16>> ppwzTargetFrameName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwzTargetFrameName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwzTargetFrameName,
          )>()(
        ptr.ref.lpVtbl,
        ppwzTargetFrameName,
      );

  int GetMiscStatus(
    Pointer<Uint32> pdwStatus,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwStatus,
          )>()(
        ptr.ref.lpVtbl,
        pdwStatus,
      );

  int Navigate(
    int grfHLNF,
    Pointer<COMObject> pibc,
    Pointer<COMObject> pibsc,
    Pointer<COMObject> pihlbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLNF,
            Pointer<COMObject> pibc,
            Pointer<COMObject> pibsc,
            Pointer<COMObject> pihlbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLNF,
            Pointer<COMObject> pibc,
            Pointer<COMObject> pibsc,
            Pointer<COMObject> pihlbc,
          )>()(
        ptr.ref.lpVtbl,
        grfHLNF,
        pibc,
        pibsc,
        pihlbc,
      );

  int SetAdditionalParams(
    Pointer<Utf16> pwzAdditionalParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzAdditionalParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzAdditionalParams,
          )>()(
        ptr.ref.lpVtbl,
        pwzAdditionalParams,
      );

  int GetAdditionalParams(
    Pointer<Pointer<Utf16>> ppwzAdditionalParams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwzAdditionalParams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppwzAdditionalParams,
          )>()(
        ptr.ref.lpVtbl,
        ppwzAdditionalParams,
      );
}
