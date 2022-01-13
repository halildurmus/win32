// IBITSExtensionSetupFactory.dart

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

import '../../system/com/IDispatch.dart';
import '../../foundation/structs.g.dart';
import '../../networking/backgroundintelligenttransferservice/IBITSExtensionSetup.dart';

/// @nodoc
const IID_IBITSExtensionSetupFactory = '{D5D2D542-5503-4E64-8B48-72EF91A32EE1}';

/// {@category Interface}
/// {@category com}
class IBITSExtensionSetupFactory extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IBITSExtensionSetupFactory(Pointer<COMObject> ptr) : super(ptr);

  int GetObject(
    Pointer<Utf16> Path,
    Pointer<Pointer<COMObject>> ppExtensionSetup,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> ppExtensionSetup,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> ppExtensionSetup,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        ppExtensionSetup,
      );
}

/// @nodoc
const CLSID_BITSExtensionSetupFactory =
    '{EFBBAB68-7286-4783-94BF-9461D8B7E7E9}';

/// {@category com}
class BITSExtensionSetupFactory extends IBITSExtensionSetupFactory {
  BITSExtensionSetupFactory(Pointer<COMObject> ptr) : super(ptr);

  factory BITSExtensionSetupFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_BITSExtensionSetupFactory);
    final iid = calloc<GUID>()..ref.setGUID(IID_IBITSExtensionSetupFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return BITSExtensionSetupFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
