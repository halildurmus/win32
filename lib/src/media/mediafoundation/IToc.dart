// IToc.dart

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
import '../../media/mediafoundation/structs.g.dart';
import '../../foundation/structs.g.dart';
import '../../media/mediafoundation/ITocEntryList.dart';

/// @nodoc
const IID_IToc = '{D6F05441-A919-423B-91A0-89D5B4A8AB77}';

/// {@category Interface}
/// {@category com}
class IToc extends IUnknown {
  // vtable begins at 3, is 11 entries long.
  IToc(Pointer<COMObject> ptr) : super(ptr);

  int SetDescriptor(
    Pointer<TOC_DESCRIPTOR> pDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TOC_DESCRIPTOR> pDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TOC_DESCRIPTOR> pDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pDescriptor,
      );

  int GetDescriptor(
    Pointer<TOC_DESCRIPTOR> pDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TOC_DESCRIPTOR> pDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TOC_DESCRIPTOR> pDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pDescriptor,
      );

  int SetDescription(
    Pointer<Utf16> pwszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
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

  int GetDescription(
    Pointer<Uint16> pwDescriptionSize,
    Pointer<Utf16> pwszDescription,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwDescriptionSize,
            Pointer<Utf16> pwszDescription,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwDescriptionSize,
            Pointer<Utf16> pwszDescription,
          )>()(
        ptr.ref.lpVtbl,
        pwDescriptionSize,
        pwszDescription,
      );

  int SetContext(
    int dwContextSize,
    Pointer<Uint8> pbtContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwContextSize,
            Pointer<Uint8> pbtContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwContextSize,
            Pointer<Uint8> pbtContext,
          )>()(
        ptr.ref.lpVtbl,
        dwContextSize,
        pbtContext,
      );

  int GetContext(
    Pointer<Uint32> pdwContextSize,
    Pointer<Uint8> pbtContext,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwContextSize,
            Pointer<Uint8> pbtContext,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwContextSize,
            Pointer<Uint8> pbtContext,
          )>()(
        ptr.ref.lpVtbl,
        pdwContextSize,
        pbtContext,
      );

  int GetEntryListCount(
    Pointer<Uint16> pwCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwCount,
          )>()(
        ptr.ref.lpVtbl,
        pwCount,
      );

  int GetEntryListByIndex(
    int wEntryListIndex,
    Pointer<Pointer<COMObject>> ppEntryList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wEntryListIndex,
            Pointer<Pointer<COMObject>> ppEntryList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wEntryListIndex,
            Pointer<Pointer<COMObject>> ppEntryList,
          )>()(
        ptr.ref.lpVtbl,
        wEntryListIndex,
        ppEntryList,
      );

  int AddEntryList(
    Pointer<COMObject> pEntryList,
    Pointer<Uint16> pwEntryListIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pEntryList,
            Pointer<Uint16> pwEntryListIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pEntryList,
            Pointer<Uint16> pwEntryListIndex,
          )>()(
        ptr.ref.lpVtbl,
        pEntryList,
        pwEntryListIndex,
      );

  int AddEntryListByIndex(
    int wEntryListIndex,
    Pointer<COMObject> pEntryList,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wEntryListIndex,
            Pointer<COMObject> pEntryList,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wEntryListIndex,
            Pointer<COMObject> pEntryList,
          )>()(
        ptr.ref.lpVtbl,
        wEntryListIndex,
        pEntryList,
      );

  int RemoveEntryListByIndex(
    int wEntryListIndex,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint16 wEntryListIndex,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int wEntryListIndex,
          )>()(
        ptr.ref.lpVtbl,
        wEntryListIndex,
      );
}
