import 'dart:ffi';

import 'package:win32/win32.dart';

import 'events.dart';

final class DeviceChangeParser {
  static List<UsbDriveEvent> parse(int wParam, int lParam) {
    if (lParam == 0) return const [];

    final hdr = Pointer<DEV_BROADCAST_HDR>.fromAddress(lParam).ref;
    if (hdr.dbch_devicetype != DBT_DEVTYP_VOLUME) return const [];

    final vol = Pointer<DEV_BROADCAST_VOLUME>.fromAddress(lParam).ref;
    final drives = _decodeUnitMask(vol.dbcv_unitmask);
    final now = DateTime.now();

    return [
      for (final drive in drives)
        if (wParam == DBT_DEVICEARRIVAL)
          UsbDriveInserted(timestamp: now, driveLetter: drive)
        else if (wParam == DBT_DEVICEREMOVECOMPLETE)
          UsbDriveRemoved(timestamp: now, driveLetter: drive),
    ];
  }

  static List<String> _decodeUnitMask(int mask) {
    final result = <String>[];
    for (var i = 0; i < 26; i++) {
      if ((mask & (1 << i)) != 0) {
        result.add('${String.fromCharCode(65 + i)}:');
      }
    }
    return result;
  }
}
