// IPrinterQueue2.dart

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

import '../../graphics/printing/IPrinterQueue.dart';
import '../../foundation/structs.g.dart';
import '../../graphics/printing/IPrinterBidiSetRequestCallback.dart';
import '../../graphics/printing/IPrinterExtensionAsyncOperation.dart';
import '../../graphics/printing/IPrinterQueueView.dart';

/// @nodoc
const IID_IPrinterQueue2 = '{8CD444E8-C9BB-49B3-8E38-E03209416131}';

/// {@category Interface}
/// {@category com}
class IPrinterQueue2 extends IPrinterQueue {
  // vtable begins at 11, is 2 entries long.
  IPrinterQueue2(Pointer<COMObject> ptr) : super(ptr);

  int SendBidiSetRequestAsync(
    Pointer<Utf16> bstrBidiRequest,
    Pointer<COMObject> pCallback,
    Pointer<Pointer<COMObject>> ppAsyncOperation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrBidiRequest,
            Pointer<COMObject> pCallback,
            Pointer<Pointer<COMObject>> ppAsyncOperation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrBidiRequest,
            Pointer<COMObject> pCallback,
            Pointer<Pointer<COMObject>> ppAsyncOperation,
          )>()(
        ptr.ref.lpVtbl,
        bstrBidiRequest,
        pCallback,
        ppAsyncOperation,
      );

  int GetPrinterQueueView(
    int ulViewOffset,
    int ulViewSize,
    Pointer<Pointer<COMObject>> ppJobView,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 ulViewOffset,
            Uint32 ulViewSize,
            Pointer<Pointer<COMObject>> ppJobView,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int ulViewOffset,
            int ulViewSize,
            Pointer<Pointer<COMObject>> ppJobView,
          )>()(
        ptr.ref.lpVtbl,
        ulViewOffset,
        ulViewSize,
        ppJobView,
      );
}
