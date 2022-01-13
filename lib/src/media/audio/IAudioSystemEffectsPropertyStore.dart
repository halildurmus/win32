// IAudioSystemEffectsPropertyStore.dart

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
import '../../ui/shell/propertiessystem/IPropertyStore.dart';
import '../../foundation/structs.g.dart';
import '../../media/audio/IAudioSystemEffectsPropertyChangeNotificationClient.dart';

/// @nodoc
const IID_IAudioSystemEffectsPropertyStore =
    '{302AE7F9-D7E0-43E4-971B-1F8293613D2A}';

/// {@category Interface}
/// {@category com}
class IAudioSystemEffectsPropertyStore extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IAudioSystemEffectsPropertyStore(Pointer<COMObject> ptr) : super(ptr);

  int OpenDefaultPropertyStore(
    int stgmAccess,
    Pointer<Pointer<COMObject>> propStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stgmAccess,
            Pointer<Pointer<COMObject>> propStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stgmAccess,
            Pointer<Pointer<COMObject>> propStore,
          )>()(
        ptr.ref.lpVtbl,
        stgmAccess,
        propStore,
      );

  int OpenUserPropertyStore(
    int stgmAccess,
    Pointer<Pointer<COMObject>> propStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stgmAccess,
            Pointer<Pointer<COMObject>> propStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stgmAccess,
            Pointer<Pointer<COMObject>> propStore,
          )>()(
        ptr.ref.lpVtbl,
        stgmAccess,
        propStore,
      );

  int OpenVolatilePropertyStore(
    int stgmAccess,
    Pointer<Pointer<COMObject>> propStore,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 stgmAccess,
            Pointer<Pointer<COMObject>> propStore,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int stgmAccess,
            Pointer<Pointer<COMObject>> propStore,
          )>()(
        ptr.ref.lpVtbl,
        stgmAccess,
        propStore,
      );

  int ResetUserPropertyStore() => ptr.ref.lpVtbl.value
          .elementAt(6)
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

  int ResetVolatilePropertyStore() => ptr.ref.lpVtbl.value
          .elementAt(7)
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

  int RegisterPropertyChangeNotification(
    Pointer<COMObject> callback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> callback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> callback,
          )>()(
        ptr.ref.lpVtbl,
        callback,
      );

  int UnregisterPropertyChangeNotification(
    Pointer<COMObject> callback,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> callback,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> callback,
          )>()(
        ptr.ref.lpVtbl,
        callback,
      );
}
