// ITocEntry.dart

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
import '../../media/mediafoundation/structs.g.dart';

/// @nodoc
const IID_ITocEntry = '{F22F5E06-585C-4DEF-8523-6555CFBC0CB3}';

/// {@category Interface}
/// {@category com}
class ITocEntry extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  ITocEntry(Pointer<COMObject> ptr) : super(ptr);

  int SetTitle(
    Pointer<Utf16> pwszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszTitle,
          )>()(
        ptr.ref.lpVtbl,
        pwszTitle,
      );

  int GetTitle(
    Pointer<Uint16> pwTitleSize,
    Pointer<Utf16> pwszTitle,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint16> pwTitleSize,
            Pointer<Utf16> pwszTitle,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint16> pwTitleSize,
            Pointer<Utf16> pwszTitle,
          )>()(
        ptr.ref.lpVtbl,
        pwTitleSize,
        pwszTitle,
      );

  int SetDescriptor(
    Pointer<TOC_ENTRY_DESCRIPTOR> pDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TOC_ENTRY_DESCRIPTOR> pDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TOC_ENTRY_DESCRIPTOR> pDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pDescriptor,
      );

  int GetDescriptor(
    Pointer<TOC_ENTRY_DESCRIPTOR> pDescriptor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<TOC_ENTRY_DESCRIPTOR> pDescriptor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<TOC_ENTRY_DESCRIPTOR> pDescriptor,
          )>()(
        ptr.ref.lpVtbl,
        pDescriptor,
      );

  int SetSubEntries(
    int dwNumSubEntries,
    Pointer<Uint16> pwSubEntryIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwNumSubEntries,
            Pointer<Uint16> pwSubEntryIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwNumSubEntries,
            Pointer<Uint16> pwSubEntryIndices,
          )>()(
        ptr.ref.lpVtbl,
        dwNumSubEntries,
        pwSubEntryIndices,
      );

  int GetSubEntries(
    Pointer<Uint32> pdwNumSubEntries,
    Pointer<Uint16> pwSubEntryIndices,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwNumSubEntries,
            Pointer<Uint16> pwSubEntryIndices,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwNumSubEntries,
            Pointer<Uint16> pwSubEntryIndices,
          )>()(
        ptr.ref.lpVtbl,
        pdwNumSubEntries,
        pwSubEntryIndices,
      );

  int SetDescriptionData(
    int dwDescriptionDataSize,
    Pointer<Uint8> pbtDescriptionData,
    Pointer<GUID> pguidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwDescriptionDataSize,
            Pointer<Uint8> pbtDescriptionData,
            Pointer<GUID> pguidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwDescriptionDataSize,
            Pointer<Uint8> pbtDescriptionData,
            Pointer<GUID> pguidType,
          )>()(
        ptr.ref.lpVtbl,
        dwDescriptionDataSize,
        pbtDescriptionData,
        pguidType,
      );

  int GetDescriptionData(
    Pointer<Uint32> pdwDescriptionDataSize,
    Pointer<Uint8> pbtDescriptionData,
    Pointer<GUID> pGuidType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Uint32> pdwDescriptionDataSize,
            Pointer<Uint8> pbtDescriptionData,
            Pointer<GUID> pGuidType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Uint32> pdwDescriptionDataSize,
            Pointer<Uint8> pbtDescriptionData,
            Pointer<GUID> pGuidType,
          )>()(
        ptr.ref.lpVtbl,
        pdwDescriptionDataSize,
        pbtDescriptionData,
        pGuidType,
      );
}
