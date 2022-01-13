// IDataModelScriptManager.dart

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
import '../../../system/diagnostics/debug/IDataModelNameBinder.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDataModelScriptProvider.dart';
import '../../../system/diagnostics/debug/IDataModelScriptProviderEnumerator.dart';

/// @nodoc
const IID_IDataModelScriptManager = '{6FD11E33-E5AD-410B-8011-68C6BC4BF80D}';

/// {@category Interface}
/// {@category com}
class IDataModelScriptManager extends IUnknown {
  // vtable begins at 3, is 6 entries long.
  IDataModelScriptManager(Pointer<COMObject> ptr) : super(ptr);

  int GetDefaultNameBinder(
    Pointer<Pointer<COMObject>> ppNameBinder,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNameBinder,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppNameBinder,
          )>()(
        ptr.ref.lpVtbl,
        ppNameBinder,
      );

  int RegisterScriptProvider(
    Pointer<COMObject> provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> provider,
          )>()(
        ptr.ref.lpVtbl,
        provider,
      );

  int UnregisterScriptProvider(
    Pointer<COMObject> provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> provider,
          )>()(
        ptr.ref.lpVtbl,
        provider,
      );

  int FindProviderForScriptType(
    Pointer<Utf16> scriptType,
    Pointer<Pointer<COMObject>> provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> scriptType,
            Pointer<Pointer<COMObject>> provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> scriptType,
            Pointer<Pointer<COMObject>> provider,
          )>()(
        ptr.ref.lpVtbl,
        scriptType,
        provider,
      );

  int FindProviderForScriptExtension(
    Pointer<Utf16> scriptExtension,
    Pointer<Pointer<COMObject>> provider,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> scriptExtension,
            Pointer<Pointer<COMObject>> provider,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> scriptExtension,
            Pointer<Pointer<COMObject>> provider,
          )>()(
        ptr.ref.lpVtbl,
        scriptExtension,
        provider,
      );

  int EnumerateScriptProviders(
    Pointer<Pointer<COMObject>> enumerator,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
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
