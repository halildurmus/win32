// IBindCallbackRedirect.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IBindCallbackRedirect = '{11C81BC2-121E-4ED5-B9C4-B430BD54F2C0}';

/// {@category Interface}
/// {@category com}
class IBindCallbackRedirect extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IBindCallbackRedirect(Pointer<COMObject> ptr) : super(ptr);

  int Redirect(
    Pointer<Utf16> lpcUrl,
    Pointer<Int16> vbCancel,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> lpcUrl,
            Pointer<Int16> vbCancel,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> lpcUrl,
            Pointer<Int16> vbCancel,
          )>()(
        ptr.ref.lpVtbl,
        lpcUrl,
        vbCancel,
      );
}
