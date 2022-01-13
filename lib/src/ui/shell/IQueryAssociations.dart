// IQueryAssociations.dart

// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

// ignore_for_file: unused_import, directives_ordering

import 'dart:ffi';

import 'package:ffi/ffi.dart';

import '../../combase.dart';
import '../../constants.dart';
import '../../exceptions.dart';
import '../../guid.dart';
import '../../macros.dart';
import '../../ole32.dart';
import '../../utils.dart';

import '../../system/com/IUnknown.dart';
import '../../foundation/structs.g.dart';
import '../../system/registry/structs.g.dart';
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IQueryAssociations = '{C46CA590-3C3F-11D2-BEE6-0000F805CA57}';

/// {@category Interface}
/// {@category com}
class IQueryAssociations extends IUnknown {
  // vtable begins at 3, is 5 entries long.
  IQueryAssociations(Pointer<COMObject> ptr) : super(ptr);

  int Init(
    int flags,
    Pointer<Utf16> pszAssoc,
    int hkProgid,
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Pointer<Utf16> pszAssoc,
            IntPtr hkProgid,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            Pointer<Utf16> pszAssoc,
            int hkProgid,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        pszAssoc,
        hkProgid,
        hwnd,
      );

  int GetString(
    int flags,
    int str,
    Pointer<Utf16> pszExtra,
    Pointer<Utf16> pszOut,
    Pointer<Uint32> pcchOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Int32 str,
            Pointer<Utf16> pszExtra,
            Pointer<Utf16> pszOut,
            Pointer<Uint32> pcchOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            int str,
            Pointer<Utf16> pszExtra,
            Pointer<Utf16> pszOut,
            Pointer<Uint32> pcchOut,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        str,
        pszExtra,
        pszOut,
        pcchOut,
      );

  int GetKey(
    int flags,
    int key,
    Pointer<Utf16> pszExtra,
    Pointer<IntPtr> phkeyOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Int32 key,
            Pointer<Utf16> pszExtra,
            Pointer<IntPtr> phkeyOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            int key,
            Pointer<Utf16> pszExtra,
            Pointer<IntPtr> phkeyOut,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        key,
        pszExtra,
        phkeyOut,
      );

  int GetData(
    int flags,
    int data,
    Pointer<Utf16> pszExtra,
    Pointer pvOut,
    Pointer<Uint32> pcbOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Int32 data,
            Pointer<Utf16> pszExtra,
            Pointer pvOut,
            Pointer<Uint32> pcbOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            int data,
            Pointer<Utf16> pszExtra,
            Pointer pvOut,
            Pointer<Uint32> pcbOut,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        data,
        pszExtra,
        pvOut,
        pcbOut,
      );

  int GetEnum(
    int flags,
    int assocenum,
    Pointer<Utf16> pszExtra,
    Pointer<GUID> riid,
    Pointer<Pointer> ppvOut,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 flags,
            Int32 assocenum,
            Pointer<Utf16> pszExtra,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvOut,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int flags,
            int assocenum,
            Pointer<Utf16> pszExtra,
            Pointer<GUID> riid,
            Pointer<Pointer> ppvOut,
          )>()(
        ptr.ref.lpVtbl,
        flags,
        assocenum,
        pszExtra,
        riid,
        ppvOut,
      );
}
