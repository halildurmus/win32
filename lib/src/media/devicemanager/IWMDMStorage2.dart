// IWMDMStorage2.dart

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

import '../../media/devicemanager/IWMDMStorage.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IWMDMStorage2 = '{1ED5A144-5CD5-4683-9EFF-72CBDB2D9533}';

/// {@category Interface}
/// {@category com}
class IWMDMStorage2 extends IWMDMStorage {
  // vtable begins at 12, is 3 entries long.
  IWMDMStorage2(Pointer<COMObject> ptr) : super(ptr);

  int GetStorage(
    Pointer<Utf16> pszStorageName,
    Pointer<Pointer<COMObject>> ppStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszStorageName,
            Pointer<Pointer<COMObject>> ppStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszStorageName,
            Pointer<Pointer<COMObject>> ppStorage,
          )>()(
        ptr.ref.lpVtbl,
        pszStorageName,
        ppStorage,
      );

  int SetAttributes2(
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

  int GetAttributes2(
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
