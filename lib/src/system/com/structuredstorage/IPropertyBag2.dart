// IPropertyBag2.dart

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
import '../../../system/com/structuredstorage/structs.g.dart';
import '../../../system/com/IErrorLog.dart';
import '../../../specialTypes.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IPropertyBag2 = '{22F55882-280B-11D0-A8A9-00A0C90C2004}';

/// {@category Interface}
/// {@category com}
class IPropertyBag2 extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IPropertyBag2(Pointer<COMObject> ptr) : super(ptr);

  int Read(
    int cProperties,
    Pointer<PROPBAG2> pPropBag,
    Pointer<COMObject> pErrLog,
    Pointer<VARIANT> pvarValue,
    Pointer<Int32> phrError,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cProperties,
            Pointer<PROPBAG2> pPropBag,
            Pointer<COMObject> pErrLog,
            Pointer<VARIANT> pvarValue,
            Pointer<Int32> phrError,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cProperties,
            Pointer<PROPBAG2> pPropBag,
            Pointer<COMObject> pErrLog,
            Pointer<VARIANT> pvarValue,
            Pointer<Int32> phrError,
          )>()(
        ptr.ref.lpVtbl,
        cProperties,
        pPropBag,
        pErrLog,
        pvarValue,
        phrError,
      );

  int Write(
    int cProperties,
    Pointer<PROPBAG2> pPropBag,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cProperties,
            Pointer<PROPBAG2> pPropBag,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cProperties,
            Pointer<PROPBAG2> pPropBag,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        cProperties,
        pPropBag,
        pvarValue,
      );

  int CountProperties(
    Pointer<Uint32> pcProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcProperties,
          )>()(
        ptr.ref.lpVtbl,
        pcProperties,
      );

  int GetPropertyInfo(
    int iProperty,
    int cProperties,
    Pointer<PROPBAG2> pPropBag,
    Pointer<Uint32> pcProperties,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 iProperty,
            Uint32 cProperties,
            Pointer<PROPBAG2> pPropBag,
            Pointer<Uint32> pcProperties,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int iProperty,
            int cProperties,
            Pointer<PROPBAG2> pPropBag,
            Pointer<Uint32> pcProperties,
          )>()(
        ptr.ref.lpVtbl,
        iProperty,
        cProperties,
        pPropBag,
        pcProperties,
      );

  int LoadObject(
    Pointer<Utf16> pstrName,
    int dwHint,
    Pointer<COMObject> pUnkObject,
    Pointer<COMObject> pErrLog,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pstrName,
            Uint32 dwHint,
            Pointer<COMObject> pUnkObject,
            Pointer<COMObject> pErrLog,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pstrName,
            int dwHint,
            Pointer<COMObject> pUnkObject,
            Pointer<COMObject> pErrLog,
          )>()(
        ptr.ref.lpVtbl,
        pstrName,
        dwHint,
        pUnkObject,
        pErrLog,
      );
}
