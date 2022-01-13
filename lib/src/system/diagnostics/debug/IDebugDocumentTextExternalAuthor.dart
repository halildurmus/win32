// IDebugDocumentTextExternalAuthor.dart

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

/// @nodoc
const IID_IDebugDocumentTextExternalAuthor =
    '{51973C25-CB0C-11D0-B5C9-00A0244A0E7A}';

/// {@category Interface}
/// {@category com}
class IDebugDocumentTextExternalAuthor extends IUnknown {
  // vtable begins at 3, is 3 entries long.
  IDebugDocumentTextExternalAuthor(Pointer<COMObject> ptr) : super(ptr);

  int GetPathName(
    Pointer<Pointer<Utf16>> pbstrLongName,
    Pointer<Int32> pfIsOriginalFile,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLongName,
            Pointer<Int32> pfIsOriginalFile,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrLongName,
            Pointer<Int32> pfIsOriginalFile,
          )>()(
        ptr.ref.lpVtbl,
        pbstrLongName,
        pfIsOriginalFile,
      );

  int GetFileName(
    Pointer<Pointer<Utf16>> pbstrShortName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrShortName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrShortName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrShortName,
      );

  int NotifyChanged() => ptr.ref.lpVtbl.value
          .elementAt(5)
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
