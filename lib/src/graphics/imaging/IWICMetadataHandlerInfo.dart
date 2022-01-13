// IWICMetadataHandlerInfo.dart

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
const IID_IWICMetadataHandlerInfo = '{ABA958BF-C672-44D1-8D61-CE6DF2E682C2}';

/// {@category Interface}
/// {@category com}
class IWICMetadataHandlerInfo extends IWICComponentInfo {
  // vtable begins at 11, is 7 entries long.
  IWICMetadataHandlerInfo(Pointer<COMObject> ptr) : super(ptr);

  int GetMetadataFormat(
    Pointer<GUID> pguidMetadataFormat,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidMetadataFormat,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidMetadataFormat,
          )>()(
        ptr.ref.lpVtbl,
        pguidMetadataFormat,
      );

  int GetContainerFormats(
    int cContainerFormats,
    Pointer<GUID> pguidContainerFormats,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 cContainerFormats,
            Pointer<GUID> pguidContainerFormats,
            Pointer<Uint32> pcchActual,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int cContainerFormats,
            Pointer<GUID> pguidContainerFormats,
            Pointer<Uint32> pcchActual,
          )>()(
        ptr.ref.lpVtbl,
        cContainerFormats,
        pguidContainerFormats,
        pcchActual,
      );

  int GetDeviceManufacturer(
    int cchDeviceManufacturer,
    Pointer<Utf16> wzDeviceManufacturer,
    Pointer<Uint32> pcchActual,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
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
          .elementAt(14)
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

  int DoesRequireFullStream(
    Pointer<Int32> pfRequiresFullStream,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfRequiresFullStream,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfRequiresFullStream,
          )>()(
        ptr.ref.lpVtbl,
        pfRequiresFullStream,
      );

  int DoesSupportPadding(
    Pointer<Int32> pfSupportsPadding,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfSupportsPadding,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfSupportsPadding,
          )>()(
        ptr.ref.lpVtbl,
        pfSupportsPadding,
      );

  int DoesRequireFixedSize(
    Pointer<Int32> pfFixedSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfFixedSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfFixedSize,
          )>()(
        ptr.ref.lpVtbl,
        pfFixedSize,
      );
}
