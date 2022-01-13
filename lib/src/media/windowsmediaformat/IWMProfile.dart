// IWMProfile.dart

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
import '../../media/windowsmediaformat/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/windowsmediaformat/IWMStreamConfig.dart';
import '../../media/windowsmediaformat/IWMMutualExclusion.dart';

/// @nodoc
const IID_IWMProfile = '{96406BDB-2B2B-11D3-B36B-00C04F6108FF}';

/// {@category Interface}
/// {@category com}
class IWMProfile extends IUnknown {
  // vtable begins at 3, is 18 entries long.
  IWMProfile(Pointer<COMObject> ptr) : super(ptr);

  int GetVersion(
    Pointer<Int32> pdwVersion,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pdwVersion,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pdwVersion,
          )>()(
        ptr.ref.lpVtbl,
        pdwVersion,
      );

  int GetName(
    Pointer<Utf16> pwszName,
    Pointer<Uint32> pcchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint32> pcchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint32> pcchName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pcchName,
      );

  int SetName(
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
      );

  int GetDescription(
    Pointer<Utf16> pwszDescription,
    Pointer<Uint32> pcchDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDescription,
            Pointer<Uint32> pcchDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDescription,
            Pointer<Uint32> pcchDescription,
          )>()(
        ptr.ref.lpVtbl,
        pwszDescription,
        pcchDescription,
      );

  int SetDescription(
    Pointer<Utf16> pwszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszDescription,
          )>()(
        ptr.ref.lpVtbl,
        pwszDescription,
      );

  int GetStreamCount(
    Pointer<Uint32> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        pcStreams,
      );

  int GetStream(
    int dwStreamIndex,
    Pointer<Pointer<COMObject>> ppConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwStreamIndex,
            Pointer<Pointer<COMObject>> ppConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwStreamIndex,
            Pointer<Pointer<COMObject>> ppConfig,
          )>()(
        ptr.ref.lpVtbl,
        dwStreamIndex,
        ppConfig,
      );

  int GetStreamByNumber(
    int wStreamNum,
    Pointer<Pointer<COMObject>> ppConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
            Pointer<Pointer<COMObject>> ppConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
            Pointer<Pointer<COMObject>> ppConfig,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
        ppConfig,
      );

  int RemoveStream(
    Pointer<COMObject> pConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConfig,
          )>()(
        ptr.ref.lpVtbl,
        pConfig,
      );

  int RemoveStreamByNumber(
    int wStreamNum,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wStreamNum,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wStreamNum,
          )>()(
        ptr.ref.lpVtbl,
        wStreamNum,
      );

  int AddStream(
    Pointer<COMObject> pConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConfig,
          )>()(
        ptr.ref.lpVtbl,
        pConfig,
      );

  int ReconfigStream(
    Pointer<COMObject> pConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pConfig,
          )>()(
        ptr.ref.lpVtbl,
        pConfig,
      );

  int CreateNewStream(
    Pointer<GUID> guidStreamType,
    Pointer<Pointer<COMObject>> ppConfig,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<GUID> guidStreamType,
            Pointer<Pointer<COMObject>> ppConfig,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<GUID> guidStreamType,
            Pointer<Pointer<COMObject>> ppConfig,
          )>()(
        ptr.ref.lpVtbl,
        guidStreamType,
        ppConfig,
      );

  int GetMutualExclusionCount(
    Pointer<Uint32> pcME,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pcME,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pcME,
          )>()(
        ptr.ref.lpVtbl,
        pcME,
      );

  int GetMutualExclusion(
    int dwMEIndex,
    Pointer<Pointer<COMObject>> ppME,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwMEIndex,
            Pointer<Pointer<COMObject>> ppME,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwMEIndex,
            Pointer<Pointer<COMObject>> ppME,
          )>()(
        ptr.ref.lpVtbl,
        dwMEIndex,
        ppME,
      );

  int RemoveMutualExclusion(
    Pointer<COMObject> pME,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pME,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pME,
          )>()(
        ptr.ref.lpVtbl,
        pME,
      );

  int AddMutualExclusion(
    Pointer<COMObject> pME,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pME,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pME,
          )>()(
        ptr.ref.lpVtbl,
        pME,
      );

  int CreateNewMutualExclusion(
    Pointer<Pointer<COMObject>> ppME,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppME,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppME,
          )>()(
        ptr.ref.lpVtbl,
        ppME,
      );
}
