// IMoniker.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../com/combase.dart';
import '../constants.dart';
import '../exceptions.dart';
import '../macros.dart';
import '../ole32.dart';
import '../structs.dart';

import 'IPersistStream.dart';

/// @nodoc
const IID_IMoniker = '{0000000f-0000-0000-C000-000000000046}';

typedef _BindToObject_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<GUID> riidResult,
    Pointer<IntPtr> ppvResult);
typedef _BindToObject_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<GUID> riidResult,
    Pointer<IntPtr> ppvResult);

typedef _BindToStorage_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<GUID> riid,
    Pointer<IntPtr> ppvObj);
typedef _BindToStorage_Dart = int Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft, Pointer<GUID> riid, Pointer<IntPtr> ppvObj);

typedef _Reduce_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Uint32 dwReduceHowFar,
    Pointer<IntPtr> ppmkToLeft,
    Pointer<IntPtr> ppmkReduced);
typedef _Reduce_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    int dwReduceHowFar,
    Pointer<IntPtr> ppmkToLeft,
    Pointer<IntPtr> ppmkReduced);

typedef _ComposeWith_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pmkRight,
    Int32 fOnlyIfNotGeneric,
    Pointer<IntPtr> ppmkComposite);
typedef _ComposeWith_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pmkRight,
    int fOnlyIfNotGeneric,
    Pointer<IntPtr> ppmkComposite);

typedef _Enum_Native = Int32 Function(
    Pointer obj, Int32 fForward, Pointer<IntPtr> ppenumMoniker);
typedef _Enum_Dart = int Function(
    Pointer obj, int fForward, Pointer<IntPtr> ppenumMoniker);

typedef _IsEqual_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pmkOtherMoniker);
typedef _IsEqual_Dart = int Function(
    Pointer obj, Pointer<COMObject> pmkOtherMoniker);

typedef _Hash_Native = Int32 Function(Pointer obj, Pointer<Uint32> pdwHash);
typedef _Hash_Dart = int Function(Pointer obj, Pointer<Uint32> pdwHash);

typedef _IsRunning_Native = Int32 Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft, Pointer<COMObject> pmkNewlyRunning);
typedef _IsRunning_Dart = int Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft, Pointer<COMObject> pmkNewlyRunning);

typedef _GetTimeOfLastChange_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<FILETIME> pFileTime);
typedef _GetTimeOfLastChange_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<FILETIME> pFileTime);

typedef _Inverse_Native = Int32 Function(Pointer obj, Pointer<IntPtr> ppmk);
typedef _Inverse_Dart = int Function(Pointer obj, Pointer<IntPtr> ppmk);

typedef _CommonPrefixWith_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pmkOther, Pointer<IntPtr> ppmkPrefix);
typedef _CommonPrefixWith_Dart = int Function(
    Pointer obj, Pointer<COMObject> pmkOther, Pointer<IntPtr> ppmkPrefix);

typedef _RelativePathTo_Native = Int32 Function(
    Pointer obj, Pointer<COMObject> pmkOther, Pointer<IntPtr> ppmkRelPath);
typedef _RelativePathTo_Dart = int Function(
    Pointer obj, Pointer<COMObject> pmkOther, Pointer<IntPtr> ppmkRelPath);

typedef _GetDisplayName_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<Utf16> ppszDisplayName);
typedef _GetDisplayName_Dart = int Function(Pointer obj, Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft, Pointer<Utf16> ppszDisplayName);

typedef _ParseDisplayName_Native = Int32 Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<IntPtr> ppmkOut);
typedef _ParseDisplayName_Dart = int Function(
    Pointer obj,
    Pointer<COMObject> pbc,
    Pointer<COMObject> pmkToLeft,
    Pointer<Utf16> pszDisplayName,
    Pointer<Uint32> pchEaten,
    Pointer<IntPtr> ppmkOut);

typedef _IsSystemMoniker_Native = Int32 Function(
    Pointer obj, Pointer<Uint32> pdwMksys);
typedef _IsSystemMoniker_Dart = int Function(
    Pointer obj, Pointer<Uint32> pdwMksys);

/// {@category Interface}
/// {@category com}
class IMoniker extends IPersistStream {
  // vtable begins at 8, ends at 22

  IMoniker(Pointer<COMObject> ptr) : super(ptr);

