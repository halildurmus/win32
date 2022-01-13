// ITfSpeechUIServer.dart

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
import '../../ui/textservices/structs.g.dart';

/// @nodoc
const IID_ITfSpeechUIServer = '{90E9A944-9244-489F-A78F-DE67AFC013A7}';

/// {@category Interface}
/// {@category com}
class ITfSpeechUIServer extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  ITfSpeechUIServer(Pointer<COMObject> ptr) : super(ptr);

  int Initialize() => ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int ShowUI(
    int fShow,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fShow,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fShow,
          )>()(
        ptr.ref.lpVtbl,
        fShow,
      );

  int UpdateBalloon(
    int style,
    Pointer<Utf16> pch,
    int cch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 style,
            Pointer<Utf16> pch,
            Uint32 cch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int style,
            Pointer<Utf16> pch,
            int cch,
          )>()(
        ptr.ref.lpVtbl,
        style,
        pch,
        cch,
      );
}
