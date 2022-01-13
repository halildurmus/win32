// IGenericDescriptor2.dart

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

import '../../media/directshow/IGenericDescriptor.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IGenericDescriptor2 = '{BF02FB7E-9792-4E10-A68D-033A2CC246A5}';

/// {@category Interface}
/// {@category com}
class IGenericDescriptor2 extends IGenericDescriptor {
  // vtable begins at 7, is 2 entries long.
  IGenericDescriptor2(Pointer<COMObject> ptr) : super(ptr);

  int Initialize_1(
    Pointer<Uint8> pbDesc,
    int wCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbDesc,
            Uint16 wCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbDesc,
            int wCount,
          )>()(
        ptr.ref.lpVtbl,
        pbDesc,
        wCount,
      );

  int GetLength_1(
    Pointer<Uint16> pwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwVal,
          )>()(
        ptr.ref.lpVtbl,
        pwVal,
      );
}
