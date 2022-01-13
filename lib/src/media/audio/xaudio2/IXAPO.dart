// IXAPO.dart

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
import '../../../media/audio/xaudio2/structs.g.dart';
import '../../../foundation/structs.g.dart';
import '../../../media/audio/structs.g.dart';

/// @nodoc
const IID_IXAPO = '{A410B984-9839-4819-A0BE-2856AE6B3ADB}';

/// {@category Interface}
/// {@category com}
class IXAPO extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IXAPO(Pointer<COMObject> ptr) : super(ptr);

  int GetRegistrationProperties(
    Pointer<Pointer<XAPO_REGISTRATION_PROPERTIES>> ppRegistrationProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<XAPO_REGISTRATION_PROPERTIES>>
                ppRegistrationProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<XAPO_REGISTRATION_PROPERTIES>>
                ppRegistrationProperties,
          )>()(
        ptr.ref.lpVtbl,
        ppRegistrationProperties,
      );

  int IsInputFormatSupported(
    Pointer<WAVEFORMATEX> pOutputFormat,
    Pointer<WAVEFORMATEX> pRequestedInputFormat,
    Pointer<Pointer<WAVEFORMATEX>> ppSupportedInputFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pOutputFormat,
            Pointer<WAVEFORMATEX> pRequestedInputFormat,
            Pointer<Pointer<WAVEFORMATEX>> ppSupportedInputFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pOutputFormat,
            Pointer<WAVEFORMATEX> pRequestedInputFormat,
            Pointer<Pointer<WAVEFORMATEX>> ppSupportedInputFormat,
          )>()(
        ptr.ref.lpVtbl,
        pOutputFormat,
        pRequestedInputFormat,
        ppSupportedInputFormat,
      );

  int IsOutputFormatSupported(
    Pointer<WAVEFORMATEX> pInputFormat,
    Pointer<WAVEFORMATEX> pRequestedOutputFormat,
    Pointer<Pointer<WAVEFORMATEX>> ppSupportedOutputFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<WAVEFORMATEX> pInputFormat,
            Pointer<WAVEFORMATEX> pRequestedOutputFormat,
            Pointer<Pointer<WAVEFORMATEX>> ppSupportedOutputFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<WAVEFORMATEX> pInputFormat,
            Pointer<WAVEFORMATEX> pRequestedOutputFormat,
            Pointer<Pointer<WAVEFORMATEX>> ppSupportedOutputFormat,
          )>()(
        ptr.ref.lpVtbl,
        pInputFormat,
        pRequestedOutputFormat,
        ppSupportedOutputFormat,
      );

  int Initialize(
    Pointer pData,
    int DataByteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer pData,
            Uint32 DataByteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer pData,
            int DataByteSize,
          )>()(
        ptr.ref.lpVtbl,
        pData,
        DataByteSize,
      );

  void Reset() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int LockForProcess(
    int InputLockedParameterCount,
    Pointer<XAPO_LOCKFORPROCESS_PARAMETERS> pInputLockedParameters,
    int OutputLockedParameterCount,
    Pointer<XAPO_LOCKFORPROCESS_PARAMETERS> pOutputLockedParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 InputLockedParameterCount,
            Pointer<XAPO_LOCKFORPROCESS_PARAMETERS> pInputLockedParameters,
            Uint32 OutputLockedParameterCount,
            Pointer<XAPO_LOCKFORPROCESS_PARAMETERS> pOutputLockedParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InputLockedParameterCount,
            Pointer<XAPO_LOCKFORPROCESS_PARAMETERS> pInputLockedParameters,
            int OutputLockedParameterCount,
            Pointer<XAPO_LOCKFORPROCESS_PARAMETERS> pOutputLockedParameters,
          )>()(
        ptr.ref.lpVtbl,
        InputLockedParameterCount,
        pInputLockedParameters,
        OutputLockedParameterCount,
        pOutputLockedParameters,
      );

  void UnlockForProcess() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  void Process(
    int InputProcessParameterCount,
    Pointer<XAPO_PROCESS_BUFFER_PARAMETERS> pInputProcessParameters,
    int OutputProcessParameterCount,
    Pointer<XAPO_PROCESS_BUFFER_PARAMETERS> pOutputProcessParameters,
    int IsEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Void Function(
            Pointer,
            Uint32 InputProcessParameterCount,
            Pointer<XAPO_PROCESS_BUFFER_PARAMETERS> pInputProcessParameters,
            Uint32 OutputProcessParameterCount,
            Pointer<XAPO_PROCESS_BUFFER_PARAMETERS> pOutputProcessParameters,
            Int32 IsEnabled,
          )>>>()
          .value
          .asFunction<
              void Function(
            Pointer,
            int InputProcessParameterCount,
            Pointer<XAPO_PROCESS_BUFFER_PARAMETERS> pInputProcessParameters,
            int OutputProcessParameterCount,
            Pointer<XAPO_PROCESS_BUFFER_PARAMETERS> pOutputProcessParameters,
            int IsEnabled,
          )>()(
        ptr.ref.lpVtbl,
        InputProcessParameterCount,
        pInputProcessParameters,
        OutputProcessParameterCount,
        pOutputProcessParameters,
        IsEnabled,
      );

  int CalcInputFrames(
    int OutputFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 OutputFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int OutputFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        OutputFrameCount,
      );

  int CalcOutputFrames(
    int InputFrameCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Uint32 Function(
            Pointer,
            Uint32 InputFrameCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int InputFrameCount,
          )>()(
        ptr.ref.lpVtbl,
        InputFrameCount,
      );
}
