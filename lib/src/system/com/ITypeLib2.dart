// ITypeLib2.dart

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

import '../../system/com/ITypeLib.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_ITypeLib2 = '{00020411-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ITypeLib2 extends ITypeLib {
  // vtable begins at 13, is 4 entries long.
  ITypeLib2(Pointer<COMObject> ptr) : super(ptr);

  int GetCustData(
    Pointer<GUID> guid,
    Pointer<VARIANT> pVarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>()(
        ptr.ref.lpVtbl,
        guid,
        pVarVal,
      );

  int GetLibStatistics(
    Pointer<Uint32> pcUniqueNames,
    Pointer<Uint32> pcchUniqueNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcUniqueNames,
            Pointer<Uint32> pcchUniqueNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcUniqueNames,
            Pointer<Uint32> pcchUniqueNames,
          )>()(
        ptr.ref.lpVtbl,
        pcUniqueNames,
        pcchUniqueNames,
      );

  int GetDocumentation2(
    int index,
    int lcid,
    Pointer<Pointer<Utf16>> pbstrHelpString,
    Pointer<Uint32> pdwHelpStringContext,
    Pointer<Pointer<Utf16>> pbstrHelpStringDll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 index,
            Uint32 lcid,
            Pointer<Pointer<Utf16>> pbstrHelpString,
            Pointer<Uint32> pdwHelpStringContext,
            Pointer<Pointer<Utf16>> pbstrHelpStringDll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            int lcid,
            Pointer<Pointer<Utf16>> pbstrHelpString,
            Pointer<Uint32> pdwHelpStringContext,
            Pointer<Pointer<Utf16>> pbstrHelpStringDll,
          )>()(
        ptr.ref.lpVtbl,
        index,
        lcid,
        pbstrHelpString,
        pdwHelpStringContext,
        pbstrHelpStringDll,
      );

  int GetAllCustData(
    Pointer<CUSTDATA> pCustData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<CUSTDATA> pCustData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<CUSTDATA> pCustData,
          )>()(
        ptr.ref.lpVtbl,
        pCustData,
      );
}
