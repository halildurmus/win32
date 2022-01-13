// IAttachmentExecute.dart

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
import '../../ui/shell/structs.g.dart';

/// @nodoc
const IID_IAttachmentExecute = '{73DB1241-1E85-4581-8E4F-A81E1D0F8C57}';

/// {@category Interface}
/// {@category com}
class IAttachmentExecute extends IUnknown {
  // vtable begins at 3, is 12 entries long.
  IAttachmentExecute(Pointer<COMObject> ptr) : super(ptr);

  int SetClientTitle(
    Pointer<Utf16> pszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTitle,
          )>()(
        ptr.ref.lpVtbl,
        pszTitle,
      );

  int SetClientGuid(
    Pointer<GUID> guid,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guid,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guid,
          )>()(
        ptr.ref.lpVtbl,
        guid,
      );

  int SetLocalPath(
    Pointer<Utf16> pszLocalPath,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszLocalPath,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszLocalPath,
          )>()(
        ptr.ref.lpVtbl,
        pszLocalPath,
      );

  int SetFileName(
    Pointer<Utf16> pszFileName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszFileName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszFileName,
          )>()(
        ptr.ref.lpVtbl,
        pszFileName,
      );

  int SetSource(
    Pointer<Utf16> pszSource,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszSource,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszSource,
          )>()(
        ptr.ref.lpVtbl,
        pszSource,
      );

  int SetReferrer(
    Pointer<Utf16> pszReferrer,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszReferrer,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszReferrer,
          )>()(
        ptr.ref.lpVtbl,
        pszReferrer,
      );

  int CheckPolicy() => ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int Prompt(
    int hwnd,
    int prompt,
    Pointer<Int32> paction,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Int32 prompt,
            Pointer<Int32> paction,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            int prompt,
            Pointer<Int32> paction,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        prompt,
        paction,
      );

  int Save() => ptr.ref.lpVtbl.value
          .elementAt(11)
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

  int Execute(
    int hwnd,
    Pointer<Utf16> pszVerb,
    Pointer<IntPtr> phProcess,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
            Pointer<Utf16> pszVerb,
            Pointer<IntPtr> phProcess,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
            Pointer<Utf16> pszVerb,
            Pointer<IntPtr> phProcess,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
        pszVerb,
        phProcess,
      );

  int SaveWithUI(
    int hwnd,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            IntPtr hwnd,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int hwnd,
          )>()(
        ptr.ref.lpVtbl,
        hwnd,
      );

  int ClearClientState() => ptr.ref.lpVtbl.value
          .elementAt(14)
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
}