  int BindToObject(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<GUID> riidResult, Pointer<IntPtr> ppvResult) =>
      Pointer<NativeFunction<_BindToObject_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(8).value)
              .asFunction<_BindToObject_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, riidResult, ppvResult);

  int BindToStorage(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<GUID> riid, Pointer<IntPtr> ppvObj) =>
      Pointer<NativeFunction<_BindToStorage_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(9).value)
              .asFunction<_BindToStorage_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, riid, ppvObj);

  int Reduce(Pointer<COMObject> pbc, int dwReduceHowFar,
          Pointer<IntPtr> ppmkToLeft, Pointer<IntPtr> ppmkReduced) =>
      Pointer<NativeFunction<_Reduce_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(10).value)
              .asFunction<_Reduce_Dart>()(
          ptr.ref.lpVtbl, pbc, dwReduceHowFar, ppmkToLeft, ppmkReduced);

  int ComposeWith(Pointer<COMObject> pmkRight, int fOnlyIfNotGeneric,
          Pointer<IntPtr> ppmkComposite) =>
      Pointer<NativeFunction<_ComposeWith_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(11).value)
              .asFunction<_ComposeWith_Dart>()(
          ptr.ref.lpVtbl, pmkRight, fOnlyIfNotGeneric, ppmkComposite);

  int Enum(int fForward, Pointer<IntPtr> ppenumMoniker) =>
      Pointer<NativeFunction<_Enum_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(12).value)
          .asFunction<_Enum_Dart>()(ptr.ref.lpVtbl, fForward, ppenumMoniker);

  int IsEqual(Pointer<COMObject> pmkOtherMoniker) =>
      Pointer<NativeFunction<_IsEqual_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(13).value)
          .asFunction<_IsEqual_Dart>()(ptr.ref.lpVtbl, pmkOtherMoniker);

  int Hash(Pointer<Uint32> pdwHash) =>
      Pointer<NativeFunction<_Hash_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(14).value)
          .asFunction<_Hash_Dart>()(ptr.ref.lpVtbl, pdwHash);

  int IsRunning(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<COMObject> pmkNewlyRunning) =>
      Pointer<NativeFunction<_IsRunning_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(15).value)
              .asFunction<_IsRunning_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pmkNewlyRunning);

  int GetTimeOfLastChange(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<FILETIME> pFileTime) =>
      Pointer<NativeFunction<_GetTimeOfLastChange_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(16).value)
              .asFunction<_GetTimeOfLastChange_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pFileTime);

  int Inverse(Pointer<IntPtr> ppmk) =>
      Pointer<NativeFunction<_Inverse_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(17).value)
          .asFunction<_Inverse_Dart>()(ptr.ref.lpVtbl, ppmk);

  int CommonPrefixWith(
          Pointer<COMObject> pmkOther, Pointer<IntPtr> ppmkPrefix) =>
      Pointer<NativeFunction<_CommonPrefixWith_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(18).value)
              .asFunction<_CommonPrefixWith_Dart>()(
          ptr.ref.lpVtbl, pmkOther, ppmkPrefix);

  int RelativePathTo(
          Pointer<COMObject> pmkOther, Pointer<IntPtr> ppmkRelPath) =>
      Pointer<NativeFunction<_RelativePathTo_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(19).value)
              .asFunction<_RelativePathTo_Dart>()(
          ptr.ref.lpVtbl, pmkOther, ppmkRelPath);

  int GetDisplayName(Pointer<COMObject> pbc, Pointer<COMObject> pmkToLeft,
          Pointer<Utf16> ppszDisplayName) =>
      Pointer<NativeFunction<_GetDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(20).value)
              .asFunction<_GetDisplayName_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, ppszDisplayName);

  int ParseDisplayName(
          Pointer<COMObject> pbc,
          Pointer<COMObject> pmkToLeft,
          Pointer<Utf16> pszDisplayName,
          Pointer<Uint32> pchEaten,
          Pointer<IntPtr> ppmkOut) =>
      Pointer<NativeFunction<_ParseDisplayName_Native>>.fromAddress(
                  ptr.ref.vtable.elementAt(21).value)
              .asFunction<_ParseDisplayName_Dart>()(
          ptr.ref.lpVtbl, pbc, pmkToLeft, pszDisplayName, pchEaten, ppmkOut);

  int IsSystemMoniker(Pointer<Uint32> pdwMksys) =>
      Pointer<NativeFunction<_IsSystemMoniker_Native>>.fromAddress(
              ptr.ref.vtable.elementAt(22).value)
          .asFunction<_IsSystemMoniker_Dart>()(ptr.ref.lpVtbl, pdwMksys);
}
