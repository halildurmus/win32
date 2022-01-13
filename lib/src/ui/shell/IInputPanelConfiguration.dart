// IInputPanelConfiguration.dart

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
const IID_IInputPanelConfiguration = '{41C81592-514C-48BD-A22E-E6AF638521A6}';

/// {@category Interface}
/// {@category com}
class IInputPanelConfiguration extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IInputPanelConfiguration(Pointer<COMObject> ptr) : super(ptr);

  int EnableFocusTracking() => ptr.ref.lpVtbl.value
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
}

/// @nodoc
const CLSID_InputPanelConfiguration = '{2853ADD3-F096-4C63-A78F-7FA3EA837FB7}';

/// {@category com}
class InputPanelConfiguration extends IInputPanelConfiguration {
  InputPanelConfiguration(Pointer<COMObject> ptr) : super(ptr);

  factory InputPanelConfiguration.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_InputPanelConfiguration);
    final iid = calloc<GUID>()..ref.setGUID(IID_IInputPanelConfiguration);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return InputPanelConfiguration(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
