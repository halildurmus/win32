// IAccPropServer.dart

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
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAccPropServer = '{76C0DBBB-15E0-4E7B-B61B-20EEEA2001E0}';

/// {@category Interface}
/// {@category com}
class IAccPropServer extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAccPropServer(Pointer<COMObject> ptr) : super(ptr);

  int GetPropValue(
    Pointer<Uint8> pIDString,
    int dwIDStringLen,
    GUID idProp,
    Pointer<VARIANT> pvarValue,
    Pointer<Int32> pfHasProp,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pIDString,
            Uint32 dwIDStringLen,
            GUID idProp,
            Pointer<VARIANT> pvarValue,
            Pointer<Int32> pfHasProp,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pIDString,
            int dwIDStringLen,
            GUID idProp,
            Pointer<VARIANT> pvarValue,
            Pointer<Int32> pfHasProp,
          )>()(
        ptr.ref.lpVtbl,
        pIDString,
        dwIDStringLen,
        idProp,
        pvarValue,
        pfHasProp,
      );
}
