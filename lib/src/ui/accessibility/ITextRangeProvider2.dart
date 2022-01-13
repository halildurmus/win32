// ITextRangeProvider2.dart

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

import '../../ui/accessibility/ITextRangeProvider.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ITextRangeProvider2 = '{9BBCE42C-1921-4F18-89CA-DBA1910A0386}';

/// {@category Interface}
/// {@category com}
class ITextRangeProvider2 extends ITextRangeProvider {
  // vtable begins at 21, is 1 entries long.
  ITextRangeProvider2(Pointer<COMObject> ptr) : super(ptr);

  int ShowContextMenu() => ptr.ref.lpVtbl.value
          .elementAt(21)
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
