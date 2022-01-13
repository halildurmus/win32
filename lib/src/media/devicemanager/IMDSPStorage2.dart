// IMDSPStorage2.dart

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

import '../../media/devicemanager/IMDSPStorage.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';
import '../../media/audio/structs.g.dart';
import '../../media/directshow/structs.g.dart';

/// @nodoc
const IID_IMDSPStorage2 = '{0A5E07A5-6454-4451-9C36-1C6AE7E2B1D6}';

/// {@category Interface}
/// {@category com}
class IMDSPStorage2 extends IMDSPStorage {
  // vtable begins at 13, is 4 entries long.
  IMDSPStorage2(Pointer<COMObject> ptr) : super(ptr);

  int GetStorage(
    Pointer<Utf16> pszStorageName,
    Pointer<Pointer<COMObject>> ppStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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

  int CreateStorage2(
    int dwAttributes,
    int dwAttributesEx,
    Pointer<WAVEFORMATEX> pAudioFormat,
    Pointer<VIDEOINFOHEADER> pVideoFormat,
    Pointer<Utf16> pwszName,
    int qwFileSize,
    Pointer<Pointer<COMObject>> ppNewStorage,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            Uint32 dwAttributesEx,
            Pointer<WAVEFORMATEX> pAudioFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
            Pointer<Utf16> pwszName,
            Uint64 qwFileSize,
            Pointer<Pointer<COMObject>> ppNewStorage,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            int dwAttributesEx,
            Pointer<WAVEFORMATEX> pAudioFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
            Pointer<Utf16> pwszName,
            int qwFileSize,
            Pointer<Pointer<COMObject>> ppNewStorage,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        dwAttributesEx,
        pAudioFormat,
        pVideoFormat,
        pwszName,
        qwFileSize,
        ppNewStorage,
      );

  int SetAttributes2(
    int dwAttributes,
    int dwAttributesEx,
    Pointer<WAVEFORMATEX> pAudioFormat,
    Pointer<VIDEOINFOHEADER> pVideoFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwAttributes,
            Uint32 dwAttributesEx,
            Pointer<WAVEFORMATEX> pAudioFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwAttributes,
            int dwAttributesEx,
            Pointer<WAVEFORMATEX> pAudioFormat,
            Pointer<VIDEOINFOHEADER> pVideoFormat,
          )>()(
        ptr.ref.lpVtbl,
        dwAttributes,
        dwAttributesEx,
        pAudioFormat,
        pVideoFormat,
      );

  int GetAttributes2(
    Pointer<Uint32> pdwAttributes,
    Pointer<Uint32> pdwAttributesEx,
    Pointer<WAVEFORMATEX> pAudioFormat,
    Pointer<VIDEOINFOHEADER> pVideoFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
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
