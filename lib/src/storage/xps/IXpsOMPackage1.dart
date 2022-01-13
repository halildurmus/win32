// IXpsOMPackage1.dart

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

import '../../storage/xps/IXpsOMPackage.dart';
import '../../storage/xps/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../security/structs.g.dart';
import '../../system/com/ISequentialStream.dart';

/// @nodoc
const IID_IXpsOMPackage1 = '{95A9435E-12BB-461B-8E7F-C6ADB04CD96A}';

/// {@category Interface}
/// {@category com}
class IXpsOMPackage1 extends IXpsOMPackage {
  // vtable begins at 13, is 3 entries long.
  IXpsOMPackage1(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentType(
    Pointer<Int32> documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> documentType,
          )>()(
        ptr.ref.lpVtbl,
        documentType,
      );

  int WriteToFile1(
    Pointer<Utf16> fileName,
    Pointer<SECURITY_ATTRIBUTES> securityAttributes,
    int flagsAndAttributes,
    int optimizeMarkupSize,
    int documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            Uint32 flagsAndAttributes,
            Int32 optimizeMarkupSize,
            Int32 documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> fileName,
            Pointer<SECURITY_ATTRIBUTES> securityAttributes,
            int flagsAndAttributes,
            int optimizeMarkupSize,
            int documentType,
          )>()(
        ptr.ref.lpVtbl,
        fileName,
        securityAttributes,
        flagsAndAttributes,
        optimizeMarkupSize,
        documentType,
      );

  int WriteToStream1(
    Pointer<COMObject> outputStream,
    int optimizeMarkupSize,
    int documentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> outputStream,
            Int32 optimizeMarkupSize,
            Int32 documentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> outputStream,
            int optimizeMarkupSize,
            int documentType,
          )>()(
        ptr.ref.lpVtbl,
        outputStream,
        optimizeMarkupSize,
        documentType,
      );
}
