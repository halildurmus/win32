// IHlinkTarget.dart

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
import '../../system/com/IMoniker.dart';

/// @nodoc
const IID_IHlinkTarget = '{79EAC9C4-BAF9-11CE-8C82-00AA004BA90B}';

/// {@category Interface}
/// {@category com}
class IHlinkTarget extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IHlinkTarget(Pointer<COMObject> ptr) : super(ptr);

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
    Pointer<Utf16> pwzJumpLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 grfHLNF,
            Pointer<Utf16> pwzJumpLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int grfHLNF,
            Pointer<Utf16> pwzJumpLocation,
          )>()(
        ptr.ref.lpVtbl,
        grfHLNF,
        pwzJumpLocation,
      );

  int GetMoniker(
    Pointer<Utf16> pwzLocation,
    int dwAssign,
    Pointer<Pointer<COMObject>> ppimkLocation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzLocation,
            Uint32 dwAssign,
            Pointer<Pointer<COMObject>> ppimkLocation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzLocation,
            int dwAssign,
            Pointer<Pointer<COMObject>> ppimkLocation,
          )>()(
        ptr.ref.lpVtbl,
        pwzLocation,
        dwAssign,
        ppimkLocation,
      );

  int GetFriendlyName(
    Pointer<Utf16> pwzLocation,
    Pointer<Pointer<Utf16>> ppwzFriendlyName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwzLocation,
            Pointer<Pointer<Utf16>> ppwzFriendlyName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwzLocation,
            Pointer<Pointer<Utf16>> ppwzFriendlyName,
          )>()(
        ptr.ref.lpVtbl,
        pwzLocation,
        ppwzFriendlyName,
      );
}
