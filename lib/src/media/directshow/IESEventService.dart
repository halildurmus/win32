// IESEventService.dart

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
import '../../media/directshow/IESEvent.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IESEventService = '{ED89A619-4C06-4B2F-99EB-C7669B13047C}';

/// {@category Interface}
/// {@category com}
class IESEventService extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IESEventService(Pointer<COMObject> ptr) : super(ptr);

  int FireESEvent(
    Pointer<COMObject> pESEvent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pESEvent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pESEvent,
          )>()(
        ptr.ref.lpVtbl,
        pESEvent,
      );
}

/// @nodoc
const CLSID_ESEventService = '{C20447FC-EC60-475E-813F-D2B0A6DECEFE}';

/// {@category com}
class ESEventService extends IESEventService {
  ESEventService(Pointer<COMObject> ptr) : super(ptr);

  factory ESEventService.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_ESEventService);
    final iid = calloc<GUID>()..ref.setGUID(IID_IESEventService);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return ESEventService(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
