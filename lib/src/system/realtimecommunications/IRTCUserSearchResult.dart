// IRTCUserSearchResult.dart

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
import '../../system/realtimecommunications/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRTCUserSearchResult = '{851278B2-9592-480F-8DB5-2DE86B26B54D}';

/// {@category Interface}
/// {@category com}
class IRTCUserSearchResult extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IRTCUserSearchResult(Pointer<COMObject> ptr) : super(ptr);

  int get_Value(
    int enColumn,
    Pointer<Pointer<Utf16>> pbstrValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 enColumn,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int enColumn,
            Pointer<Pointer<Utf16>> pbstrValue,
          )>()(
        ptr.ref.lpVtbl,
        enColumn,
        pbstrValue,
      );
}
