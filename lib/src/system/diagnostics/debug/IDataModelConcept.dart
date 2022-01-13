// IDataModelConcept.dart

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
import '../../../system/diagnostics/debug/IModelObject.dart';
import '../../../system/diagnostics/debug/IDebugHostTypeSignature.dart';
import '../../../system/diagnostics/debug/IDebugHostSymbolEnumerator.dart';
import '../../../foundation/structs.g.dart';

/// @nodoc
const IID_IDataModelConcept = '{FCB98D1D-1114-4FBF-B24C-EFFCB5DEF0D3}';

/// {@category Interface}
/// {@category com}
class IDataModelConcept extends IUnknown {
  // vtable begins at 3, is 2 entries long.
  IDataModelConcept(Pointer<COMObject> ptr) : super(ptr);

  int InitializeObject(
    Pointer<COMObject> modelObject,
    Pointer<COMObject> matchingTypeSignature,
    Pointer<COMObject> wildcardMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> modelObject,
            Pointer<COMObject> matchingTypeSignature,
            Pointer<COMObject> wildcardMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> modelObject,
            Pointer<COMObject> matchingTypeSignature,
            Pointer<COMObject> wildcardMatches,
          )>()(
        ptr.ref.lpVtbl,
        modelObject,
        matchingTypeSignature,
        wildcardMatches,
      );

  int GetName(
    Pointer<Pointer<Utf16>> modelName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> modelName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> modelName,
          )>()(
        ptr.ref.lpVtbl,
        modelName,
      );
}
