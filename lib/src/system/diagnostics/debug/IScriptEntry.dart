// IScriptEntry.dart

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

import '../../../system/diagnostics/debug/IScriptNode.dart';
import '../../../foundation/structs.g.dart';
import '../../../system/com/ITypeInfo.dart';

/// @nodoc
const IID_IScriptEntry = '{0AEE2A95-BCBB-11D0-8C72-00C04FC2B085}';

/// {@category Interface}
/// {@category com}
class IScriptEntry extends IScriptNode {
  // vtable begins at 13, is 11 entries long.
  IScriptEntry(Pointer<COMObject> ptr) : super(ptr);

  int GetText(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        pbstr,
      );

  int SetText(
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        psz,
      );

  int GetBody(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        pbstr,
      );

  int SetBody(
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        psz,
      );

  int GetName(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        pbstr,
      );

  int SetName(
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        psz,
      );

  int GetItemName(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstr,
          )>()(
        ptr.ref.lpVtbl,
        pbstr,
      );

  int SetItemName(
    Pointer<Utf16> psz,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> psz,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> psz,
          )>()(
        ptr.ref.lpVtbl,
        psz,
      );

  int GetSignature(
    Pointer<Pointer<COMObject>> ppti,
    Pointer<Uint32> piMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppti,
            Pointer<Uint32> piMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppti,
            Pointer<Uint32> piMethod,
          )>()(
        ptr.ref.lpVtbl,
        ppti,
        piMethod,
      );

  int SetSignature(
    Pointer<COMObject> pti,
    int iMethod,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pti,
            Uint32 iMethod,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pti,
            int iMethod,
          )>()(
        ptr.ref.lpVtbl,
        pti,
        iMethod,
      );

  int GetRange(
    Pointer<Uint32> pichMin,
    Pointer<Uint32> pcch,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pichMin,
            Pointer<Uint32> pcch,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pichMin,
            Pointer<Uint32> pcch,
          )>()(
        ptr.ref.lpVtbl,
        pichMin,
        pcch,
      );
}
