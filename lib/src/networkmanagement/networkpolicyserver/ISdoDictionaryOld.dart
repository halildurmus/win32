// ISdoDictionaryOld.dart

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

import '../../system/com/IDispatch.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';
import '../../networkmanagement/networkpolicyserver/structs.g.dart';

/// @nodoc
const IID_ISdoDictionaryOld = '{D432E5F4-53D8-11D2-9A3A-00C04FB998AC}';

/// {@category Interface}
/// {@category com}
class ISdoDictionaryOld extends IDispatch {
  // vtable begins at 7, is 5 entries long.
  ISdoDictionaryOld(Pointer<COMObject> ptr) : super(ptr);

  int EnumAttributes(
    Pointer<VARIANT> Id,
    Pointer<VARIANT> pValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Id,
            Pointer<VARIANT> pValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Id,
            Pointer<VARIANT> pValues,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        pValues,
      );

  int GetAttributeInfo(
    int Id,
    Pointer<VARIANT> pInfoIDs,
    Pointer<VARIANT> pInfoValues,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
            Pointer<VARIANT> pInfoIDs,
            Pointer<VARIANT> pInfoValues,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<VARIANT> pInfoIDs,
            Pointer<VARIANT> pInfoValues,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        pInfoIDs,
        pInfoValues,
      );

  int EnumAttributeValues(
    int Id,
    Pointer<VARIANT> pValueIds,
    Pointer<VARIANT> pValuesDesc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
            Pointer<VARIANT> pValueIds,
            Pointer<VARIANT> pValuesDesc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<VARIANT> pValueIds,
            Pointer<VARIANT> pValuesDesc,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        pValueIds,
        pValuesDesc,
      );

  int CreateAttribute(
    int Id,
    Pointer<Pointer<COMObject>> ppAttributeObject,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 Id,
            Pointer<Pointer<COMObject>> ppAttributeObject,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int Id,
            Pointer<Pointer<COMObject>> ppAttributeObject,
          )>()(
        ptr.ref.lpVtbl,
        Id,
        ppAttributeObject,
      );

  int GetAttributeID(
    Pointer<Utf16> bstrAttributeName,
    Pointer<Uint32> pId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrAttributeName,
            Pointer<Uint32> pId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrAttributeName,
            Pointer<Uint32> pId,
          )>()(
        ptr.ref.lpVtbl,
        bstrAttributeName,
        pId,
      );
}
