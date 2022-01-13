// IDirectMusicCollection.dart

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
import '../../../media/audio/directmusic/IDirectMusicInstrument.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDirectMusicCollection = '{D2AC287C-B39B-11D1-8704-00600893B1BD}';

/// {@category Interface}
/// {@category com}
class IDirectMusicCollection extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDirectMusicCollection(Pointer<COMObject> ptr) : super(ptr);

  int GetInstrument(
    int dwPatch,
    Pointer<Pointer<COMObject>> ppInstrument,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPatch,
            Pointer<Pointer<COMObject>> ppInstrument,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPatch,
            Pointer<Pointer<COMObject>> ppInstrument,
          )>()(
        ptr.ref.lpVtbl,
        dwPatch,
        ppInstrument,
      );

  int EnumInstrument(
    int dwIndex,
    Pointer<Uint32> pdwPatch,
    Pointer<Utf16> pwszName,
    int dwNameLen,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwIndex,
            Pointer<Uint32> pdwPatch,
            Pointer<Utf16> pwszName,
            Uint32 dwNameLen,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwIndex,
            Pointer<Uint32> pdwPatch,
            Pointer<Utf16> pwszName,
            int dwNameLen,
          )>()(
        ptr.ref.lpVtbl,
        dwIndex,
        pdwPatch,
        pwszName,
        dwNameLen,
      );
}
