// IMFTimedTextStyle2.dart

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
import '../../media/mediafoundation/IMFTimedTextRuby.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/IMFTimedTextBouten.dart';

/// @nodoc
const IID_IMFTimedTextStyle2 = '{DB639199-C809-4C89-BFCA-D0BBB9729D6E}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextStyle2 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFTimedTextStyle2(Pointer<COMObject> ptr) : super(ptr);

  int GetRuby(
    Pointer<Pointer<COMObject>> ruby,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ruby,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ruby,
          )>()(
        ptr.ref.lpVtbl,
        ruby,
      );

  int GetBouten(
    Pointer<Pointer<COMObject>> bouten,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> bouten,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> bouten,
          )>()(
        ptr.ref.lpVtbl,
        bouten,
      );

  int IsTextCombined(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetFontAngleInDegrees(
    Pointer<Double> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
