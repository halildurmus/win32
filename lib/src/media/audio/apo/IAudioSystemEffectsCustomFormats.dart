// IAudioSystemEffectsCustomFormats.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/apo/IAudioMediaType.dart';

/// @nodoc
const IID_IAudioSystemEffectsCustomFormats =
    '{B1176E34-BB7F-4F05-BEBD-1B18A534E097}';

/// {@category Interface}
/// {@category com}
class IAudioSystemEffectsCustomFormats extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IAudioSystemEffectsCustomFormats(Pointer<COMObject> ptr) : super(ptr);

  int GetFormatCount(
    Pointer<Uint32> pcFormats,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcFormats,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcFormats,
          )>()(
        ptr.ref.lpVtbl,
        pcFormats,
      );

  int GetFormat(
    int nFormat,
    Pointer<Pointer<COMObject>> ppFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nFormat,
            Pointer<Pointer<COMObject>> ppFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nFormat,
            Pointer<Pointer<COMObject>> ppFormat,
          )>()(
        ptr.ref.lpVtbl,
        nFormat,
        ppFormat,
      );

  int GetFormatRepresentation(
    int nFormat,
    Pointer<Pointer<Utf16>> ppwstrFormatRep,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nFormat,
            Pointer<Pointer<Utf16>> ppwstrFormatRep,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nFormat,
            Pointer<Pointer<Utf16>> ppwstrFormatRep,
          )>()(
        ptr.ref.lpVtbl,
        nFormat,
        ppwstrFormatRep,
      );
}
