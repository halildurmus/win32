// IStreamBufferConfigure3.dart

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

import '../../media/directshow/IStreamBufferConfigure2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IStreamBufferConfigure3 = '{7E2D2A1E-7192-4BD7-80C1-061FD1D10402}';

/// {@category Interface}
/// {@category com}
class IStreamBufferConfigure3 extends IStreamBufferConfigure2 {
  // vtable begins at 13, is 4 entries long.
  IStreamBufferConfigure3(Pointer<COMObject> ptr) : super(ptr);

  int SetStartRecConfig(
    int fStartStopsCur,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fStartStopsCur,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fStartStopsCur,
          )>()(
        ptr.ref.lpVtbl,
        fStartStopsCur,
      );

  int GetStartRecConfig(
    Pointer<Int32> pfStartStopsCur,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfStartStopsCur,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfStartStopsCur,
          )>()(
        ptr.ref.lpVtbl,
        pfStartStopsCur,
      );

  int SetNamespace(
    Pointer<Utf16> pszNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszNamespace,
          )>()(
        ptr.ref.lpVtbl,
        pszNamespace,
      );

  int GetNamespace(
    Pointer<Pointer<Utf16>> ppszNamespace,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszNamespace,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> ppszNamespace,
          )>()(
        ptr.ref.lpVtbl,
        ppszNamespace,
      );
}
