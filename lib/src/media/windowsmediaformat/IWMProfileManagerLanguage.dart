// IWMProfileManagerLanguage.dart

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

/// @nodoc
const IID_IWMProfileManagerLanguage = '{BA4DCC78-7EE0-4AB8-B27A-DBCE8BC51454}';

/// {@category Interface}
/// {@category com}
class IWMProfileManagerLanguage extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IWMProfileManagerLanguage(Pointer<COMObject> ptr) : super(ptr);

  int GetUserLanguageID(
    Pointer<Uint16> wLangID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> wLangID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> wLangID,
          )>()(
        ptr.ref.lpVtbl,
        wLangID,
      );

  int SetUserLanguageID(
    int wLangID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wLangID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wLangID,
          )>()(
        ptr.ref.lpVtbl,
        wLangID,
      );
}
