// ISpecifyParticularPages.dart

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
import '../../system/ole/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpecifyParticularPages = '{4C437B91-6E9E-11D1-A704-006097C4E476}';

/// {@category Interface}
/// {@category com}
class ISpecifyParticularPages extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  ISpecifyParticularPages(Pointer<COMObject> ptr) : super(ptr);

  int GetPages(
    Pointer<GUID> guidWhatPages,
    Pointer<CAUUID> pPages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidWhatPages,
            Pointer<CAUUID> pPages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidWhatPages,
            Pointer<CAUUID> pPages,
          )>()(
        ptr.ref.lpVtbl,
        guidWhatPages,
        pPages,
      );
}
