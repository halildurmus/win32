// IConfigAsfWriter.dart

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
import '../../media/windowsmediaformat/IWMProfile.dart';

/// @nodoc
const IID_IConfigAsfWriter = '{45086030-F7E4-486A-B504-826BB5792A3B}';

/// {@category Interface}
/// {@category com}
class IConfigAsfWriter extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IConfigAsfWriter(Pointer<COMObject> ptr) : super(ptr);

  int ConfigureFilterUsingProfileId(
    int dwProfileId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwProfileId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwProfileId,
          )>()(
        ptr.ref.lpVtbl,
        dwProfileId,
      );

  int GetCurrentProfileId(
    Pointer<Uint32> pdwProfileId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwProfileId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwProfileId,
          )>()(
        ptr.ref.lpVtbl,
        pdwProfileId,
      );

  int ConfigureFilterUsingProfileGuid(
    Pointer<GUID> guidProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidProfile,
          )>()(
        ptr.ref.lpVtbl,
        guidProfile,
      );

  int GetCurrentProfileGuid(
    Pointer<GUID> pProfileGuid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pProfileGuid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pProfileGuid,
          )>()(
        ptr.ref.lpVtbl,
        pProfileGuid,
      );

  int ConfigureFilterUsingProfile(
    Pointer<COMObject> pProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pProfile,
          )>()(
        ptr.ref.lpVtbl,
        pProfile,
      );

  int GetCurrentProfile(
    Pointer<Pointer<COMObject>> ppProfile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProfile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppProfile,
          )>()(
        ptr.ref.lpVtbl,
        ppProfile,
      );

  int SetIndexMode(
    int bIndexFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 bIndexFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bIndexFile,
          )>()(
        ptr.ref.lpVtbl,
        bIndexFile,
      );

  int GetIndexMode(
    Pointer<Int32> pbIndexFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pbIndexFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pbIndexFile,
          )>()(
        ptr.ref.lpVtbl,
        pbIndexFile,
      );
}
