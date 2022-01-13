// IRawElementProviderSimple3.dart

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

import '../../ui/accessibility/IRawElementProviderSimple2.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IRawElementProviderSimple3 = '{FCF5D820-D7EC-4613-BDF6-42A84CE7DAAF}';

/// {@category Interface}
/// {@category com}
class IRawElementProviderSimple3 extends IRawElementProviderSimple2 {
  // vtable begins at 8, is 1 entries long.
  IRawElementProviderSimple3(Pointer<COMObject> ptr) : super(ptr);

  int GetMetadataValue(
    int targetId,
    int metadataId,
    Pointer<VARIANT> returnVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 targetId,
            Int32 metadataId,
            Pointer<VARIANT> returnVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int targetId,
            int metadataId,
            Pointer<VARIANT> returnVal,
          )>()(
        ptr.ref.lpVtbl,
        targetId,
        metadataId,
        returnVal,
      );
}
