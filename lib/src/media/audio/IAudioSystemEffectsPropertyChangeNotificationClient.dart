// IAudioSystemEffectsPropertyChangeNotificationClient.dart

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
import '../../media/audio/structs.g.dart';
import '../../ui/shell/propertiessystem/structs.g.dart';
import '../../foundation/structs.g.dart';

/// @nodoc
const IID_IAudioSystemEffectsPropertyChangeNotificationClient =
    '{20049D40-56D5-400E-A2EF-385599FEED49}';

/// {@category Interface}
/// {@category com}
class IAudioSystemEffectsPropertyChangeNotificationClient extends IUnknown {
  // vtable begins at 3, is 1 entries long.
  IAudioSystemEffectsPropertyChangeNotificationClient(Pointer<COMObject> ptr)
      : super(ptr);

  int OnPropertyChanged(
    int type,
    PROPERTYKEY key,
  ) =>
      ptr.ref.lpVtbl.value
          .elementAt(3)
          .cast<
              Pointer<
                  NativeFunction<
                      Int32 Function(
            Pointer,
            Int32 type,
            PROPERTYKEY key,
          )>>>()
          .value
          .asFunction<
              int Function(
            Pointer,
            int type,
            PROPERTYKEY key,
          )>()(
        ptr.ref.lpVtbl,
        type,
        key,
      );
}
