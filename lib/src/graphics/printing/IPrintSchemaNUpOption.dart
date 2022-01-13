// IPrintSchemaNUpOption.dart

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

import '../../graphics/printing/IPrintSchemaOption.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IPrintSchemaNUpOption = '{1F6342F2-D848-42E3-8995-C10A9EF9A3BA}';

/// {@category Interface}
/// {@category com}
class IPrintSchemaNUpOption extends IPrintSchemaOption {
  // vtable begins at 14, is 1 entries long.
  IPrintSchemaNUpOption(Pointer<COMObject> ptr) : super(ptr);

  int get PagesPerSheet {
    final retValuePtr = calloc<Uint32>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pulPagesPerSheet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pulPagesPerSheet,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }
}
