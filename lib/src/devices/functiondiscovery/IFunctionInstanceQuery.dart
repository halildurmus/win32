// IFunctionInstanceQuery.dart

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
import '../../devices/functiondiscovery/IFunctionInstance.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFunctionInstanceQuery = '{6242BC6B-90EC-4B37-BB46-E229FD84ED95}';

/// {@category Interface}
/// {@category com}
class IFunctionInstanceQuery extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IFunctionInstanceQuery(Pointer<COMObject> ptr) : super(ptr);

  int Execute(
    Pointer<Pointer<COMObject>> ppIFunctionInstance,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIFunctionInstance,
          )>()(
        ptr.ref.lpVtbl,
        ppIFunctionInstance,
      );
}
