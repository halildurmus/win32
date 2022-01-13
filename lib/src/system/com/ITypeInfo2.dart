// ITypeInfo2.dart

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

import '../../system/com/ITypeInfo.dart';
import '../../system/com/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_ITypeInfo2 = '{00020412-0000-0000-C000-000000000046}';

/// {@category Interface}
/// {@category com}
class ITypeInfo2 extends ITypeInfo {
  // vtable begins at 22, is 15 entries long.
  ITypeInfo2(Pointer<COMObject> ptr) : super(ptr);

  int GetTypeKind(
    Pointer<Int32> pTypeKind,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pTypeKind,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pTypeKind,
          )>()(
        ptr.ref.lpVtbl,
        pTypeKind,
      );

  int GetTypeFlags(
    Pointer<Uint32> pTypeFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pTypeFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pTypeFlags,
          )>()(
        ptr.ref.lpVtbl,
        pTypeFlags,
      );

  int GetFuncIndexOfMemId(
    int memid,
    int invKind,
    Pointer<Uint32> pFuncIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 memid,
            Int32 invKind,
            Pointer<Uint32> pFuncIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int memid,
            int invKind,
            Pointer<Uint32> pFuncIndex,
          )>()(
        ptr.ref.lpVtbl,
        memid,
        invKind,
        pFuncIndex,
      );

  int GetVarIndexOfMemId(
    int memid,
    Pointer<Uint32> pVarIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 memid,
            Pointer<Uint32> pVarIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int memid,
            Pointer<Uint32> pVarIndex,
          )>()(
        ptr.ref.lpVtbl,
        memid,
        pVarIndex,
      );

  int GetCustData(
    Pointer<GUID> guid,
    Pointer<VARIANT> pVarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
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

  int GetFuncCustData(
    int index,
    Pointer<GUID> guid,
    Pointer<VARIANT> pVarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>()(
        ptr.ref.lpVtbl,
        index,
        guid,
        pVarVal,
      );

  int GetParamCustData(
    int indexFunc,
    int indexParam,
    Pointer<GUID> guid,
    Pointer<VARIANT> pVarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(28)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 indexFunc,
            Uint32 indexParam,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int indexFunc,
            int indexParam,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>()(
        ptr.ref.lpVtbl,
        indexFunc,
        indexParam,
        guid,
        pVarVal,
      );

  int GetVarCustData(
    int index,
    Pointer<GUID> guid,
    Pointer<VARIANT> pVarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>()(
        ptr.ref.lpVtbl,
        index,
        guid,
        pVarVal,
      );

  int GetImplTypeCustData(
    int index,
    Pointer<GUID> guid,
    Pointer<VARIANT> pVarVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<GUID> guid,
            Pointer<VARIANT> pVarVal,
          )>()(
        ptr.ref.lpVtbl,
        index,
        guid,
        pVarVal,
      );

  int GetDocumentation2(
    int memid,
    int lcid,
    Pointer<Pointer<Utf16>> pbstrHelpString,
    Pointer<Uint32> pdwHelpStringContext,
    Pointer<Pointer<Utf16>> pbstrHelpStringDll,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 memid,
            Uint32 lcid,
            Pointer<Pointer<Utf16>> pbstrHelpString,
            Pointer<Uint32> pdwHelpStringContext,
            Pointer<Pointer<Utf16>> pbstrHelpStringDll,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int memid,
            int lcid,
            Pointer<Pointer<Utf16>> pbstrHelpString,
            Pointer<Uint32> pdwHelpStringContext,
            Pointer<Pointer<Utf16>> pbstrHelpStringDll,
          )>()(
        ptr.ref.lpVtbl,
        memid,
        lcid,
        pbstrHelpString,
        pdwHelpStringContext,
        pbstrHelpStringDll,
      );

  int GetAllCustData(
    Pointer<CUSTDATA> pCustData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
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

  int GetAllFuncCustData(
    int index,
    Pointer<CUSTDATA> pCustData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<CUSTDATA> pCustData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<CUSTDATA> pCustData,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pCustData,
      );

  int GetAllParamCustData(
    int indexFunc,
    int indexParam,
    Pointer<CUSTDATA> pCustData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 indexFunc,
            Uint32 indexParam,
            Pointer<CUSTDATA> pCustData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int indexFunc,
            int indexParam,
            Pointer<CUSTDATA> pCustData,
          )>()(
        ptr.ref.lpVtbl,
        indexFunc,
        indexParam,
        pCustData,
      );

  int GetAllVarCustData(
    int index,
    Pointer<CUSTDATA> pCustData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<CUSTDATA> pCustData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<CUSTDATA> pCustData,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pCustData,
      );

  int GetAllImplTypeCustData(
    int index,
    Pointer<CUSTDATA> pCustData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 index,
            Pointer<CUSTDATA> pCustData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int index,
            Pointer<CUSTDATA> pCustData,
          )>()(
        ptr.ref.lpVtbl,
        index,
        pCustData,
      );
}
