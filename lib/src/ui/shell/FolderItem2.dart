// FolderItem2.dart

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

import '../../ui/shell/FolderItem.dart';
import '../../specialTypes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_FolderItem2 = '{EDC817AA-92B8-11D1-B075-00C04FC33AA5}';

/// {@category Interface}
/// {@category com}
class FolderItem2 extends FolderItem {
  // vtable begins at 24, is 2 entries long.
  FolderItem2(Pointer<COMObject> ptr) : super(ptr);

  int InvokeVerbEx(
    VARIANT vVerb,
    VARIANT vArgs,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            VARIANT vVerb,
            VARIANT vArgs,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            VARIANT vVerb,
            VARIANT vArgs,
          )>()(
        ptr.ref.lpVtbl,
        vVerb,
        vArgs,
      );

  int ExtendedProperty(
    Pointer<Utf16> bstrPropName,
    Pointer<VARIANT> pvRet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pvRet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrPropName,
            Pointer<VARIANT> pvRet,
          )>()(
        ptr.ref.lpVtbl,
        bstrPropName,
        pvRet,
      );
}
