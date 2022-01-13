// IScriptNode.dart

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
import '../../../system/diagnostics/debug/IScriptNode.dart';
import '../../../system/diagnostics/debug/IScriptEntry.dart';
import '../../../system/com/ITypeInfo.dart';

/// @nodoc
const IID_IScriptNode = '{0AEE2A94-BCBB-11D0-8C72-00C04FC2B085}';

/// {@category Interface}
/// {@category com}
class IScriptNode extends IUnknown {
  // vtable begins at 3, is 10 entries long.
  IScriptNode(Pointer<COMObject> ptr) : super(ptr);

  int Alive() => ptr.ref.lpVtbl.value
          .elementAt(3)
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

  int Delete() => ptr.ref.lpVtbl.value
          .elementAt(4)
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

  int GetParent(
    Pointer<Pointer<COMObject>> ppsnParent,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsnParent,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppsnParent,
          )>()(
        ptr.ref.lpVtbl,
        ppsnParent,
      );

  int GetIndexInParent(
    Pointer<Uint32> pisn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pisn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pisn,
          )>()(
        ptr.ref.lpVtbl,
        pisn,
      );

  int GetCookie(
    Pointer<Uint32> pdwCookie,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwCookie,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwCookie,
          )>()(
        ptr.ref.lpVtbl,
        pdwCookie,
      );

  int GetNumberOfChildren(
    Pointer<Uint32> pcsn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcsn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcsn,
          )>()(
        ptr.ref.lpVtbl,
        pcsn,
      );

  int GetChild(
    int isn,
    Pointer<Pointer<COMObject>> ppsn,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 isn,
            Pointer<Pointer<COMObject>> ppsn,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isn,
            Pointer<Pointer<COMObject>> ppsn,
          )>()(
        ptr.ref.lpVtbl,
        isn,
        ppsn,
      );

  int GetLanguage(
    Pointer<Pointer<Utf16>> pbstr,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
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

  int CreateChildEntry(
    int isn,
    int dwCookie,
    Pointer<Utf16> pszDelimiter,
    Pointer<Pointer<COMObject>> ppse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 isn,
            Uint32 dwCookie,
            Pointer<Utf16> pszDelimiter,
            Pointer<Pointer<COMObject>> ppse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int isn,
            int dwCookie,
            Pointer<Utf16> pszDelimiter,
            Pointer<Pointer<COMObject>> ppse,
          )>()(
        ptr.ref.lpVtbl,
        isn,
        dwCookie,
        pszDelimiter,
        ppse,
      );

  int CreateChildHandler(
    Pointer<Utf16> pszDefaultName,
    Pointer<Pointer<Utf16>> prgpszNames,
    int cpszNames,
    Pointer<Utf16> pszEvent,
    Pointer<Utf16> pszDelimiter,
    Pointer<COMObject> ptiSignature,
    int iMethodSignature,
    int isn,
    int dwCookie,
    Pointer<Pointer<COMObject>> ppse,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszDefaultName,
            Pointer<Pointer<Utf16>> prgpszNames,
            Uint32 cpszNames,
            Pointer<Utf16> pszEvent,
            Pointer<Utf16> pszDelimiter,
            Pointer<COMObject> ptiSignature,
            Uint32 iMethodSignature,
            Uint32 isn,
            Uint32 dwCookie,
            Pointer<Pointer<COMObject>> ppse,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszDefaultName,
            Pointer<Pointer<Utf16>> prgpszNames,
            int cpszNames,
            Pointer<Utf16> pszEvent,
            Pointer<Utf16> pszDelimiter,
            Pointer<COMObject> ptiSignature,
            int iMethodSignature,
            int isn,
            int dwCookie,
            Pointer<Pointer<COMObject>> ppse,
          )>()(
        ptr.ref.lpVtbl,
        pszDefaultName,
        prgpszNames,
        cpszNames,
        pszEvent,
        pszDelimiter,
        ptiSignature,
        iMethodSignature,
        isn,
        dwCookie,
        ppse,
      );
}
