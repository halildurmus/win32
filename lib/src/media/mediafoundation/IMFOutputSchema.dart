// IMFOutputSchema.dart

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

import '../../media/mediafoundation/IMFAttributes.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IMFOutputSchema = '{7BE0FC5B-ABD9-44FB-A5C8-F50136E71599}';

/// {@category Interface}
/// {@category com}
class IMFOutputSchema extends IMFAttributes {
  // vtable begins at 33, is 3 entries long.
  IMFOutputSchema(Pointer<COMObject> ptr) : super(ptr);

  int GetSchemaType(
    Pointer<GUID> pguidSchemaType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidSchemaType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidSchemaType,
          )>()(
        ptr.ref.lpVtbl,
        pguidSchemaType,
      );

  int GetConfigurationData(
    Pointer<Uint32> pdwVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwVal,
          )>()(
        ptr.ref.lpVtbl,
        pdwVal,
      );

  int GetOriginatorID(
    Pointer<GUID> pguidOriginatorID,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidOriginatorID,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidOriginatorID,
          )>()(
        ptr.ref.lpVtbl,
        pguidOriginatorID,
      );
}
