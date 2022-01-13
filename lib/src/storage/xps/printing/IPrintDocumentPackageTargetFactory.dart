// IPrintDocumentPackageTargetFactory.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../../combase.dart';
import '../../../constants.dart';
import '../../../exceptions.dart';
import '../../../guid.dart';
import '../../../macros.dart';
import '../../../ole32.dart';
import '../../../utils.dart';

import '../../../system/com/IUnknown.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/IStream.dart';
import '../../../storage/xps/printing/IPrintDocumentPackageTarget.dart';

/// @nodoc
const IID_IPrintDocumentPackageTargetFactory =
    '{D2959BF7-B31B-4A3D-9600-712EB1335BA4}';

/// {@category Interface}
/// {@category com}
class IPrintDocumentPackageTargetFactory extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IPrintDocumentPackageTargetFactory(Pointer<COMObject> ptr) : super(ptr);

  int CreateDocumentPackageTargetForPrintJob(
    Pointer<Utf16> printerName,
    Pointer<Utf16> jobName,
    Pointer<COMObject> jobOutputStream,
    Pointer<COMObject> jobPrintTicketStream,
    Pointer<Pointer<COMObject>> docPackageTarget,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> printerName,
            Pointer<Utf16> jobName,
            Pointer<COMObject> jobOutputStream,
            Pointer<COMObject> jobPrintTicketStream,
            Pointer<Pointer<COMObject>> docPackageTarget,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> printerName,
            Pointer<Utf16> jobName,
            Pointer<COMObject> jobOutputStream,
            Pointer<COMObject> jobPrintTicketStream,
            Pointer<Pointer<COMObject>> docPackageTarget,
          )>()(
        ptr.ref.lpVtbl,
        printerName,
        jobName,
        jobOutputStream,
        jobPrintTicketStream,
        docPackageTarget,
      );
}

/// @nodoc
const CLSID_PrintDocumentPackageTargetFactory =
    '{348EF17D-6C81-4982-92B4-EE188A43867A}';

/// {@category com}
class PrintDocumentPackageTargetFactory
    extends IPrintDocumentPackageTargetFactory {
  PrintDocumentPackageTargetFactory(Pointer<COMObject> ptr) : super(ptr);

  factory PrintDocumentPackageTargetFactory.createInstance() {
    final ptr = calloc<COMObject>();
    final clsid = calloc<GUID>()
      ..ref.setGUID(CLSID_PrintDocumentPackageTargetFactory);
    final iid = calloc<GUID>()
      ..ref.setGUID(IID_IPrintDocumentPackageTargetFactory);

    try {
      final hr = CoCreateInstance(clsid, nullptr, CLSCTX_ALL, iid, ptr.cast());

      if (FAILED(hr)) throw WindowsException(hr);

      return PrintDocumentPackageTargetFactory(ptr);
    } finally {
      free(clsid);
      free(iid);
    }
  }
}
