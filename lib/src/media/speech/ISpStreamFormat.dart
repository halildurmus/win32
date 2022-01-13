// ISpStreamFormat.dart

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

import '../../system/com/IStream.dart';
import '../../media/audio/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpStreamFormat = '{BED530BE-2606-4F4D-A1C0-54C5CDA5566F}';

/// {@category Interface}
/// {@category com}
class ISpStreamFormat extends IStream {
  // vtable begins at 14, is 1 entries long.
  ISpStreamFormat(Pointer<COMObject> ptr) : super(ptr);

  int GetFormat(
    Pointer<GUID> pguidFormatId,
    Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidFormatId,
            Pointer<Pointer<WAVEFORMATEX>> ppCoMemWaveFormatEx,
          )>()(
        ptr.ref.lpVtbl,
        pguidFormatId,
        ppCoMemWaveFormatEx,
      );
}
