// IDataModelScript.dart

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
import '../../../system/diagnostics/debug/IDataModelScriptClient.dart';

/// @nodoc
const IID_IDataModelScript = '{7B4D30FC-B14A-49F8-8D87-D9A1480C97F7}';

/// {@category Interface}
/// {@category com}
class IDataModelScript extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IDataModelScript(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> scriptName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> scriptName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> scriptName,
          )>()(
        ptr.ref.lpVtbl,
        scriptName,
      );

  int Rename(
    Pointer<Utf16> scriptName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> scriptName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> scriptName,
          )>()(
        ptr.ref.lpVtbl,
        scriptName,
      );

  int Populate(
    Pointer<COMObject> contentStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> contentStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> contentStream,
          )>()(
        ptr.ref.lpVtbl,
        contentStream,
      );

  int Execute(
    Pointer<COMObject> client,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> client,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> client,
          )>()(
        ptr.ref.lpVtbl,
        client,
      );

  int Unlink() => ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
          )>()(
        ptr.ref.lpVtbl,
      );

  int IsInvocable(
    Pointer<Bool> isInvocable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Bool> isInvocable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Bool> isInvocable,
          )>()(
        ptr.ref.lpVtbl,
        isInvocable,
      );

  int InvokeMain(
    Pointer<COMObject> client,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> client,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> client,
          )>()(
        ptr.ref.lpVtbl,
        client,
      );
}
