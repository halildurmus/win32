// IBandSite.dart

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
import '../../ui/shell/IDeskBand.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IBandSite = '{4CF504B0-DE96-11D0-8B3F-00A0C911E8E5}';

/// {@category Interface}
/// {@category com}
class IBandSite extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IBandSite(Pointer<COMObject> ptr) : super(ptr);

  int AddBand(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int EnumBands(
    int uBand,
    Pointer<Uint32> pdwBandID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uBand,
            Pointer<Uint32> pdwBandID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uBand,
            Pointer<Uint32> pdwBandID,
          )>()(
        ptr.ref.lpVtbl,
        uBand,
        pdwBandID,
      );

  int QueryBand(
    int dwBandID,
    Pointer<Pointer<COMObject>> ppstb,
    Pointer<Uint32> pdwState,
    Pointer<Utf16> pszName,
    int cchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBandID,
            Pointer<Pointer<COMObject>> ppstb,
            Pointer<Uint32> pdwState,
            Pointer<Utf16> pszName,
            Int32 cchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBandID,
            Pointer<Pointer<COMObject>> ppstb,
            Pointer<Uint32> pdwState,
            Pointer<Utf16> pszName,
            int cchName,
          )>()(
        ptr.ref.lpVtbl,
        dwBandID,
        ppstb,
        pdwState,
        pszName,
        cchName,
      );

  int SetBandState(
    int dwBandID,
    int dwMask,
    int dwState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBandID,
            Uint32 dwMask,
            Uint32 dwState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBandID,
            int dwMask,
            int dwState,
          )>()(
        ptr.ref.lpVtbl,
        dwBandID,
        dwMask,
        dwState,
      );

  int RemoveBand(
    int dwBandID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBandID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBandID,
          )>()(
        ptr.ref.lpVtbl,
        dwBandID,
      );

  int GetBandObject(
    int dwBandID,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwBandID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwBandID,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        dwBandID,
        riid,
        ppv,
      );

  int SetBandSiteInfo(
    Pointer<BANDSITEINFO> pbsinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BANDSITEINFO> pbsinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BANDSITEINFO> pbsinfo,
          )>()(
        ptr.ref.lpVtbl,
        pbsinfo,
      );

  int GetBandSiteInfo(
    Pointer<BANDSITEINFO> pbsinfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<BANDSITEINFO> pbsinfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<BANDSITEINFO> pbsinfo,
          )>()(
        ptr.ref.lpVtbl,
        pbsinfo,
      );
}
