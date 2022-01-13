// IAudioSessionEvents.dart

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
import '../../foundation/structs.g.dart';
import '../../media/audio/structs.g.dart';

/// @nodoc
const IID_IAudioSessionEvents = '{24918ACC-64B3-37C1-8CA9-74A66E9957A8}';

/// {@category Interface}
/// {@category com}
class IAudioSessionEvents extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IAudioSessionEvents(Pointer<COMObject> ptr) : super(ptr);

  int OnDisplayNameChanged(
    Pointer<Utf16> NewDisplayName,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> NewDisplayName,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> NewDisplayName,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        NewDisplayName,
        EventContext,
      );

  int OnIconPathChanged(
    Pointer<Utf16> NewIconPath,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> NewIconPath,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> NewIconPath,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        NewIconPath,
        EventContext,
      );

  int OnSimpleVolumeChanged(
    double NewVolume,
    int NewMute,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Float NewVolume,
            Int32 NewMute,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            double NewVolume,
            int NewMute,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        NewVolume,
        NewMute,
        EventContext,
      );

  int OnChannelVolumeChanged(
    int ChannelCount,
    Pointer<Float> NewChannelVolumeArray,
    int ChangedChannel,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ChannelCount,
            Pointer<Float> NewChannelVolumeArray,
            Uint32 ChangedChannel,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ChannelCount,
            Pointer<Float> NewChannelVolumeArray,
            int ChangedChannel,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        ChannelCount,
        NewChannelVolumeArray,
        ChangedChannel,
        EventContext,
      );

  int OnGroupingParamChanged(
    Pointer<GUID> NewGroupingParam,
    Pointer<GUID> EventContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> NewGroupingParam,
            Pointer<GUID> EventContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> NewGroupingParam,
            Pointer<GUID> EventContext,
          )>()(
        ptr.ref.lpVtbl,
        NewGroupingParam,
        EventContext,
      );

  int OnStateChanged(
    int NewState,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 NewState,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int NewState,
          )>()(
        ptr.ref.lpVtbl,
        NewState,
      );

  int OnSessionDisconnected(
    int DisconnectReason,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DisconnectReason,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DisconnectReason,
          )>()(
        ptr.ref.lpVtbl,
        DisconnectReason,
      );
}
