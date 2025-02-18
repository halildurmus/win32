// iaudiosessioncontrol.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import
// ignore_for_file: constant_identifier_names, non_constant_identifier_names
// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../callbacks.dart';
import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../guid.dart';
import '../macros.dart';
import '../propertykey.dart';
import '../structs.g.dart';
import '../utils.dart';
import '../variant.dart';
import '../win32/ole32.g.dart';
import 'iunknown.dart';

/// @nodoc
const IID_IAudioSessionControl = '{f4b1a599-7266-4319-a8ca-e70acb11e8cd}';

/// The IAudioSessionControl interface enables a client to configure the
/// control parameters for an audio session and to monitor events in the
/// session. The `IAudioClient::Initialize` method initializes a stream
/// object and assigns the stream to an audio session. The client obtains a
/// reference to the IAudioSessionControl interface on a stream object by
/// calling the `IAudioClient::GetService` method with parameter riid set to
/// REFIID [IID_IAudioSessionControl].
///
/// {@category com}
class IAudioSessionControl extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IAudioSessionControl(super.ptr);

  factory IAudioSessionControl.from(IUnknown interface) =>
      IAudioSessionControl(interface.toInterface(IID_IAudioSessionControl));

  int getState(Pointer<Int32> pRetVal) => (ptr.ref.vtable + 3)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<Int32> pRetVal)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Int32> pRetVal)>()(
    ptr.ref.lpVtbl,
    pRetVal,
  );

  int getDisplayName(Pointer<Pointer<Utf16>> pRetVal) => (ptr.ref.vtable + 4)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
    ptr.ref.lpVtbl,
    pRetVal,
  );

  int setDisplayName(Pointer<Utf16> Value, Pointer<GUID> EventContext) =>
      (ptr.ref.vtable + 5)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> Value,
                  Pointer<GUID> EventContext,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> Value,
              Pointer<GUID> EventContext,
            )
          >()(ptr.ref.lpVtbl, Value, EventContext);

  int getIconPath(Pointer<Pointer<Utf16>> pRetVal) => (ptr.ref.vtable + 6)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<Pointer<Utf16>> pRetVal)>()(
    ptr.ref.lpVtbl,
    pRetVal,
  );

  int setIconPath(Pointer<Utf16> Value, Pointer<GUID> EventContext) =>
      (ptr.ref.vtable + 7)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<Utf16> Value,
                  Pointer<GUID> EventContext,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<Utf16> Value,
              Pointer<GUID> EventContext,
            )
          >()(ptr.ref.lpVtbl, Value, EventContext);

  int getGroupingParam(Pointer<GUID> pRetVal) => (ptr.ref.vtable + 8)
      .cast<
        Pointer<NativeFunction<Int32 Function(Pointer, Pointer<GUID> pRetVal)>>
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<GUID> pRetVal)>()(
    ptr.ref.lpVtbl,
    pRetVal,
  );

  int setGroupingParam(Pointer<GUID> Override, Pointer<GUID> EventContext) =>
      (ptr.ref.vtable + 9)
          .cast<
            Pointer<
              NativeFunction<
                Int32 Function(
                  Pointer,
                  Pointer<GUID> Override,
                  Pointer<GUID> EventContext,
                )
              >
            >
          >()
          .value
          .asFunction<
            int Function(
              Pointer,
              Pointer<GUID> Override,
              Pointer<GUID> EventContext,
            )
          >()(ptr.ref.lpVtbl, Override, EventContext);

  int registerAudioSessionNotification(
    Pointer<COMObject> NewNotifications,
  ) => (ptr.ref.vtable + 10)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<COMObject> NewNotifications)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> NewNotifications)>()(
    ptr.ref.lpVtbl,
    NewNotifications,
  );

  int unregisterAudioSessionNotification(
    Pointer<COMObject> NewNotifications,
  ) => (ptr.ref.vtable + 11)
      .cast<
        Pointer<
          NativeFunction<
            Int32 Function(Pointer, Pointer<COMObject> NewNotifications)
          >
        >
      >()
      .value
      .asFunction<int Function(Pointer, Pointer<COMObject> NewNotifications)>()(
    ptr.ref.lpVtbl,
    NewNotifications,
  );
}
