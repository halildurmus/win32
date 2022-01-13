// IFilterMapper.dart

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
import '../../media/directshow/IEnumRegFilters.dart';

/// @nodoc
const IID_IFilterMapper = '{56A868A3-0AD4-11CE-B03A-0020AF0BA770}';

/// {@category Interface}
/// {@category com}
class IFilterMapper extends IUnknown {
  // vtable begins at 3, is 8 entries long.
  IFilterMapper(Pointer<COMObject> ptr) : super(ptr);

  int RegisterFilter(
    GUID clsid,
    Pointer<Utf16> Name,
    int dwMerit,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID clsid,
            Pointer<Utf16> Name,
            Uint32 dwMerit,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID clsid,
            Pointer<Utf16> Name,
            int dwMerit,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        Name,
        dwMerit,
      );

  int RegisterFilterInstance(
    GUID clsid,
    Pointer<Utf16> Name,
    Pointer<GUID> MRId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID clsid,
            Pointer<Utf16> Name,
            Pointer<GUID> MRId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID clsid,
            Pointer<Utf16> Name,
            Pointer<GUID> MRId,
          )>()(
        ptr.ref.lpVtbl,
        clsid,
        Name,
        MRId,
      );

  int RegisterPin(
    GUID Filter,
    Pointer<Utf16> Name,
    int bRendered,
    int bOutput,
    int bZero,
    int bMany,
    GUID ConnectsToFilter,
    Pointer<Utf16> ConnectsToPin,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Filter,
            Pointer<Utf16> Name,
            Int32 bRendered,
            Int32 bOutput,
            Int32 bZero,
            Int32 bMany,
            GUID ConnectsToFilter,
            Pointer<Utf16> ConnectsToPin,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Filter,
            Pointer<Utf16> Name,
            int bRendered,
            int bOutput,
            int bZero,
            int bMany,
            GUID ConnectsToFilter,
            Pointer<Utf16> ConnectsToPin,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
        Name,
        bRendered,
        bOutput,
        bZero,
        bMany,
        ConnectsToFilter,
        ConnectsToPin,
      );

  int RegisterPinType(
    GUID clsFilter,
    Pointer<Utf16> strName,
    GUID clsMajorType,
    GUID clsSubType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID clsFilter,
            Pointer<Utf16> strName,
            GUID clsMajorType,
            GUID clsSubType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID clsFilter,
            Pointer<Utf16> strName,
            GUID clsMajorType,
            GUID clsSubType,
          )>()(
        ptr.ref.lpVtbl,
        clsFilter,
        strName,
        clsMajorType,
        clsSubType,
      );

  int UnregisterFilter(
    GUID Filter,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Filter,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Filter,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
      );

  int UnregisterFilterInstance(
    GUID MRId,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID MRId,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID MRId,
          )>()(
        ptr.ref.lpVtbl,
        MRId,
      );

  int UnregisterPin(
    GUID Filter,
    Pointer<Utf16> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            GUID Filter,
            Pointer<Utf16> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            GUID Filter,
            Pointer<Utf16> Name,
          )>()(
        ptr.ref.lpVtbl,
        Filter,
        Name,
      );

  int EnumMatchingFilters(
    Pointer<Pointer<COMObject>> ppEnum,
    int dwMerit,
    int bInputNeeded,
    GUID clsInMaj,
    GUID clsInSub,
    int bRender,
    int bOututNeeded,
    GUID clsOutMaj,
    GUID clsOutSub,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
            Uint32 dwMerit,
            Int32 bInputNeeded,
            GUID clsInMaj,
            GUID clsInSub,
            Int32 bRender,
            Int32 bOututNeeded,
            GUID clsOutMaj,
            GUID clsOutSub,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> ppEnum,
            int dwMerit,
            int bInputNeeded,
            GUID clsInMaj,
            GUID clsInSub,
            int bRender,
            int bOututNeeded,
            GUID clsOutMaj,
            GUID clsOutSub,
          )>()(
        ptr.ref.lpVtbl,
        ppEnum,
        dwMerit,
        bInputNeeded,
        clsInMaj,
        clsInSub,
        bRender,
        bOututNeeded,
        clsOutMaj,
        clsOutSub,
      );
}
