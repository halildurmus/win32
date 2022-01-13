// IWebWizardExtension.dart

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

import '../../ui/shell/IWizardExtension.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWebWizardExtension = '{0E6B3F66-98D1-48C0-A222-FBDE74E2FBC5}';

/// {@category Interface}
/// {@category com}
class IWebWizardExtension extends IWizardExtension {
  // vtable begins at 6, is 2 entries long.
  IWebWizardExtension(Pointer<COMObject> ptr) : super(ptr);

  int SetInitialURL(
    Pointer<Utf16> pszURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszURL,
          )>()(
        ptr.ref.lpVtbl,
        pszURL,
      );

  int SetErrorURL(
    Pointer<Utf16> pszErrorURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszErrorURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszErrorURL,
          )>()(
        ptr.ref.lpVtbl,
        pszErrorURL,
      );
}
