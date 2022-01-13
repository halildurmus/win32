// ISpeechCommandProvider.dart

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
import '../../ui/textservices/IEnumSpeechCommands.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_ISpeechCommandProvider = '{38E09D4C-586D-435A-B592-C8A86691DEC6}';

/// {@category Interface}
/// {@category com}
class ISpeechCommandProvider extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  ISpeechCommandProvider(Pointer<COMObject> ptr) : super(ptr);

  int EnumSpeechCommands(
    int langid,
    Pointer<Pointer<COMObject>> ppEnum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 langid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int langid,
            Pointer<Pointer<COMObject>> ppEnum,
          )>()(
        ptr.ref.lpVtbl,
        langid,
        ppEnum,
      );

  int ProcessCommand(
    Pointer<Utf16> pszCommand,
    int cch,
    int langid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszCommand,
            Uint32 cch,
            Uint16 langid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszCommand,
            int cch,
            int langid,
          )>()(
        ptr.ref.lpVtbl,
        pszCommand,
        cch,
        langid,
      );
}
