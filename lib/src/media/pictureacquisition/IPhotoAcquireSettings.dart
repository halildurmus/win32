// IPhotoAcquireSettings.dart

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

/// @nodoc
const IID_IPhotoAcquireSettings = '{00F2B868-DD67-487C-9553-049240767E91}';

/// {@category Interface}
/// {@category com}
class IPhotoAcquireSettings extends IUnknown {
  // vtable begins at 3, is 13 entries long.
  IPhotoAcquireSettings(Pointer<COMObject> ptr) : super(ptr);

  int InitializeFromRegistry(
    Pointer<Utf16> pszRegistryKey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszRegistryKey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszRegistryKey,
          )>()(
        ptr.ref.lpVtbl,
        pszRegistryKey,
      );

  int SetFlags(
    int dwPhotoAcquireFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwPhotoAcquireFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwPhotoAcquireFlags,
          )>()(
        ptr.ref.lpVtbl,
        dwPhotoAcquireFlags,
      );

  int SetOutputFilenameTemplate(
    Pointer<Utf16> pszTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszTemplate,
          )>()(
        ptr.ref.lpVtbl,
        pszTemplate,
      );

  int SetSequencePaddingWidth(
    int dwWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwWidth,
          )>()(
        ptr.ref.lpVtbl,
        dwWidth,
      );

  int SetSequenceZeroPadding(
    int fZeroPad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 fZeroPad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fZeroPad,
          )>()(
        ptr.ref.lpVtbl,
        fZeroPad,
      );

  int SetGroupTag(
    Pointer<Utf16> pszGroupTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pszGroupTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pszGroupTag,
          )>()(
        ptr.ref.lpVtbl,
        pszGroupTag,
      );

  int SetAcquisitionTime(
    Pointer<FILETIME> pftAcquisitionTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pftAcquisitionTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pftAcquisitionTime,
          )>()(
        ptr.ref.lpVtbl,
        pftAcquisitionTime,
      );

  int GetFlags(
    Pointer<Uint32> pdwPhotoAcquireFlags,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwPhotoAcquireFlags,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwPhotoAcquireFlags,
          )>()(
        ptr.ref.lpVtbl,
        pdwPhotoAcquireFlags,
      );

  int GetOutputFilenameTemplate(
    Pointer<Pointer<Utf16>> pbstrTemplate,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrTemplate,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrTemplate,
          )>()(
        ptr.ref.lpVtbl,
        pbstrTemplate,
      );

  int GetSequencePaddingWidth(
    Pointer<Uint32> pdwWidth,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwWidth,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwWidth,
          )>()(
        ptr.ref.lpVtbl,
        pdwWidth,
      );

  int GetSequenceZeroPadding(
    Pointer<Int32> pfZeroPad,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfZeroPad,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfZeroPad,
          )>()(
        ptr.ref.lpVtbl,
        pfZeroPad,
      );

  int GetGroupTag(
    Pointer<Pointer<Utf16>> pbstrGroupTag,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrGroupTag,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrGroupTag,
          )>()(
        ptr.ref.lpVtbl,
        pbstrGroupTag,
      );

  int GetAcquisitionTime(
    Pointer<FILETIME> pftAcquisitionTime,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<FILETIME> pftAcquisitionTime,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<FILETIME> pftAcquisitionTime,
          )>()(
        ptr.ref.lpVtbl,
        pftAcquisitionTime,
      );
}
