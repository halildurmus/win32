// IAudioProcessingObject.dart

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
import '../../../media/audio/apo/structs.g.dart';
import '../../../media/audio/apo/IAudioMediaType.dart';

/// @nodoc
const IID_IAudioProcessingObject = '{FD7F2B29-24D0-4B5C-B177-592C39F9CA10}';

/// {@category Interface}
/// {@category com}
class IAudioProcessingObject extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IAudioProcessingObject(Pointer<COMObject> ptr) : super(ptr);

  int Reset() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int GetLatency(
    Pointer<Int64> pTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int64> pTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int64> pTime,
          )>()(
        ptr.ref.lpVtbl,
        pTime,
      );

  int GetRegistrationProperties(
    Pointer<Pointer<APO_REG_PROPERTIES>> ppRegProps,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<APO_REG_PROPERTIES>> ppRegProps,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<APO_REG_PROPERTIES>> ppRegProps,
          )>()(
        ptr.ref.lpVtbl,
        ppRegProps,
      );

  int Initialize(
    int cbDataSize,
    Pointer<Uint8> pbyData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbDataSize,
            Pointer<Uint8> pbyData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbDataSize,
            Pointer<Uint8> pbyData,
          )>()(
        ptr.ref.lpVtbl,
        cbDataSize,
        pbyData,
      );

  int IsInputFormatSupported(
    Pointer<COMObject> pOppositeFormat,
    Pointer<COMObject> pRequestedInputFormat,
    Pointer<Pointer<COMObject>> ppSupportedInputFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOppositeFormat,
            Pointer<COMObject> pRequestedInputFormat,
            Pointer<Pointer<COMObject>> ppSupportedInputFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOppositeFormat,
            Pointer<COMObject> pRequestedInputFormat,
            Pointer<Pointer<COMObject>> ppSupportedInputFormat,
          )>()(
        ptr.ref.lpVtbl,
        pOppositeFormat,
        pRequestedInputFormat,
        ppSupportedInputFormat,
      );

  int IsOutputFormatSupported(
    Pointer<COMObject> pOppositeFormat,
    Pointer<COMObject> pRequestedOutputFormat,
    Pointer<Pointer<COMObject>> ppSupportedOutputFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pOppositeFormat,
            Pointer<COMObject> pRequestedOutputFormat,
            Pointer<Pointer<COMObject>> ppSupportedOutputFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pOppositeFormat,
            Pointer<COMObject> pRequestedOutputFormat,
            Pointer<Pointer<COMObject>> ppSupportedOutputFormat,
          )>()(
        ptr.ref.lpVtbl,
        pOppositeFormat,
        pRequestedOutputFormat,
        ppSupportedOutputFormat,
      );

  int GetInputChannelCount(
    Pointer<Uint32> pu32ChannelCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pu32ChannelCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pu32ChannelCount,
          )>()(
        ptr.ref.lpVtbl,
        pu32ChannelCount,
      );
}
