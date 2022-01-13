// ISettingsItem.dart

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
import '../../specialTypes.dart';
import '../../system/settingsmanagementinfrastructure/structs.g.dart';
import '../../system/settingsmanagementinfrastructure/IItemEnumerator.dart';
import '../../system/settingsmanagementinfrastructure/ISettingsItem.dart';

/// @nodoc
const IID_ISettingsItem = '{9F7D7BBB-20B3-11DA-81A5-0030F1642E3C}';

/// {@category Interface}
/// {@category com}
class ISettingsItem extends IUnknown {
  // vtable begins at 3, is 22 entries long.
  ISettingsItem(Pointer<COMObject> ptr) : super(ptr);

  int GetName(
    Pointer<Pointer<Utf16>> Name,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> Name,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> Name,
          )>()(
        ptr.ref.lpVtbl,
        Name,
      );

  int GetValue(
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(4)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int SetValue(
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(5)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );

  int GetSettingType(
    Pointer<Int32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(6)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int GetDataType(
    Pointer<Int32> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(7)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> Type,
          )>()(
        ptr.ref.lpVtbl,
        Type,
      );

  int GetValueRaw(
    Pointer<Pointer<Uint8>> Data,
    Pointer<Uint32> DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(8)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Uint8>> Data,
            Pointer<Uint32> DataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Uint8>> Data,
            Pointer<Uint32> DataSize,
          )>()(
        ptr.ref.lpVtbl,
        Data,
        DataSize,
      );

  int SetValueRaw(
    int DataType,
    Pointer<Uint8> Data,
    int DataSize,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(9)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 DataType,
            Pointer<Uint8> Data,
            Uint32 DataSize,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int DataType,
            Pointer<Uint8> Data,
            int DataSize,
          )>()(
        ptr.ref.lpVtbl,
        DataType,
        Data,
        DataSize,
      );

  int HasChild(
    Pointer<Int32> ItemHasChild,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(10)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> ItemHasChild,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> ItemHasChild,
          )>()(
        ptr.ref.lpVtbl,
        ItemHasChild,
      );

  int Children(
    Pointer<Pointer<COMObject>> Children,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(11)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Children,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Children,
          )>()(
        ptr.ref.lpVtbl,
        Children,
      );

  int GetChild(
    Pointer<Utf16> Name,
    Pointer<Pointer<COMObject>> Child,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(12)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> Child,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<Pointer<COMObject>> Child,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Child,
      );

  int GetSettingByPath(
    Pointer<Utf16> Path,
    Pointer<Pointer<COMObject>> Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(13)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Setting,
      );

  int CreateSettingByPath(
    Pointer<Utf16> Path,
    Pointer<Pointer<COMObject>> Setting,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(14)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
            Pointer<Pointer<COMObject>> Setting,
          )>()(
        ptr.ref.lpVtbl,
        Path,
        Setting,
      );

  int RemoveSettingByPath(
    Pointer<Utf16> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(15)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int GetListKeyInformation(
    Pointer<Pointer<Utf16>> KeyName,
    Pointer<Int32> DataType,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(16)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> KeyName,
            Pointer<Int32> DataType,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> KeyName,
            Pointer<Int32> DataType,
          )>()(
        ptr.ref.lpVtbl,
        KeyName,
        DataType,
      );

  int CreateListElement(
    Pointer<VARIANT> KeyData,
    Pointer<Pointer<COMObject>> Child,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(17)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> KeyData,
            Pointer<Pointer<COMObject>> Child,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> KeyData,
            Pointer<Pointer<COMObject>> Child,
          )>()(
        ptr.ref.lpVtbl,
        KeyData,
        Child,
      );

  int RemoveListElement(
    Pointer<Utf16> ElementName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(18)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> ElementName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> ElementName,
          )>()(
        ptr.ref.lpVtbl,
        ElementName,
      );

  int Attributes(
    Pointer<Pointer<COMObject>> Attributes,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(19)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<COMObject>> Attributes,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<COMObject>> Attributes,
          )>()(
        ptr.ref.lpVtbl,
        Attributes,
      );

  int GetAttribute(
    Pointer<Utf16> Name,
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> Name,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Name,
        Value,
      );

  int GetPath(
    Pointer<Pointer<Utf16>> Path,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(21)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> Path,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> Path,
          )>()(
        ptr.ref.lpVtbl,
        Path,
      );

  int GetRestrictionFacets(
    Pointer<Int32> RestrictionFacets,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(22)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> RestrictionFacets,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> RestrictionFacets,
          )>()(
        ptr.ref.lpVtbl,
        RestrictionFacets,
      );

  int GetRestriction(
    int RestrictionFacet,
    Pointer<VARIANT> FacetData,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 RestrictionFacet,
            Pointer<VARIANT> FacetData,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int RestrictionFacet,
            Pointer<VARIANT> FacetData,
          )>()(
        ptr.ref.lpVtbl,
        RestrictionFacet,
        FacetData,
      );

  int GetKeyValue(
    Pointer<VARIANT> Value,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<VARIANT> Value,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<VARIANT> Value,
          )>()(
        ptr.ref.lpVtbl,
        Value,
      );
}
