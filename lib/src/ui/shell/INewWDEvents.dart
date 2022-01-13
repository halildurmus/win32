// INewWDEvents.dart

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

import '../../ui/shell/IWebWizardHost.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_INewWDEvents = '{0751C551-7568-41C9-8E5B-E22E38919236}';

/// {@category Interface}
/// {@category com}
class INewWDEvents extends IWebWizardHost {
  // vtable begins at 16, is 1 entries long.
  INewWDEvents(Pointer<COMObject> ptr) : super(ptr);

  int PassportAuthenticate(
    Pointer<Utf16> bstrSignInUrl,
    Pointer<Int16> pvfAuthenitcated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrSignInUrl,
            Pointer<Int16> pvfAuthenitcated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrSignInUrl,
            Pointer<Int16> pvfAuthenitcated,
          )>()(
        ptr.ref.lpVtbl,
        bstrSignInUrl,
        pvfAuthenitcated,
      );
}
