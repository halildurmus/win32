// IWMPSyncDevice3.dart

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

import '../../media/mediaplayer/IWMPSyncDevice2.dart';
import '../../media/mediaplayer/IWMPPlaylist.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IWMPSyncDevice3 = '{B22C85F9-263C-4372-A0DA-B518DB9B4098}';

/// {@category Interface}
/// {@category com}
class IWMPSyncDevice3 extends IWMPSyncDevice2 {
  // vtable begins at 20, is 2 entries long.
  IWMPSyncDevice3(Pointer<COMObject> ptr) : super(ptr);

  int estimateSyncSize(
    Pointer<COMObject> pNonRulePlaylist,
    Pointer<COMObject> pRulesPlaylist,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(20)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Pointer<COMObject> pNonRulePlaylist,
            Pointer<COMObject> pRulesPlaylist,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            Pointer<COMObject> pNonRulePlaylist,
            Pointer<COMObject> pRulesPlaylist,
          )>()(
        ptr.ref.lpVtbl,
        pNonRulePlaylist,
        pRulesPlaylist,
      );

  int cancelEstimation() => ptr.ref.lpVtbl.value
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
}
