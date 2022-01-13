// IDataModelScriptTemplate.dart

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

/// @nodoc
const IID_IDataModelScriptTemplate = '{1303DEC4-FA3B-4F1B-9224-B953D16BABB5}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptTemplate extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDataModelScriptTemplate(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> templateName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> templateName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> templateName,
          )>()(
        ptr.ref.lpVtbl,
        templateName,
      );

  int GetDescription(
    Pointer<Pointer<Utf16>> templateDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> templateDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> templateDescription,
          )>()(
        ptr.ref.lpVtbl,
        templateDescription,
      );

  int GetContent(
    Pointer<Pointer<COMObject>> contentStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> contentStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> contentStream,
          )>()(
        ptr.ref.lpVtbl,
        contentStream,
      );
}
