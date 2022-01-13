// IHlinkFrame.dart

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
import '../../ui/shell/IHlinkBrowseContext.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/IBindCtx.dart';
import '../../system/com/IBindStatusCallback.dart';
import '../../ui/shell/IHlink.dart';
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_IHlinkFrame = '{79EAC9C5-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHlinkFrame extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IHlinkFrame(Pointer<COMObject> ptr) : super(ptr);

  int SetBrowseContext(
    Pointer<COMObject> pihlbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pihlbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pihlbc,
          )>()(
        ptr.ref.lpVtbl,
        pihlbc,
      );

  int GetBrowseContext(
    Pointer<Pointer<COMObject>> ppihlbc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppihlbc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppihlbc,
          )>()(
        ptr.ref.lpVtbl,
        ppihlbc,
      );

  int Navigate(
    int grfHLNF,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pibsc,
    Pointer<COMObject> pihlNavigate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLNF,
            Pointer<COMObject> pbc,
            Pointer<COMObject> pibsc,
            Pointer<COMObject> pihlNavigate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLNF,
            Pointer<COMObject> pbc,
            Pointer<COMObject> pibsc,
            Pointer<COMObject> pihlNavigate,
          )>()(
        ptr.ref.lpVtbl,
        grfHLNF,
        pbc,
        pibsc,
        pihlNavigate,
      );

  int OnNavigate(
    int grfHLNF,
    Pointer<COMObject> pimkTarget,
    Pointer<Utf16> pwzLocation,
    Pointer<Utf16> pwzFriendlyName,
    int dwreserved,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLNF,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
            Uint32 dwreserved,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLNF,
            Pointer<COMObject> pimkTarget,
            Pointer<Utf16> pwzLocation,
            Pointer<Utf16> pwzFriendlyName,
            int dwreserved,
          )>()(
        ptr.ref.lpVtbl,
        grfHLNF,
        pimkTarget,
        pwzLocation,
        pwzFriendlyName,
        dwreserved,
      );

  int UpdateHlink(
    int uHLID,
    Pointer<COMObject> pimkTarget,
    Pointer<Utf16> pwzLocation,
    Pointer<Utf16> pwzFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
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
}
