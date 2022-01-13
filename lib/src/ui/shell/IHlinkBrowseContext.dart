// IHlinkBrowseContext.dart

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
import '../../system/com/IMoniker.dart';
import '../../foundation/structs.g.dart';
import '../../ui/shell/structs.g.dart';
import '../../ui/shell/IEnumHLITEM.dart';
import '../../ui/shell/IHlink.dart';

/// @nodoc
const IID_IHlinkBrowseContext = '{79EAC9C7-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHlinkBrowseContext extends IUnknown {
  // vtable begins at 3, is 14 entries long.
  IHlinkBrowseContext(Pointer<COMObject> ptr) : super(ptr);

  int Register(
    int reserved,
    Pointer<COMObject> piunk,
    Pointer<COMObject> pimk,
    Pointer<Uint32> pdwRegister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 reserved,
            Pointer<COMObject> piunk,
            Pointer<COMObject> pimk,
            Pointer<Uint32> pdwRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reserved,
            Pointer<COMObject> piunk,
            Pointer<COMObject> pimk,
            Pointer<Uint32> pdwRegister,
          )>()(
        ptr.ref.lpVtbl,
        reserved,
        piunk,
        pimk,
        pdwRegister,
      );

  int GetObject(
    Pointer<COMObject> pimk,
    int fBindIfRootRegistered,
    Pointer<Pointer<COMObject>> ppiunk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pimk,
            Int32 fBindIfRootRegistered,
            Pointer<Pointer<COMObject>> ppiunk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pimk,
            int fBindIfRootRegistered,
            Pointer<Pointer<COMObject>> ppiunk,
          )>()(
        ptr.ref.lpVtbl,
        pimk,
        fBindIfRootRegistered,
        ppiunk,
      );

  int Revoke(
    int dwRegister,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRegister,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRegister,
          )>()(
        ptr.ref.lpVtbl,
        dwRegister,
      );

  int SetBrowseWindowInfo(
    Pointer<HLBWINFO> phlbwi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<HLBWINFO> phlbwi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<HLBWINFO> phlbwi,
          )>()(
        ptr.ref.lpVtbl,
        phlbwi,
      );

  int GetBrowseWindowInfo(
    Pointer<HLBWINFO> phlbwi,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<HLBWINFO> phlbwi,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<HLBWINFO> phlbwi,
          )>()(
        ptr.ref.lpVtbl,
        phlbwi,
      );

  int SetInitialHlink(
    Pointer<COMObject> pimkTarget,
    Pointer<Utf16> pwzLocation,
    Pointer<Utf16> pwzFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pimkTarget,
        pwzLocation,
        pwzFriendlyName,
      );

  int OnNavigateHlink(
    int grfHLNF,
    Pointer<COMObject> pimkTarget,
    Pointer<Utf16> pwzLocation,
    Pointer<Utf16> pwzFriendlyName,
    Pointer<Uint32> puHLID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLNF,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
            Pointer<Uint32> puHLID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLNF,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
            Pointer<Uint32> puHLID,
          )>()(
        ptr.ref.lpVtbl,
        grfHLNF,
        pimkTarget,
        pwzLocation,
        pwzFriendlyName,
        puHLID,
      );

  int UpdateHlink(
    int uHLID,
    Pointer<COMObject> pimkTarget,
    Pointer<Utf16> pwzLocation,
    Pointer<Utf16> pwzFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uHLID,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uHLID,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        uHLID,
        pimkTarget,
        pwzLocation,
        pwzFriendlyName,
      );

  int EnumNavigationStack(
    int dwReserved,
    int grfHLFNAMEF,
    Pointer<Pointer<COMObject>> ppienumhlitem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwReserved,
            Uint32 grfHLFNAMEF,
            Pointer<Pointer<COMObject>> ppienumhlitem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwReserved,
            int grfHLFNAMEF,
            Pointer<Pointer<COMObject>> ppienumhlitem,
          )>()(
        ptr.ref.lpVtbl,
        dwReserved,
        grfHLFNAMEF,
        ppienumhlitem,
      );

  int QueryHlink(
    int grfHLQF,
    int uHLID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLQF,
            Uint32 uHLID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLQF,
            int uHLID,
          )>()(
        ptr.ref.lpVtbl,
        grfHLQF,
        uHLID,
      );

  int GetHlink(
    int uHLID,
    Pointer<Pointer<COMObject>> ppihl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uHLID,
            Pointer<Pointer<COMObject>> ppihl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uHLID,
            Pointer<Pointer<COMObject>> ppihl,
          )>()(
        ptr.ref.lpVtbl,
        uHLID,
        ppihl,
      );

  int SetCurrentHlink(
    int uHLID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 uHLID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int uHLID,
          )>()(
        ptr.ref.lpVtbl,
        uHLID,
      );

  int Clone(
    Pointer<COMObject> piunkOuter,
    Pointer<GUID> riid,
    Pointer<Pointer<COMObject>> ppiunkObj,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> piunkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppiunkObj,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> piunkOuter,
            Pointer<GUID> riid,
            Pointer<Pointer<COMObject>> ppiunkObj,
          )>()(
        ptr.ref.lpVtbl,
        piunkOuter,
        riid,
        ppiunkObj,
      );

  int Close(
    int reserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 reserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int reserved,
          )>()(
        ptr.ref.lpVtbl,
        reserved,
      );
}
