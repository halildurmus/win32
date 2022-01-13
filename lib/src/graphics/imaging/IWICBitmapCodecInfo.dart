// IWICBitmapCodecInfo.dart

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

import '../../graphics/imaging/IWICComponentInfo.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWICBitmapCodecInfo = '{E87A44C4-B76E-4C47-8B09-298EB12A2714}';

/// {@category Interface}
/// {@category com}
class IWICBitmapCodecInfo extends IWICComponentInfo {
  // vtable begins at 11, is 12 entries long.
  IWICBitmapCodecInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetContainerFormat(
    Pointer<GUID> pguidContainerFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidContainerFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidContainerFormat,
      );

  int GetPixelFormats(
    int cFormats,
    Pointer<GUID> pguidPixelFormats,
    Pointer<Uint32> pcActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cFormats,
            Pointer<GUID> pguidPixelFormats,
            Pointer<Uint32> pcActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cFormats,
            Pointer<GUID> pguidPixelFormats,
            Pointer<Uint32> pcActual,
          )>()(
        ptr.ref.lpVtbl,
        cFormats,
        pguidPixelFormats,
        pcActual,
      );

  int GetColorManagementVersion(
    int cchColorManagementVersion,
    Pointer<Utf16> wzColorManagementVersion,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchColorManagementVersion,
            Pointer<Utf16> wzColorManagementVersion,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchColorManagementVersion,
            Pointer<Utf16> wzColorManagementVersion,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchColorManagementVersion,
        wzColorManagementVersion,
        pcchActual,
      );

  int GetDeviceManufacturer(
    int cchDeviceManufacturer,
    Pointer<Utf16> wzDeviceManufacturer,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchDeviceManufacturer,
            Pointer<Utf16> wzDeviceManufacturer,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchDeviceManufacturer,
            Pointer<Utf16> wzDeviceManufacturer,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchDeviceManufacturer,
        wzDeviceManufacturer,
        pcchActual,
      );

  int GetDeviceModels(
    int cchDeviceModels,
    Pointer<Utf16> wzDeviceModels,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchDeviceModels,
            Pointer<Utf16> wzDeviceModels,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchDeviceModels,
            Pointer<Utf16> wzDeviceModels,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchDeviceModels,
        wzDeviceModels,
        pcchActual,
      );

  int GetMimeTypes(
    int cchMimeTypes,
    Pointer<Utf16> wzMimeTypes,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchMimeTypes,
            Pointer<Utf16> wzMimeTypes,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchMimeTypes,
            Pointer<Utf16> wzMimeTypes,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchMimeTypes,
        wzMimeTypes,
        pcchActual,
      );

  int GetFileExtensions(
    int cchFileExtensions,
    Pointer<Utf16> wzFileExtensions,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cchFileExtensions,
            Pointer<Utf16> wzFileExtensions,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cchFileExtensions,
            Pointer<Utf16> wzFileExtensions,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cchFileExtensions,
        wzFileExtensions,
        pcchActual,
      );

  int DoesSupportAnimation(
    Pointer<Int32> pfSupportAnimation,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSupportAnimation,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSupportAnimation,
          )>()(
        ptr.ref.lpVtbl,
        pfSupportAnimation,
      );

  int DoesSupportChromakey(
    Pointer<Int32> pfSupportChromakey,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSupportChromakey,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSupportChromakey,
          )>()(
        ptr.ref.lpVtbl,
        pfSupportChromakey,
      );

  int DoesSupportLossless(
    Pointer<Int32> pfSupportLossless,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSupportLossless,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSupportLossless,
          )>()(
        ptr.ref.lpVtbl,
        pfSupportLossless,
      );

  int DoesSupportMultiframe(
    Pointer<Int32> pfSupportMultiframe,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSupportMultiframe,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSupportMultiframe,
          )>()(
        ptr.ref.lpVtbl,
        pfSupportMultiframe,
      );

  int MatchesMimeType(
    Pointer<Utf16> wzMimeType,
    Pointer<Int32> pfMatches,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wzMimeType,
            Pointer<Int32> pfMatches,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wzMimeType,
            Pointer<Int32> pfMatches,
          )>()(
        ptr.ref.lpVtbl,
        wzMimeType,
        pfMatches,
      );
}
