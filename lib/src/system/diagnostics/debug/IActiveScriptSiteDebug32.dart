// IActiveScriptSiteDebug32.dart

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
import '../../../system/diagnostics/debug/IDebugDocumentContext.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/diagnostics/debug/IDebugApplication32.dart';
import '../../../system/diagnostics/debug/IDebugApplicationNode.dart';
import '../../../system/diagnostics/debug/IActiveScriptErrorDebug.dart';

/// @nodoc
const IID_IActiveScriptSiteDebug32 = '{51973C11-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IActiveScriptSiteDebug32 extends IUnknown {
  // vtable begins at 3, is 4 entries long.
  IActiveScriptSiteDebug32(Pointer<COMObject> ptr) : super(ptr);

  int GetDocumentContextFromPosition(
    int dwSourceContext,
    int uCharacterOffset,
    int uNumChars,
    Pointer<Pointer<COMObject>> ppsc,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwSourceContext,
            Uint32 uCharacterOffset,
            Uint32 uNumChars,
            Pointer<Pointer<COMObject>> ppsc,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwSourceContext,
            int uCharacterOffset,
            int uNumChars,
            Pointer<Pointer<COMObject>> ppsc,
          )>()(
        ptr.ref.lpVtbl,
        dwSourceContext,
        uCharacterOffset,
        uNumChars,
        ppsc,
      );

  int GetApplication(
    Pointer<Pointer<COMObject>> ppda,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppda,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppda,
          )>()(
        ptr.ref.lpVtbl,
        ppda,
      );

  int GetRootApplicationNode(
    Pointer<Pointer<COMObject>> ppdanRoot,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdanRoot,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppdanRoot,
          )>()(
        ptr.ref.lpVtbl,
        ppdanRoot,
      );

  int OnScriptErrorDebug(
    Pointer<COMObject> pErrorDebug,
    Pointer<Int32> pfEnterDebugger,
    Pointer<Int32> pfCallOnScriptErrorWhenContinuing,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pErrorDebug,
            Pointer<Int32> pfEnterDebugger,
            Pointer<Int32> pfCallOnScriptErrorWhenContinuing,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pErrorDebug,
            Pointer<Int32> pfEnterDebugger,
            Pointer<Int32> pfCallOnScriptErrorWhenContinuing,
          )>()(
        ptr.ref.lpVtbl,
        pErrorDebug,
        pfEnterDebugger,
        pfCallOnScriptErrorWhenContinuing,
      );
}
