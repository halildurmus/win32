// IMediaSample2.dart

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

import '../../media/directshow/IMediaSample.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMediaSample2 = '{36B73884-C2C8-11CF-8B46-00805F6CEF60}';

/// {@category Interface}
/// {@category com}
class IMediaSample2 extends IMediaSample {
  // vtable begins at 19, is 2 entries long.
  IMediaSample2(Pointer<COMObject> ptr) : super(ptr);

  int GetProperties(
    int cbProperties,
    Pointer<Uint8> pbProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbProperties,
            Pointer<Uint8> pbProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbProperties,
            Pointer<Uint8> pbProperties,
          )>()(
        ptr.ref.lpVtbl,
        cbProperties,
        pbProperties,
      );

  int SetProperties(
    int cbProperties,
    Pointer<Uint8> pbProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cbProperties,
            Pointer<Uint8> pbProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cbProperties,
            Pointer<Uint8> pbProperties,
          )>()(
        ptr.ref.lpVtbl,
        cbProperties,
        pbProperties,
      );
}
