// IMFASFMutualExclusion.dart

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
import '../../media/mediafoundation/IMFASFMutualExclusion.dart';

/// @nodoc
const IID_IMFASFMutualExclusion = '{12558291-E399-11D5-BC2A-00B0D0F3F4AB}';

/// {@category Interface}
/// {@category com}
class IMFASFMutualExclusion extends IUnknown {
  // vtable begins at 3, is 9 entries long.
  IMFASFMutualExclusion(Pointer<COMObject> ptr) : super(ptr);

  int GetType(
    Pointer<GUID> pguidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> pguidType,
          )>()(
        ptr.ref.lpVtbl,
        pguidType,
      );

  int SetType(
    Pointer<GUID> guidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidType,
          )>()(
        ptr.ref.lpVtbl,
        guidType,
      );

  int GetRecordCount(
    Pointer<Uint32> pdwRecordCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRecordCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRecordCount,
          )>()(
        ptr.ref.lpVtbl,
        pdwRecordCount,
      );

  int GetStreamsForRecord(
    int dwRecordNumber,
    Pointer<Uint16> pwStreamNumArray,
    Pointer<Uint32> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordNumber,
            Pointer<Uint16> pwStreamNumArray,
            Pointer<Uint32> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordNumber,
            Pointer<Uint16> pwStreamNumArray,
            Pointer<Uint32> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordNumber,
        pwStreamNumArray,
        pcStreams,
      );

  int AddStreamForRecord(
    int dwRecordNumber,
    int wStreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordNumber,
            Uint16 wStreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordNumber,
            int wStreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordNumber,
        wStreamNumber,
      );

  int RemoveStreamFromRecord(
    int dwRecordNumber,
    int wStreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordNumber,
            Uint16 wStreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordNumber,
            int wStreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordNumber,
        wStreamNumber,
      );

  int RemoveRecord(
    int dwRecordNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwRecordNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwRecordNumber,
          )>()(
        ptr.ref.lpVtbl,
        dwRecordNumber,
      );

  int AddRecord(
    Pointer<Uint32> pdwRecordNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwRecordNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwRecordNumber,
          )>()(
        ptr.ref.lpVtbl,
        pdwRecordNumber,
      );

  int Clone(
    Pointer<Pointer<COMObject>> ppIMutex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMutex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppIMutex,
          )>()(
        ptr.ref.lpVtbl,
        ppIMutex,
      );
}
