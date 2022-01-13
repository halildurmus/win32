// IFilterMapper3.dart

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

import '../../media/directshow/IFilterMapper2.dart';
import '../../media/directshow/ICreateDevEnum.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFilterMapper3 = '{B79BB0B1-33C1-11D1-ABE1-00A0C905F375}';

/// {@category Interface}
/// {@category com}
class IFilterMapper3 extends IFilterMapper2 {
  // vtable begins at 7, is 1 entries long.
  IFilterMapper3(Pointer<COMObject> ptr) : super(ptr);

  int GetICreateDevEnum(
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
      );
}
