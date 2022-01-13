// IPropertyEnumTypeList.dart

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

/// @nodoc
const IID_IPropertyEnumTypeList = '{A99400F4-3D84-4557-94BA-1242FB2CC9A6}';

/// {@category Interface}
/// {@category com}
class IPropertyEnumTypeList extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IPropertyEnumTypeList(Pointer<COMObject> ptr) : super(ptr);

  int GetCount(
    Pointer<Uint32> pctypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pctypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pctypes,
          )>()(
        ptr.ref.lpVtbl,
        pctypes,
      );

  int GetAt(
    int itype,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 itype,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int itype,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        itype,
        riid,
        ppv,
      );

  int GetConditionAt(
    int nIndex,
    Pointer<GUID> riid,
    Pointer<Pointer> ppv,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 nIndex,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int nIndex,
            Pointer<GUID> riid,
            Pointer<Pointer> ppv,
          )>()(
        ptr.ref.lpVtbl,
        nIndex,
        riid,
        ppv,
      );

  int FindMatchingIndex(
    Pointer<PROPVARIANT> propvarCmp,
    Pointer<Uint32> pnIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<PROPVARIANT> propvarCmp,
            Pointer<Uint32> pnIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<PROPVARIANT> propvarCmp,
            Pointer<Uint32> pnIndex,
          )>()(
        ptr.ref.lpVtbl,
        propvarCmp,
        pnIndex,
      );
}
