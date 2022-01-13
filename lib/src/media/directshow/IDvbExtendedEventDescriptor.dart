// IDvbExtendedEventDescriptor.dart

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
import '../../media/directshow/structs.g.dart';
import '../../media/directshow/IDvbExtendedEventDescriptor.dart';

/// @nodoc
const IID_IDvbExtendedEventDescriptor =
    '{C9B22ECA-85F4-499F-B1DB-EFA93A91EE57}';

/// {@category Interface}
/// {@category com}
class IDvbExtendedEventDescriptor extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IDvbExtendedEventDescriptor(Pointer<COMObject> ptr) : super(ptr);

  int GetTag(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLength(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetDescriptorNumber(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLastDescriptorNumber(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetLanguageCode(
    Pointer<Uint8> pszCode,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pszCode,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pszCode,
          )>()(
        ptr.ref.lpVtbl,
        pszCode,
      );

  int GetCountOfRecords(
    Pointer<Uint8> pbVal,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint8> pbVal,
          )>()(
        ptr.ref.lpVtbl,
        pbVal,
      );

  int GetRecordItemW(
    int bRecordIndex,
    int convMode,
    Pointer<Pointer<Utf16>> pbstrDesc,
    Pointer<Pointer<Utf16>> pbstrItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrDesc,
            Pointer<Pointer<Utf16>> pbstrItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrDesc,
            Pointer<Pointer<Utf16>> pbstrItem,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        convMode,
        pbstrDesc,
        pbstrItem,
      );

  int GetConcatenatedItemW(
    Pointer<COMObject> pFollowingDescriptor,
    int convMode,
    Pointer<Pointer<Utf16>> pbstrDesc,
    Pointer<Pointer<Utf16>> pbstrItem,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pFollowingDescriptor,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrDesc,
            Pointer<Pointer<Utf16>> pbstrItem,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pFollowingDescriptor,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrDesc,
            Pointer<Pointer<Utf16>> pbstrItem,
          )>()(
        ptr.ref.lpVtbl,
        pFollowingDescriptor,
        convMode,
        pbstrDesc,
        pbstrItem,
      );

  int GetTextW(
    int convMode,
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>()(
        ptr.ref.lpVtbl,
        convMode,
        pbstrText,
      );

  int GetConcatenatedTextW(
    Pointer<COMObject> FollowingDescriptor,
    int convMode,
    Pointer<Pointer<Utf16>> pbstrText,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> FollowingDescriptor,
            Int32 convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> FollowingDescriptor,
            int convMode,
            Pointer<Pointer<Utf16>> pbstrText,
          )>()(
        ptr.ref.lpVtbl,
        FollowingDescriptor,
        convMode,
        pbstrText,
      );

  int GetRecordItemRawBytes(
    int bRecordIndex,
    Pointer<Pointer<Uint8>> ppbRawItem,
    Pointer<Uint8> pbItemLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint8 bRecordIndex,
            Pointer<Pointer<Uint8>> ppbRawItem,
            Pointer<Uint8> pbItemLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int bRecordIndex,
            Pointer<Pointer<Uint8>> ppbRawItem,
            Pointer<Uint8> pbItemLength,
          )>()(
        ptr.ref.lpVtbl,
        bRecordIndex,
        ppbRawItem,
        pbItemLength,
      );
}
