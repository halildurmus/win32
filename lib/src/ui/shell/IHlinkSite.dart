// IHlinkSite.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_IHlinkSite = '{79EAC9C2-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHlinkSite extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IHlinkSite(Pointer<COMObject> ptr) : super(ptr);

  int QueryService(
    int dwSiteData,
    Pointer<GUID> guidService,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppiunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSiteData,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppiunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSiteData,
            Pointer<GUID> guidService,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppiunk,
          )>()(
        ptr.ref.lpVtbl,
        dwSiteData,
        guidService,
        riid,
        ppiunk,
      );

  int GetMoniker(
    int dwSiteData,
    int dwAssign,
    int dwWhich,
    Pointer<Pointer<COMObject>> ppimk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSiteData,
            Uint32 dwAssign,
            Uint32 dwWhich,
            Pointer<Pointer<COMObject>> ppimk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSiteData,
            int dwAssign,
            int dwWhich,
            Pointer<Pointer<COMObject>> ppimk,
          )>()(
        ptr.ref.lpVtbl,
        dwSiteData,
        dwAssign,
        dwWhich,
        ppimk,
      );

  int ReadyToNavigate(
    int dwSiteData,
    int dwReserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSiteData,
            Uint32 dwReserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSiteData,
            int dwReserved,
          )>()(
        ptr.ref.lpVtbl,
        dwSiteData,
        dwReserved,
      );

  int OnNavigationComplete(
    int dwSiteData,
    int dwreserved,
    int hrError,
    Pointer<Utf16> pwzError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSiteData,
            Uint32 dwreserved,
            Int32 hrError,
            Pointer<Utf16> pwzError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSiteData,
            int dwreserved,
            int hrError,
            Pointer<Utf16> pwzError,
          )>()(
        ptr.ref.lpVtbl,
        dwSiteData,
        dwreserved,
        hrError,
        pwzError,
      );
}
