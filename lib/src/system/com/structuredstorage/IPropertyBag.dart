// IPropertyBag.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../specialTypes.dart';
import '../../../system/com/IErrorLog.dart';

/// @nodoc
const IID_IPropertyBag = '{55272A00-42CB-11CE-8135-00AA004BB851}';

/// {@category Interface}
/// {@category com}
class IPropertyBag extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IPropertyBag(Pointer<COMObject> ptr) : super(ptr);

  int Read(
    Pointer<Utf16> pszPropName,
    Pointer<VARIANT> pVar,
    Pointer<COMObject> pErrorLog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropName,
            Pointer<VARIANT> pVar,
            Pointer<COMObject> pErrorLog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropName,
            Pointer<VARIANT> pVar,
            Pointer<COMObject> pErrorLog,
          )>()(
        ptr.ref.lpVtbl,
        pszPropName,
        pVar,
        pErrorLog,
      );

  int Write(
    Pointer<Utf16> pszPropName,
    Pointer<VARIANT> pVar,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszPropName,
            Pointer<VARIANT> pVar,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszPropName,
            Pointer<VARIANT> pVar,
          )>()(
        ptr.ref.lpVtbl,
        pszPropName,
        pVar,
      );
}
