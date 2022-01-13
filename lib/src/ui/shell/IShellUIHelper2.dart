// IShellUIHelper2.dart

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

import '../../ui/shell/IShellUIHelper.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IShellUIHelper2 = '{A7FE6EDA-1932-4281-B881-87B31B8BC52C}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper2 extends IShellUIHelper {
  // vtable begins at 20, is 16 entries long.
  IShellUIHelper2(Pointer<COMObject> ptr) : super(ptr);

  int AddSearchProvider(
    Pointer<Utf16> URL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
          )>()(
        ptr.ref.lpVtbl,
        URL,
      );

  int RunOnceShown() => ptr.ref.lpVtbl.value
          .elementAt(21)
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

  int SkipRunOnce() => ptr.ref.lpVtbl.value
          .elementAt(22)
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

  int CustomizeSettings(
    int fSQM,
    int fPhishing,
    Pointer<Utf16> bstrLocale,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(23)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fSQM,
            Int16 fPhishing,
            Pointer<Utf16> bstrLocale,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSQM,
            int fPhishing,
            Pointer<Utf16> bstrLocale,
          )>()(
        ptr.ref.lpVtbl,
        fSQM,
        fPhishing,
        bstrLocale,
      );

  int SqmEnabled(
    Pointer<Int16> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(24)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );

  int PhishingEnabled(
    Pointer<Int16> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(25)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfEnabled,
          )>()(
        ptr.ref.lpVtbl,
        pfEnabled,
      );

  int BrandImageUri(
    Pointer<Pointer<Utf16>> pbstrUri,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(26)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUri,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUri,
          )>()(
        ptr.ref.lpVtbl,
        pbstrUri,
      );

  int SkipTabsWelcome() => ptr.ref.lpVtbl.value
          .elementAt(27)
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

  int DiagnoseConnection() => ptr.ref.lpVtbl.value
          .elementAt(28)
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

  int CustomizeClearType(
    int fSet,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(29)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fSet,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fSet,
          )>()(
        ptr.ref.lpVtbl,
        fSet,
      );

  int IsSearchProviderInstalled(
    Pointer<Utf16> URL,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(30)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        pdwResult,
      );

  int IsSearchMigrated(
    Pointer<Int16> pfMigrated,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(31)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfMigrated,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfMigrated,
          )>()(
        ptr.ref.lpVtbl,
        pfMigrated,
      );

  int DefaultSearchProvider(
    Pointer<Pointer<Utf16>> pbstrName,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(32)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrName,
          )>()(
        ptr.ref.lpVtbl,
        pbstrName,
      );

  int RunOnceRequiredSettingsComplete(
    int fComplete,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(33)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fComplete,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fComplete,
          )>()(
        ptr.ref.lpVtbl,
        fComplete,
      );

  int RunOnceHasShown(
    Pointer<Int16> pfShown,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(34)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Int16> pfShown,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Int16> pfShown,
          )>()(
        ptr.ref.lpVtbl,
        pfShown,
      );

  int SearchGuideUrl(
    Pointer<Pointer<Utf16>> pbstrUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(35)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Pointer<Utf16>> pbstrUrl,
          )>()(
        ptr.ref.lpVtbl,
        pbstrUrl,
      );
}
