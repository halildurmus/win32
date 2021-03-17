// IMoniker.dart

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

import 'IPersistStream.dart';

/// @nodoc
const IID_IMoniker = '{0000000F-0000-0000-C000-000000000046}';

typedef _BindToObject_Native = Int32 Function(Pointer obj, Pointer pbc,
    Pointer pmkToLeft, Pointer<GUID> riidResult, Pointer<Pointer> ppvResult);
typedef _BindToObject_Dart = int Function(Pointer obj, Pointer pbc,
    Pointer pmkToLeft, Pointer<GUID> riidResult, Pointer<Pointer> ppvResult);

typedef _BindToStorage_Native = Int32 Function(Pointer obj, Pointer pbc,
    Pointer pmkToLeft, Pointer<GUID> riid, Pointer<Pointer> ppvObj);
typedef _BindToStorage_Dart = int Function(Pointer obj, Pointer pbc,
    Pointer pmkToLeft, Pointer<GUID> riid, Pointer<Pointer> ppvObj);

typedef _Reduce_Native = Int32 Function(
    Pointer obj,
    Pointer pbc,
    Uint32 dwReduceHowFar,
    Pointer<Pointer> ppmkToLeft,
    Pointer<Pointer> ppmkReduced);
typedef _Reduce_Dart = int Function(
    Pointer obj,
    Pointer pbc,
    int dwReduceHowFar,
    Pointer<Pointer> ppmkToLeft,
    Pointer<Pointer> ppmkReduced);

typedef _ComposeWith_Native = Int32 Function(Pointer obj, Pointer pmkRight,
    Int32 fOnlyIfNotGeneric, Pointer<Pointer> ppmkComposite);
typedef _ComposeWith_Dart = int Function(Pointer obj, Pointer pmkRight,
    int fOnlyIfNotGeneric, Pointer<Pointer> ppmkComposite);

typedef _Enum_Native = Int32 Function(
    Pointer obj, Int32 fForward, Pointer<Pointer> ppenumMoniker);
typedef _Enum_Dart = int Function(
    Pointer obj, int fForward, Pointer<Pointer> ppenumMoniker);

typedef _IsEqual_Native = Int32 Function(Pointer obj, Pointer pmkOtherMoniker);
typedef _IsEqual_Dart = int Function(Pointer obj, Pointer pmkOtherMoniker);

typedef _Hash_Native = Int32 Function(Pointer obj, Pointer<Uint32> pdwHash);
typedef _Hash_Dart = int Function(Pointer obj, Pointer<Uint32> pdwHash);

typedef _IsRunning_Native = Int32 Function(
    Pointer obj, Pointer pbc, Pointer pmkToLeft, Pointer pmkNewlyRunning);
typedef _IsRunning_Dart = int Function(
    Pointer obj, Pointer pbc, Pointer pmkToLeft, Pointer pmkNewlyRunning);

typedef _GetTimeOfLastChange_Native = Int32 Function(
    Pointer obj, Pointer pbc, Pointer pmkToLeft, Pointer<FILETIME> pFileTime);
typedef _GetTimeOfLastChange_Dart = int Function(
    Pointer obj, Pointer pbc, Pointer pmkToLeft, Pointer<FILETIME> pFileTime);

typedef _Inverse_Native = Int32 Function(Pointer obj, Pointer<Pointer> ppmk);
typedef _Inverse_Dart = int Function(Pointer obj, Pointer<Pointer> ppmk);

typedef _CommonPrefixWith_Native = Int32 Function(
    Pointer obj, Pointer pmkOther, Pointer<Pointer> ppmkPrefix);
typedef _CommonPrefixWith_Dart = int Function(
    Pointer obj, Pointer pmkOther, Pointer<Pointer> ppmkPrefix);

typedef _RelativePathTo_Native = Int32 Function(
    Pointer obj, Pointer pmkOther, Pointer<Pointer> ppmkRelPath);
typedef _RelativePathTo_Dart = int Function(
    Pointer obj, Pointer pmkOther, Pointer<Pointer> ppmkRelPath);

typedef _GetDisplayName_Native = Int32 Function(Pointer obj, Pointer pbc,
    Pointer pmkToLeft, Pointer<Pointer<Utf16>> ppszDisplayName);
typedef _GetDisplayName_Dart = int Function(Pointer obj, Pointer pbc,
    Pointer pmkToLeft, Pointer<Pointer<Utf16>> ppszDisplayName);

