// IInputPaneInterop.dart

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

import '../../system/winrt/IInspectable.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IInputPaneInterop = '{75CF2C57-9195-4931-8332-F0B409E916AF}';

/// {@category Interface}
/// {@category com}
class IInputPaneInterop extends IInspectable {
  // vtable begins at 6, is 1 entries long.
  IInputPaneInterop(Pointer<COMObject> ptr) : super(ptr);

  int GetForWindow(
    int appWindow,
    Pointer<GUID> riid,
    Pointer<Pointer> inputPane,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> inputPane,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int appWindow,
            Pointer<GUID> riid,
            Pointer<Pointer> inputPane,
          )>()(
        ptr.ref.lpVtbl,
        appWindow,
        riid,
        inputPane,
      );
}
