// IFsiDirectoryItem2.dart

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

import '../../storage/imapi/IFsiDirectoryItem.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IFsiDirectoryItem2 = '{F7FB4B9B-6D96-4D7B-9115-201B144811EF}';

/// {@category Interface}
/// {@category com}
class IFsiDirectoryItem2 extends IFsiDirectoryItem {
  // vtable begins at 29, is 1 entries long.
  IFsiDirectoryItem2(Pointer<COMObject> ptr) : super(ptr);

  int AddTreeWithNamedStreams(
    Pointer<Utf16> sourceDirectory,
    int includeBaseDirectory,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> sourceDirectory,
            Int16 includeBaseDirectory,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> sourceDirectory,
            int includeBaseDirectory,
          )>()(
        ptr.ref.lpVtbl,
        sourceDirectory,
        includeBaseDirectory,
      );
}
