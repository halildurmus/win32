// IWbemQualifierSet.dart

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
import '../../specialTypes.dart';
import '../../system/com/structs.g.dart';

/// @nodoc
const IID_IWbemQualifierSet = '{DC12A680-737F-11CF-884D-00AA004B2E24}';

/// {@category Interface}
/// {@category com}
class IWbemQualifierSet extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IWbemQualifierSet(Pointer<COMObject> ptr) : super(ptr);

  int Get(
    Pointer<Utf16> wszName,
    int lFlags,
    Pointer<VARIANT> pVal,
    Pointer<Int32> plFlavor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
            Int32 lFlags,
            Pointer<VARIANT> pVal,
            Pointer<Int32> plFlavor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
            int lFlags,
            Pointer<VARIANT> pVal,
            Pointer<Int32> plFlavor,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
        lFlags,
        pVal,
        plFlavor,
      );

  int Put(
    Pointer<Utf16> wszName,
    Pointer<VARIANT> pVal,
    int lFlavor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
            Pointer<VARIANT> pVal,
            Int32 lFlavor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
            Pointer<VARIANT> pVal,
            int lFlavor,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
        pVal,
        lFlavor,
      );

  int Delete(
    Pointer<Utf16> wszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszName,
          )>()(
        ptr.ref.lpVtbl,
        wszName,
      );

  int GetNames(
    int lFlags,
    Pointer<Pointer<SAFEARRAY>> pNames,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Pointer<SAFEARRAY>> pNames,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Pointer<SAFEARRAY>> pNames,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pNames,
      );

  int BeginEnumeration(
    int lFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
      );

  int Next(
    int lFlags,
    Pointer<Pointer<Utf16>> pstrName,
    Pointer<VARIANT> pVal,
    Pointer<Int32> plFlavor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lFlags,
            Pointer<Pointer<Utf16>> pstrName,
            Pointer<VARIANT> pVal,
            Pointer<Int32> plFlavor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lFlags,
            Pointer<Pointer<Utf16>> pstrName,
            Pointer<VARIANT> pVal,
            Pointer<Int32> plFlavor,
          )>()(
        ptr.ref.lpVtbl,
        lFlags,
        pstrName,
        pVal,
        plFlavor,
      );

  int EndEnumeration() => ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );
}
