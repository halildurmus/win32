// IPMExtensionFileExtensionInfo.dart

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
import '../../system/applicationinstallationandservicing/structs.g.dart';

/// @nodoc
const IID_IPMExtensionFileExtensionInfo =
    '{6B87CB6C-0B88-4989-A4EC-033714F710D4}';

/// {@category Interface}
/// {@category com}
class IPMExtensionFileExtensionInfo extends IUnknown {
  // vtable begins at 3, is 7 entries long.
  IPMExtensionFileExtensionInfo(Pointer<COMObject> ptr) : super(ptr);

  Pointer<Utf16> get Name {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  Pointer<Utf16> get DisplayName {
    final retValuePtr = calloc<Pointer<Utf16>>();

    try {
      final hr = ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDisplayName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pDisplayName,
          )>()(ptr.ref.lpVtbl, retValuePtr);

      if (FAILED(hr)) throw WindowsException(hr);

      final retValue = retValuePtr.value;
      return retValue;
    } finally {
      free(retValuePtr);
    }
  }

  int get_Logo(
    int LogoSize,
    Pointer<Pointer<Utf16>> pLogo,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 LogoSize,
            Pointer<Pointer<Utf16>> pLogo,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int LogoSize,
            Pointer<Pointer<Utf16>> pLogo,
          )>()(
        ptr.ref.lpVtbl,
        LogoSize,
        pLogo,
      );

  int get_ContentType(
    Pointer<Utf16> FileType,
    Pointer<Pointer<Utf16>> pContentType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> FileType,
            Pointer<Pointer<Utf16>> pContentType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> FileType,
            Pointer<Pointer<Utf16>> pContentType,
          )>()(
        ptr.ref.lpVtbl,
        FileType,
        pContentType,
      );

  int get_FileType(
    Pointer<Utf16> ContentType,
    Pointer<Pointer<Utf16>> pFileType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ContentType,
            Pointer<Pointer<Utf16>> pFileType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ContentType,
            Pointer<Pointer<Utf16>> pFileType,
          )>()(
        ptr.ref.lpVtbl,
        ContentType,
        pFileType,
      );

  int get_InvocationInfo(
    Pointer<Pointer<Utf16>> pImageUrn,
    Pointer<Pointer<Utf16>> pParameters,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pImageUrn,
            Pointer<Pointer<Utf16>> pParameters,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pImageUrn,
            Pointer<Pointer<Utf16>> pParameters,
          )>()(
        ptr.ref.lpVtbl,
        pImageUrn,
        pParameters,
      );

  int get_AllFileTypes(
    Pointer<Uint32> pcbTypes,
    Pointer<Pointer<Pointer<Utf16>>> ppTypes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcbTypes,
            Pointer<Pointer<Pointer<Utf16>>> ppTypes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcbTypes,
            Pointer<Pointer<Pointer<Utf16>>> ppTypes,
          )>()(
        ptr.ref.lpVtbl,
        pcbTypes,
        ppTypes,
      );
}
