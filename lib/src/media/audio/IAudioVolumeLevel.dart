// IAudioVolumeLevel.dart

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

import '../../media/audio/IPerChannelDbLevel.dart';

/// @nodoc
const IID_IAudioVolumeLevel = '{7FB7B48F-531D-44A2-BCB3-5AD5A134B3DC}';

/// {@category Interface}
/// {@category com}
class IAudioVolumeLevel extends IPerChannelDbLevel {
  // vtable begins at 9, is 0 entries long.
  IAudioVolumeLevel(Pointer<COMObject> ptr) : super(ptr);
}
