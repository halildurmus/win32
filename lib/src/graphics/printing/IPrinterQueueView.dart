// IPrinterQueueView.dart

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

/// @nodoc
const IID_IPrinterQueueView = '{476E2969-3B2B-4B3F-8277-CFF6056042AA}';

/// {@category Interface}
/// {@category com}
class IPrinterQueueView extends IDispatch {
  // vtable begins at 7, is 1 entries long.
  IPrinterQueueView(Pointer<COMObject> ptr) : super(ptr);

  int SetViewRange(
    int ulViewOffset,
    int ulViewSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulViewOffset,
            Uint32 ulViewSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulViewOffset,
            int ulViewSize,
          )>()(
        ptr.ref.lpVtbl,
        ulViewOffset,
        ulViewSize,
      );
}

/// @nodoc
const CLSID_PrinterQueueView = '{EB54C231-798C-4C9E-B461-29FAD04039B1}';

/// {@category com}
class PrinterQueueView extends IPrinterQueueView {
  PrinterQueueView(Pointer<COMObject> ptr) : super(ptr);

  factory PrinterQueueView.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()..ref.setGUID(CLSID_PrinterQueueView);
    final iid = calloc<GUID>()..ref.setGUID(IID_IPrinterQueueView);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PrinterQueueView(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
