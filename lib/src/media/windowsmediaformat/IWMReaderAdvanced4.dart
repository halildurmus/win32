// IWMReaderAdvanced4.dart

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

import '../../media/windowsmediaformat/IWMReaderAdvanced3.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMReaderAdvanced4 = '{945A76A2-12AE-4D48-BD3C-CD1D90399B85}';

/// {@category Interface}
/// {@category com}
class IWMReaderAdvanced4 extends IWMReaderAdvanced3 {
  // vtable begins at 40, is 9 entries long.
  IWMReaderAdvanced4(Pointer<COMObject> ptr) : super(ptr);

  int GetLanguageCount(
    int dwOutputNum,
    Pointer<Uint16> pwLanguageCount,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(40)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Pointer<Uint16> pwLanguageCount,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            Pointer<Uint16> pwLanguageCount,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        pwLanguageCount,
      );

  int GetLanguage(
    int dwOutputNum,
    int wLanguage,
    Pointer<Utf16> pwszLanguageString,
    Pointer<Uint16> pcchLanguageStringLength,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Uint32 dwOutputNum,
            Uint16 wLanguage,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pcchLanguageStringLength,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int dwOutputNum,
            int wLanguage,
            Pointer<Utf16> pwszLanguageString,
            Pointer<Uint16> pcchLanguageStringLength,
          )>()(
        ptr.ref.lpVtbl,
        dwOutputNum,
        wLanguage,
        pwszLanguageString,
        pcchLanguageStringLength,
      );

  int GetMaxSpeedFactor(
    Pointer<Double> pdblFactor,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Double> pdblFactor,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Double> pdblFactor,
          )>()(
        ptr.ref.lpVtbl,
        pdblFactor,
      );

  int IsUsingFastCache(
    Pointer<Int32> pfUsingFastCache,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(43)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfUsingFastCache,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfUsingFastCache,
          )>()(
        ptr.ref.lpVtbl,
        pfUsingFastCache,
      );

  int AddLogParam(
    Pointer<Utf16> wszNameSpace,
    Pointer<Utf16> wszName,
    Pointer<Utf16> wszValue,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> wszNameSpace,
            Pointer<Utf16> wszName,
            Pointer<Utf16> wszValue,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> wszNameSpace,
            Pointer<Utf16> wszName,
            Pointer<Utf16> wszValue,
          )>()(
        ptr.ref.lpVtbl,
        wszNameSpace,
        wszName,
        wszValue,
      );

  int SendLogParams() => ptr.ref.lpVtbl.value
          .elementAt(45)
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

  int CanSaveFileAs(
    Pointer<Int32> pfCanSave,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int32> pfCanSave,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int32> pfCanSave,
          )>()(
        ptr.ref.lpVtbl,
        pfCanSave,
      );

  int CancelSaveFileAs() => ptr.ref.lpVtbl.value
          .elementAt(47)
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

  int GetURL(
    Pointer<Utf16> pwszURL,
    Pointer<Uint32> pcchURL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(48)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<Uint32> pcchURL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> pwszURL,
            Pointer<Uint32> pcchURL,
          )>()(
        ptr.ref.lpVtbl,
        pwszURL,
        pcchURL,
      );
}
