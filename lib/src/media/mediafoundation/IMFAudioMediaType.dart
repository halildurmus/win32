// IMFAudioMediaType.dart

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

import '../../media/mediafoundation/IMFMediaType.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_IMFAudioMediaType = '{26A0ADC3-CE26-4672-9304-69552EDD3FAF}';

/// {@category Interface}
/// {@category com}
class IMFAudioMediaType extends IMFMediaType {
  // vtable begins at 38, is 1 entries long.
  IMFAudioMediaType(Pointer<COMObject> ptr) : super(ptr);

  Pointer<WAVEFORMATEX> GetAudioFormat() => ptr.ref.lpVtbl.value
          .elementAt(38)
          .cast<
              Pointer<
                  NativeFunction<
                      Pointer<WAVEFORMATEX> Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              Pointer<WAVEFORMATEX> Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
