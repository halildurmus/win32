// IWMMutualExclusion2.dart

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

import '../../media/windowsmediaformat/IWMMutualExclusion.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMMutualExclusion2 = '{0302B57D-89D1-4BA2-85C9-166F2C53EB91}';

/// {@category Interface}
/// {@category com}
class IWMMutualExclusion2 extends IWMMutualExclusion {
  // vtable begins at 8, is 10 entries long.
  IWMMutualExclusion2(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Utf16> pwszName,
    Pointer<Uint16> pcchName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszName,
            Pointer<Uint16> pcchName,
          )>()(
        ptr.ref.lpVtbl,
        pwszName,
        pcchName,
      );

  int SetName(
    Pointer<Utf16> pwszName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
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

  int GetRecordCount(
    Pointer<Uint16> pwRecordCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwRecordCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwRecordCount,
          )>()(
        ptr.ref.lpVtbl,
        pwRecordCount,
      );

  int AddRecord() => ptr.ref.lpVtbl.value
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

  int RemoveRecord(
    int wRecordNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRecordNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRecordNumber,
          )>()(
        ptr.ref.lpVtbl,
        wRecordNumber,
      );

  int GetRecordName(
    int wRecordNumber,
    Pointer<Utf16> pwszRecordName,
    Pointer<Uint16> pcchRecordName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRecordNumber,
            Pointer<Utf16> pwszRecordName,
            Pointer<Uint16> pcchRecordName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRecordNumber,
            Pointer<Utf16> pwszRecordName,
            Pointer<Uint16> pcchRecordName,
          )>()(
        ptr.ref.lpVtbl,
        wRecordNumber,
        pwszRecordName,
        pcchRecordName,
      );

  int SetRecordName(
    int wRecordNumber,
    Pointer<Utf16> pwszRecordName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRecordNumber,
            Pointer<Utf16> pwszRecordName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRecordNumber,
            Pointer<Utf16> pwszRecordName,
          )>()(
        ptr.ref.lpVtbl,
        wRecordNumber,
        pwszRecordName,
      );

  int GetStreamsForRecord(
    int wRecordNumber,
    Pointer<Uint16> pwStreamNumArray,
    Pointer<Uint16> pcStreams,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRecordNumber,
            Pointer<Uint16> pwStreamNumArray,
            Pointer<Uint16> pcStreams,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRecordNumber,
            Pointer<Uint16> pwStreamNumArray,
            Pointer<Uint16> pcStreams,
          )>()(
        ptr.ref.lpVtbl,
        wRecordNumber,
        pwStreamNumArray,
        pcStreams,
      );

  int AddStreamForRecord(
    int wRecordNumber,
    int wStreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRecordNumber,
            Uint16 wStreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRecordNumber,
            int wStreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        wRecordNumber,
        wStreamNumber,
      );

  int RemoveStreamForRecord(
    int wRecordNumber,
    int wStreamNumber,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wRecordNumber,
            Uint16 wStreamNumber,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wRecordNumber,
            int wStreamNumber,
          )>()(
        ptr.ref.lpVtbl,
        wRecordNumber,
        wStreamNumber,
      );
}
