// IDataModelScriptProvider.dart

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
import '../../../system/diagnostics/debug/IDataModelScript.dart';
import '../../../system/diagnostics/debug/IDataModelScriptTemplate.dart';
import '../../../system/diagnostics/debug/IDataModelScriptTemplateEnumerator.dart';

/// @nodoc
const IID_IDataModelScriptProvider = '{513461E0-4FCA-48CE-8658-32F3E2056F3B}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptProvider extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IDataModelScriptProvider(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> name,
          )>()(
        ptr.ref.lpVtbl,
        name,
      );

  int GetExtension(
    Pointer<Pointer<Utf16>> extension,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> extension,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> extension,
          )>()(
        ptr.ref.lpVtbl,
        extension,
      );

  int CreateScript(
    Pointer<Pointer<COMObject>> script,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> script,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> script,
          )>()(
        ptr.ref.lpVtbl,
        script,
      );

  int GetDefaultTemplateContent(
    Pointer<Pointer<COMObject>> templateContent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> templateContent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> templateContent,
          )>()(
        ptr.ref.lpVtbl,
        templateContent,
      );

  int EnumerateTemplates(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> enumerator,
          )>()(
        ptr.ref.lpVtbl,
        enumerator,
      );
}
