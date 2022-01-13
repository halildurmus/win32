// IShellUIHelper3.dart

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

import '../../ui/shell/IShellUIHelper2.dart';
import '../../foundation/structs.g.dart';
import '../../specialTypes.dart';

/// @nodoc
const IID_IShellUIHelper3 = '{528DF2EC-D419-40BC-9B6D-DCDBF9C1B25D}';

/// {@category Interface}
/// {@category com}
class IShellUIHelper3 extends IShellUIHelper2 {
  // vtable begins at 36, is 13 entries long.
  IShellUIHelper3(Pointer<COMObject> ptr) : super(ptr);

  int AddService(
    Pointer<Utf16> URL,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(36)
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

  int IsServiceInstalled(
    Pointer<Utf16> URL,
    Pointer<Utf16> Verb,
    Pointer<Uint32> pdwResult,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(37)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> Verb,
            Pointer<Uint32> pdwResult,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> Verb,
            Pointer<Uint32> pdwResult,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        Verb,
        pdwResult,
      );

  int InPrivateFilteringEnabled(
    Pointer<Int16> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(38)
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

  int AddToFavoritesBar(
    Pointer<Utf16> URL,
    Pointer<Utf16> Title,
    Pointer<VARIANT> Type,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(39)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> Title,
            Pointer<VARIANT> Type,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> URL,
            Pointer<Utf16> Title,
            Pointer<VARIANT> Type,
          )>()(
        ptr.ref.lpVtbl,
        URL,
        Title,
        Type,
      );

  int BuildNewTabPage() => ptr.ref.lpVtbl.value
          .elementAt(40)
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

  int SetRecentlyClosedVisible(
    int fVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(41)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fVisible,
          )>()(
        ptr.ref.lpVtbl,
        fVisible,
      );

  int SetActivitiesVisible(
    int fVisible,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(42)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fVisible,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fVisible,
          )>()(
        ptr.ref.lpVtbl,
        fVisible,
      );

  int ContentDiscoveryReset() => ptr.ref.lpVtbl.value
          .elementAt(43)
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

  int IsSuggestedSitesEnabled(
    Pointer<Int16> pfEnabled,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(44)
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

  int EnableSuggestedSites(
    int fEnable,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(45)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int16 fEnable,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int fEnable,
          )>()(
        ptr.ref.lpVtbl,
        fEnable,
      );

  int NavigateToSuggestedSites(
    Pointer<Utf16> bstrRelativeUrl,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(46)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<Utf16> bstrRelativeUrl,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<Utf16> bstrRelativeUrl,
          )>()(
        ptr.ref.lpVtbl,
        bstrRelativeUrl,
      );

  int ShowTabsHelp() => ptr.ref.lpVtbl.value
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

  int ShowInPrivateHelp() => ptr.ref.lpVtbl.value
          .elementAt(48)
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
}
