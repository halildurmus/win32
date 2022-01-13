// IWMDMOperation2.dart

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

import '../../media/devicemanager/IWMDMOperation.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMOperation2 = '{33445B48-7DF7-425C-AD8F-0FC6D82F9F75}';

/// {@category Interface}
/// {@category com}
class IWMDMOperation2 extends IWMDMOperation {
  // vtable begins at 13, is 2 entries long.
  IWMDMOperation2(Pointer<COMObject> ptr) : super(ptr);

  int SetObjectAttributes2(
    int dwAttributes,
    int dwAttributesEx,
    Pointer<WAVEFORMATEX> pFormat,
    Pointer<VIDEOINFOHEADER> pVideoFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            Uint32 dwAttributesEx,
            Pointer<WAVEFORMATEX> pFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            int dwAttributesEx,
            Pointer<WAVEFORMATEX> pFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        dwAttributesEx,
        pFormat,
        pVideoFormat,
      );

  int GetObjectAttributes2(
    Pointer<Uint32> pdwAttributes,
    Pointer<Uint32> pdwAttributesEx,
    Pointer<WAVEFORMATEX> pAudioFormat,
    Pointer<VIDEOINFOHEADER> pVideoFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwAttributes,
            Pointer<Uint32> pdwAttributesEx,
            Pointer<WAVEFORMATEX> pAudioFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwAttributes,
            Pointer<Uint32> pdwAttributesEx,
            Pointer<WAVEFORMATEX> pAudioFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
          )>()(
        ptr.ref.lpVtbl,
        pdwAttributes,
        pdwAttributesEx,
        pAudioFormat,
        pVideoFormat,
      );
}
