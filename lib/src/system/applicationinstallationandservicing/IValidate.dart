// IValidate.dart

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
import '../../system/applicationinstallationandservicing/callbacks.g.dart';

/// @nodoc
const IID_IValidate = '{E482E5C6-E31E-4143-A2E6-DBC3D8E4B8D3}';

/// {@category Interface}
/// {@category com}
class IValidate extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IValidate(Pointer<COMObject> ptr) : super(ptr);

  int OpenDatabase(
    Pointer<Utf16> szDatabase,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szDatabase,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szDatabase,
          )>()(
        ptr.ref.lpVtbl,
        szDatabase,
      );

  int OpenCUB(
    Pointer<Utf16> szCUBFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> szCUBFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> szCUBFile,
          )>()(
        ptr.ref.lpVtbl,
        szCUBFile,
      );

  int CloseDatabase() => ptr.ref.lpVtbl.value
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

  int CloseCUB() => ptr.ref.lpVtbl.value
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

  int SetDisplay(
    Pointer<NativeFunction<LPDISPLAYVAL>> pDisplayFunction,
    Pointer pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPDISPLAYVAL>> pDisplayFunction,
            Pointer pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPDISPLAYVAL>> pDisplayFunction,
            Pointer pContext,
          )>()(
        ptr.ref.lpVtbl,
        pDisplayFunction,
        pContext,
      );

  int SetStatus(
    Pointer<NativeFunction<LPEVALCOMCALLBACK>> pStatusFunction,
    Pointer pContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<NativeFunction<LPEVALCOMCALLBACK>> pStatusFunction,
            Pointer pContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<NativeFunction<LPEVALCOMCALLBACK>> pStatusFunction,
            Pointer pContext,
          )>()(
        ptr.ref.lpVtbl,
        pStatusFunction,
        pContext,
      );

  int Validate(
    Pointer<Utf16> wzICEs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzICEs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzICEs,
          )>()(
        ptr.ref.lpVtbl,
        wzICEs,
      );
}
