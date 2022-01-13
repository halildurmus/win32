// IWMPStringCollection2.dart

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

import '../../media/mediaplayer/IWMPStringCollection.dart';
import '../../media/mediaplayer/IWMPStringCollection2.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWMPStringCollection2 = '{46AD648D-53F1-4A74-92E2-2A1B68D63FD4}';

/// {@category Interface}
/// {@category com}
class IWMPStringCollection2 extends IWMPStringCollection {
  // vtable begins at 9, is 4 entries long.
  IWMPStringCollection2(Pointer<COMObject> ptr) : super(ptr);

  int isIdentical(
    Pointer<COMObject> pIWMPStringCollection2,
    Pointer<Int16> pvbool,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pIWMPStringCollection2,
            Pointer<Int16> pvbool,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pIWMPStringCollection2,
            Pointer<Int16> pvbool,
          )>()(
        ptr.ref.lpVtbl,
        pIWMPStringCollection2,
        pvbool,
      );

  int getItemInfo(
    int lCollectionIndex,
    Pointer<Utf16> bstrItemName,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCollectionIndex,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCollectionIndex,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        lCollectionIndex,
        bstrItemName,
        pbstrValue,
      );

  int getAttributeCountByType(
    int lCollectionIndex,
    Pointer<Utf16> bstrType,
    Pointer<Utf16> bstrLanguage,
    Pointer<Int32> plCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCollectionIndex,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCollectionIndex,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            Pointer<Int32> plCount,
          )>()(
        ptr.ref.lpVtbl,
        lCollectionIndex,
        bstrType,
        bstrLanguage,
        plCount,
      );

  int getItemInfoByType(
    int lCollectionIndex,
    Pointer<Utf16> bstrType,
    Pointer<Utf16> bstrLanguage,
    int lAttributeIndex,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 lCollectionIndex,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            Int32 lAttributeIndex,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int lCollectionIndex,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            int lAttributeIndex,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        lCollectionIndex,
        bstrType,
        bstrLanguage,
        lAttributeIndex,
        pvarValue,
      );
}
