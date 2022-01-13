// IWMPMedia3.dart

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

import '../../media/mediaplayer/IWMPMedia2.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IWMPMedia3 = '{F118EFC7-F03A-4FB4-99C9-1C02A5C1065B}';

/// {@category Interface}
/// {@category com}
class IWMPMedia3 extends IWMPMedia2 {
  // vtable begins at 26, is 2 entries long.
  IWMPMedia3(Pointer<COMObject> ptr) : super(ptr);

  int getAttributeCountByType(
    Pointer<Utf16> bstrType,
    Pointer<Utf16> bstrLanguage,
    Pointer<Int32> plCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            Pointer<Int32> plCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            Pointer<Int32> plCount,
          )>()(
        ptr.ref.lpVtbl,
        bstrType,
        bstrLanguage,
        plCount,
      );

  int getItemInfoByType(
    Pointer<Utf16> bstrType,
    Pointer<Utf16> bstrLanguage,
    int lIndex,
    Pointer<VARIANT> pvarValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(27)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            Int32 lIndex,
            Pointer<VARIANT> pvarValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrType,
            Pointer<Utf16> bstrLanguage,
            int lIndex,
            Pointer<VARIANT> pvarValue,
          )>()(
        ptr.ref.lpVtbl,
        bstrType,
        bstrLanguage,
        lIndex,
        pvarValue,
      );
}
