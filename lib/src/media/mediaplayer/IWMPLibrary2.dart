// IWMPLibrary2.dart

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

import '../../media/mediaplayer/IWMPLibrary.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPLibrary2 = '{DD578A4E-79B1-426C-BF8F-3ADD9072500B}';

/// {@category Interface}
/// {@category com}
class IWMPLibrary2 extends IWMPLibrary {
  // vtable begins at 7, is 1 entries long.
  IWMPLibrary2(Pointer<COMObject> ptr) : super(ptr);

  int getItemInfo(
    Pointer<Utf16> bstrItemName,
    Pointer<Pointer<Utf16>> pbstrVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrItemName,
            Pointer<Pointer<Utf16>> pbstrVal,
          )>()(
        ptr.ref.lpVtbl,
        bstrItemName,
        pbstrVal,
      );
}
