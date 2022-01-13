// IInitializeCommand.dart

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
import '../../system/com/structuredstorage/IPropertyBag.dart';

/// @nodoc
const IID_IInitializeCommand = '{85075ACF-231F-40EA-9610-D26B7B58F638}';

/// {@category Interface}
/// {@category com}
class IInitializeCommand extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInitializeCommand(Pointer<COMObject> ptr) : super(ptr);

  int Initialize(
    Pointer<Utf16> pszCommandName,
    Pointer<COMObject> ppb,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCommandName,
            Pointer<COMObject> ppb,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCommandName,
            Pointer<COMObject> ppb,
          )>()(
        ptr.ref.lpVtbl,
        pszCommandName,
        ppb,
      );
}
