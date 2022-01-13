// IApplicationDestinations.dart

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
import '../../specialTypes.dart';

/// @nodoc
const IID_IApplicationDestinations = '{12337D35-94C6-48A0-BCE7-6A9C69D4D600}';

/// {@category Interface}
/// {@category com}
class IApplicationDestinations extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IApplicationDestinations(Pointer<COMObject> ptr) : super(ptr);

  int SetAppID(
    Pointer<Utf16> pszAppID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszAppID,
          )>()(
        ptr.ref.lpVtbl,
        pszAppID,
      );

  int RemoveDestination(
    Pointer<COMObject> punk,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> punk,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> punk,
          )>()(
        ptr.ref.lpVtbl,
        punk,
      );

  int RemoveAllDestinations() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
const CLSID_ApplicationDestinations = '{86C14003-4D6B-4EF3-A7B4-0506663B2E68}';

/// {@category com}
class ApplicationDestinations extends IApplicationDestinations {
  ApplicationDestinations(Pointer<COMObject> ptr) : super(ptr);

  factory ApplicationDestinations.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ApplicationDestinations);
    final iid = calloc<GUID>()..ref.setGUID(IID_IApplicationDestinations);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ApplicationDestinations(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
