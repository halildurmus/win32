// IWMReaderPlaylistBurn.dart

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
import '../../media/windowsmediaformat/IWMStatusCallback.dart';

/// @nodoc
const IID_IWMReaderPlaylistBurn = '{F28C0300-9BAA-4477-A846-1744D9CBF533}';

/// {@category Interface}
/// {@category com}
class IWMReaderPlaylistBurn extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IWMReaderPlaylistBurn(Pointer<COMObject> ptr) : super(ptr);

  int InitPlaylistBurn(
    int cFiles,
    Pointer<Pointer<Utf16>> ppwszFilenames,
    Pointer<COMObject> pCallback,
    Pointer pvContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFiles,
            Pointer<Pointer<Utf16>> ppwszFilenames,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFiles,
            Pointer<Pointer<Utf16>> ppwszFilenames,
            Pointer<COMObject> pCallback,
            Pointer pvContext,
          )>()(
        ptr.ref.lpVtbl,
        cFiles,
        ppwszFilenames,
        pCallback,
        pvContext,
      );

  int GetInitResults(
    int cFiles,
    Pointer<Int32> phrStati,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFiles,
            Pointer<Int32> phrStati,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFiles,
            Pointer<Int32> phrStati,
          )>()(
        ptr.ref.lpVtbl,
        cFiles,
        phrStati,
      );

  int Cancel() => ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int EndPlaylistBurn(
    int hrBurnResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 hrBurnResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hrBurnResult,
          )>()(
        ptr.ref.lpVtbl,
        hrBurnResult,
      );
}
