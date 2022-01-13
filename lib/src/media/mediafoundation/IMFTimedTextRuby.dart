// IMFTimedTextRuby.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_IMFTimedTextRuby = '{76C6A6F5-4955-4DE5-B27B-14B734CC14B4}';

/// {@category Interface}
/// {@category com}
class IMFTimedTextRuby extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IMFTimedTextRuby(Pointer<COMObject> ptr) : super(ptr);

  int GetRubyText(
    Pointer<Pointer<Utf16>> rubyText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> rubyText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> rubyText,
          )>()(
        ptr.ref.lpVtbl,
        rubyText,
      );

  int GetRubyPosition(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetRubyAlign(
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

  int GetRubyReserve(
    Pointer<Int32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
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
}
