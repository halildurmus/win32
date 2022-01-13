// IWMStreamConfig3.dart

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

import '../../media/windowsmediaformat/IWMStreamConfig2.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMStreamConfig3 = '{CB164104-3AA9-45A7-9AC9-4DAEE131D6E1}';

/// {@category Interface}
/// {@category com}
class IWMStreamConfig3 extends IWMStreamConfig2 {
  // vtable begins at 20, is 2 entries long.
  IWMStreamConfig3(Pointer<COMObject> ptr) : super(ptr);

  int GetLanguage(
    Pointer<Utf16> pwszLanguageString,
    Pointer<Uint16> pcchLanguageStringLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pcchLanguageStringLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pcchLanguageStringLength,
          )>()(
        ptr.ref.lpVtbl,
        pwszLanguageString,
        pcchLanguageStringLength,
      );

  int SetLanguage(
    Pointer<Utf16> pwszLanguageString,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszLanguageString,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszLanguageString,
          )>()(
        ptr.ref.lpVtbl,
        pwszLanguageString,
      );
}
