// IDiscRecorder2Ex.dart

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
import '../../storage/imapi/structs.g.dart';

/// @nodoc
const IID_IDiscRecorder2Ex = '{27354132-7F64-5B0F-8F00-5D77AFBE261E}';

/// {@category Interface}
/// {@category com}
class IDiscRecorder2Ex extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IDiscRecorder2Ex(Pointer<COMObject> ptr) : super(ptr);

  int SendCommandNoData(
    Pointer<Uint8> Cdb,
    int CdbSize,
    Pointer<Uint8> SenseBuffer,
    int Timeout,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> Cdb,
            Uint32 CdbSize,
            Pointer<Uint8> SenseBuffer,
            Uint32 Timeout,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> Cdb,
            int CdbSize,
            Pointer<Uint8> SenseBuffer,
            int Timeout,
          )>()(
        ptr.ref.lpVtbl,
        Cdb,
        CdbSize,
        SenseBuffer,
        Timeout,
      );

  int SendCommandSendDataToDevice(
    Pointer<Uint8> Cdb,
    int CdbSize,
    Pointer<Uint8> SenseBuffer,
    int Timeout,
    Pointer<Uint8> Buffer,
    int BufferSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> Cdb,
            Uint32 CdbSize,
            Pointer<Uint8> SenseBuffer,
            Uint32 Timeout,
            Pointer<Uint8> Buffer,
            Uint32 BufferSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> Cdb,
            int CdbSize,
            Pointer<Uint8> SenseBuffer,
            int Timeout,
            Pointer<Uint8> Buffer,
            int BufferSize,
          )>()(
        ptr.ref.lpVtbl,
        Cdb,
        CdbSize,
        SenseBuffer,
        Timeout,
        Buffer,
        BufferSize,
      );

  int SendCommandGetDataFromDevice(
    Pointer<Uint8> Cdb,
    int CdbSize,
    Pointer<Uint8> SenseBuffer,
    int Timeout,
    Pointer<Uint8> Buffer,
    int BufferSize,
    Pointer<Uint32> BufferFetched,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> Cdb,
            Uint32 CdbSize,
            Pointer<Uint8> SenseBuffer,
            Uint32 Timeout,
            Pointer<Uint8> Buffer,
            Uint32 BufferSize,
            Pointer<Uint32> BufferFetched,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> Cdb,
            int CdbSize,
            Pointer<Uint8> SenseBuffer,
            int Timeout,
            Pointer<Uint8> Buffer,
            int BufferSize,
            Pointer<Uint32> BufferFetched,
          )>()(
        ptr.ref.lpVtbl,
        Cdb,
        CdbSize,
        SenseBuffer,
        Timeout,
        Buffer,
        BufferSize,
        BufferFetched,
      );

  int ReadDvdStructure(
    int format,
    int address,
    int layer,
    int agid,
    Pointer<Pointer<Uint8>> data,
    Pointer<Uint32> count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 format,
            Uint32 address,
            Uint32 layer,
            Uint32 agid,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int format,
            int address,
            int layer,
            int agid,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> count,
          )>()(
        ptr.ref.lpVtbl,
        format,
        address,
        layer,
        agid,
        data,
        count,
      );

  int SendDvdStructure(
    int format,
    Pointer<Uint8> data,
    int count,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 format,
            Pointer<Uint8> data,
            Uint32 count,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int format,
            Pointer<Uint8> data,
            int count,
          )>()(
        ptr.ref.lpVtbl,
        format,
        data,
        count,
      );

  int GetAdapterDescriptor(
    Pointer<Pointer<Uint8>> data,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        data,
        byteSize,
      );

  int GetDeviceDescriptor(
    Pointer<Pointer<Uint8>> data,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> data,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        data,
        byteSize,
      );

  int GetDiscInformation(
    Pointer<Pointer<Uint8>> discInformation,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> discInformation,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> discInformation,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        discInformation,
        byteSize,
      );

  int GetTrackInformation(
    int address,
    int addressType,
    Pointer<Pointer<Uint8>> trackInformation,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 address,
            Int32 addressType,
            Pointer<Pointer<Uint8>> trackInformation,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int address,
            int addressType,
            Pointer<Pointer<Uint8>> trackInformation,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        address,
        addressType,
        trackInformation,
        byteSize,
      );

  int GetFeaturePage(
    int requestedFeature,
    int currentFeatureOnly,
    Pointer<Pointer<Uint8>> featureData,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 requestedFeature,
            Uint8 currentFeatureOnly,
            Pointer<Pointer<Uint8>> featureData,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestedFeature,
            int currentFeatureOnly,
            Pointer<Pointer<Uint8>> featureData,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        requestedFeature,
        currentFeatureOnly,
        featureData,
        byteSize,
      );

  int GetModePage(
    int requestedModePage,
    int requestType,
    Pointer<Pointer<Uint8>> modePageData,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 requestedModePage,
            Int32 requestType,
            Pointer<Pointer<Uint8>> modePageData,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestedModePage,
            int requestType,
            Pointer<Pointer<Uint8>> modePageData,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        requestedModePage,
        requestType,
        modePageData,
        byteSize,
      );

  int SetModePage(
    int requestType,
    Pointer<Uint8> data,
    int byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 requestType,
            Pointer<Uint8> data,
            Uint32 byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestType,
            Pointer<Uint8> data,
            int byteSize,
          )>()(
        ptr.ref.lpVtbl,
        requestType,
        data,
        byteSize,
      );

  int GetSupportedFeaturePages(
    int currentFeatureOnly,
    Pointer<Pointer<Int32>> featureData,
    Pointer<Uint32> byteSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 currentFeatureOnly,
            Pointer<Pointer<Int32>> featureData,
            Pointer<Uint32> byteSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentFeatureOnly,
            Pointer<Pointer<Int32>> featureData,
            Pointer<Uint32> byteSize,
          )>()(
        ptr.ref.lpVtbl,
        currentFeatureOnly,
        featureData,
        byteSize,
      );

  int GetSupportedProfiles(
    int currentOnly,
    Pointer<Pointer<Int32>> profileTypes,
    Pointer<Uint32> validProfiles,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 currentOnly,
            Pointer<Pointer<Int32>> profileTypes,
            Pointer<Uint32> validProfiles,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int currentOnly,
            Pointer<Pointer<Int32>> profileTypes,
            Pointer<Uint32> validProfiles,
          )>()(
        ptr.ref.lpVtbl,
        currentOnly,
        profileTypes,
        validProfiles,
      );

  int GetSupportedModePages(
    int requestType,
    Pointer<Pointer<Int32>> modePageTypes,
    Pointer<Uint32> validPages,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 requestType,
            Pointer<Pointer<Int32>> modePageTypes,
            Pointer<Uint32> validPages,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int requestType,
            Pointer<Pointer<Int32>> modePageTypes,
            Pointer<Uint32> validPages,
          )>()(
        ptr.ref.lpVtbl,
        requestType,
        modePageTypes,
        validPages,
      );

  int GetByteAlignmentMask(
    Pointer<Uint32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetMaximumNonPageAlignedTransferSize(
    Pointer<Uint32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );

  int GetMaximumPageAlignedTransferSize(
    Pointer<Uint32> value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> value,
          )>()(
        ptr.ref.lpVtbl,
        value,
      );
}
