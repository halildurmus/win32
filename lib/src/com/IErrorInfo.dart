// IErrorInfo.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';
import '../structs.g.dart';
import '../utils.dart';

import 'IUnknown.dart';

/// @nodoc
const IID_IErrorInfo = '{1CF2B120-547D-101B-8E65-08002B2BD119}';

typedef _GetGUID_Native = Int32 Function(Pointer obj, Pointer<GUID> pGUID);
typedef _GetGUID_Dart = int Function(Pointer obj, Pointer<GUID> pGUID);

typedef _GetSource_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pBstrSource);
typedef _GetSource_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pBstrSource);

typedef _GetDescription_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pBstrDescription);
typedef _GetDescription_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pBstrDescription);

typedef _GetHelpFile_Native = Int32 Function(
    Pointer obj, Pointer<Pointer<Utf16>> pBstrHelpFile);
typedef _GetHelpFile_Dart = int Function(
    Pointer obj, Pointer<Pointer<Utf16>> pBstrHelpFile);

typedef _GetHelpContext_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwHelpContext);
typedef _GetHelpContext_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwHelpContext);

/// {@category Interface}
/// {@category com}
class IErrorInfo extends IUnknown {
  // vtable begins at 3, ends at 7

  IErrorInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetGUID(Pointer<GUID> pGUID) =>
      Pointer<NativeFunction<_GetGUID_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(3).value)
          .asFunction<_GetGUID_Dart>()(ptr.ref.lpVtbl, pGUID);

  int GetSource(Pointer<Pointer<Utf16>> pBstrSource) =>
      Pointer<NativeFunction<_GetSource_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(4).value)
          .asFunction<_GetSource_Dart>()(ptr.ref.lpVtbl, pBstrSource);

  int GetDescription(Pointer<Pointer<Utf16>> pBstrDescription) =>
      Pointer<NativeFunction<_GetDescription_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(5).value)
          .asFunction<_GetDescription_Dart>()(ptr.ref.lpVtbl, pBstrDescription);

  int GetHelpFile(Pointer<Pointer<Utf16>> pBstrHelpFile) =>
      Pointer<NativeFunction<_GetHelpFile_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(6).value)
          .asFunction<_GetHelpFile_Dart>()(ptr.ref.lpVtbl, pBstrHelpFile);

  int GetHelpContext(Pointer<Uint32> pdwHelpContext) =>
      Pointer<NativeFunction<_GetHelpContext_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(7).value)
          .asFunction<_GetHelpContext_Dart>()(ptr.ref.lpVtbl, pdwHelpContext);
}
