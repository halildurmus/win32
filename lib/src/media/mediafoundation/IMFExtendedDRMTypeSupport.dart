// IMFExtendedDRMTypeSupport.dart

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
const IID_IMFExtendedDRMTypeSupport = '{332EC562-3758-468D-A784-E38F23552128}';

/// {@category Interface}
/// {@category com}
class IMFExtendedDRMTypeSupport extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IMFExtendedDRMTypeSupport(Pointer<COMObject> ptr) : super(ptr);

  int IsTypeSupportedEx(
    Pointer<Utf16> type,
    Pointer<Utf16> keySystem,
    Pointer<Int32> pAnswer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<Utf16> keySystem,
            Pointer<Int32> pAnswer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> type,
            Pointer<Utf16> keySystem,
            Pointer<Int32> pAnswer,
          )>()(
        ptr.ref.lpVtbl,
        type,
        keySystem,
        pAnswer,
      );
}
