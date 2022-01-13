// IErrorLog.dart

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
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IErrorLog = '{3127CA40-446E-11CE-8135-00AA004BB851}';

/// {@category Interface}
/// {@category com}
class IErrorLog extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IErrorLog(Pointer<COMObject> ptr) : super(ptr);

  int AddError(
    Pointer<Utf16> pszPropName,
    Pointer<EXCEPINFO> pExcepInfo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropName,
            Pointer<EXCEPINFO> pExcepInfo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropName,
            Pointer<EXCEPINFO> pExcepInfo,
          )>()(
        ptr.ref.lpVtbl,
        pszPropName,
        pExcepInfo,
      );
}