typedef _ParseDisplayName_Native = Int32 Function(
    Pointer obj,
    Pointer pbc,
    Pointer pmkToLeft,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<Pointer> ppmkOut);
typedef _ParseDisplayName_Dart = int Function(
    Pointer obj,
    Pointer pbc,
    Pointer pmkToLeft,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<Pointer> ppmkOut);

typedef _IsSystemMoniker_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwMksys);
typedef _IsSystemMoniker_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwMksys);

/// {@category Interface}
/// {@category com}
class IMoniker extends IPersistStream {
  // vtable begins at 8, ends at 22

  IMoniker(Pointer<COMObject> ptr) : super(ptr);

  int BindToObject(Pointer pbc, Pointer pmkToLeft, Pointer<GUID> riidResult,
          Pointer<Pointer> ppvResult) =>
      Pointer<NativeFunction<_BindToObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_BindToObject_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, riidResult, ppvResult);

  int BindToStorage(Pointer pbc, Pointer pmkToLeft, Pointer<GUID> riid,
          Pointer<Pointer> ppvObj) =>
      Pointer<NativeFunction<_BindToStorage_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_BindToStorage_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, riid, ppvObj);

  int Reduce(Pointer pbc, int dwReduceHowFar, Pointer<Pointer> ppmkToLeft,
          Pointer<Pointer> ppmkReduced) =>
      Pointer<NativeFunction<_Reduce_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_Reduce_Dart>()(
          ptr.ref.lpVtbl, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);

  int ComposeWith(Pointer pmkRight, int fOnlyIfNotGeneric,
          Pointer<Pointer> ppmkComposite) =>
      Pointer<NativeFunction<_ComposeWith_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_ComposeWith_Dart>()(
          ptr.ref.lpVtbl, pmkRight, fOnlyIfNotGeneric, ppmkComposite);

  int Enum(int fForward, Pointer<Pointer> ppenumMoniker) =>
      Pointer<NativeFunction<_Enum_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_Enum_Dart>()(ptr.ref.lpVtbl, fForward, ppenumMoniker);

  int IsEqual(Pointer pmkOtherMoniker) =>
      Pointer<NativeFunction<_IsEqual_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_IsEqual_Dart>()(ptr.ref.lpVtbl, pmkOtherMoniker);

  int Hash(Pointer<Uint32> pdwHash) =>
      Pointer<NativeFunction<_Hash_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_Hash_Dart>()(ptr.ref.lpVtbl, pdwHash);

  int IsRunning(Pointer pbc, Pointer pmkToLeft, Pointer pmkNewlyRunning) =>
      Pointer<NativeFunction<_IsRunning_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_IsRunning_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pmkNewlyRunning);

  int GetTimeOfLastChange(
          Pointer pbc, Pointer pmkToLeft, Pointer<FILETIME> pFileTime) =>
      Pointer<NativeFunction<_GetTimeOfLastChange_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_GetTimeOfLastChange_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pFileTime);

  int Inverse(Pointer<Pointer> ppmk) =>
      Pointer<NativeFunction<_Inverse_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_Inverse_Dart>()(ptr.ref.lpVtbl, ppmk);

  int CommonPrefixWith(Pointer pmkOther, Pointer<Pointer> ppmkPrefix) =>
      Pointer<NativeFunction<_CommonPrefixWith_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<_CommonPrefixWith_Dart>()(
          ptr.ref.lpVtbl, pmkOther, ppmkPrefix);

  int RelativePathTo(Pointer pmkOther, Pointer<Pointer> ppmkRelPath) =>
      Pointer<NativeFunction<_RelativePathTo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<_RelativePathTo_Dart>()(
          ptr.ref.lpVtbl, pmkOther, ppmkRelPath);

  int GetDisplayName(Pointer pbc, Pointer pmkToLeft,
          Pointer<Pointer<Utf16>> ppszDisplayName) =>
      Pointer<NativeFunction<_GetDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<_GetDisplayName_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, ppszDisplayName);

  int ParseDisplayName(
          Pointer pbc,
          Pointer pmkToLeft,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<Pointer> ppmkOut) =>
      Pointer<NativeFunction<_ParseDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(21).value)
              .asFunction<_ParseDisplayName_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);

  int IsSystemMoniker(Pointer<Uint32> pdwMksys) =>
      Pointer<NativeFunction<_IsSystemMoniker_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(22).value)
          .asFunction<_IsSystemMoniker_Dart>()(ptr.ref.lpVtbl, pdwMksys);
}
