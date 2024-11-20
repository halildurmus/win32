// Prints information about the physical characteristics of a disk drive.

// ignore_for_file: non_constant_identifier_names

import 'dart:ffi';

import 'package:win32/win32.dart';

bool GetDriveGeometry(Pcwstr wszPath, Pointer<DISK_GEOMETRY> pdg) {
  final bytesReturned = loggingCalloc<DWORD>();

  try {
    final hDevice = CreateFile(
      wszPath.ptr, // drive to open
      0, // no access to the drive
      FILE_SHARE_READ | FILE_SHARE_WRITE,
      null, // default security attributes
      OPEN_EXISTING,
      FILE_ATTRIBUTE_NORMAL, // file attributes
      null,
    ); // do not copy file attributes

    if (hDevice == INVALID_HANDLE_VALUE) // cannot open the drive
    {
      return false;
    }

    final bResult = DeviceIoControl(
      hDevice, // device to be queried
      IOCTL_DISK_GET_DRIVE_GEOMETRY, // operation to perform
      null,
      0, // no input buffer
      pdg,
      sizeOf<DISK_GEOMETRY>(), // output buffer
      bytesReturned, // # bytes returned
      null,
    ); // synchronous I/O

    CloseHandle(hDevice);

    return bResult;
  } finally {
    free(bytesReturned);
  }
}

void main() {
  final wszDrive = w(r'\\.\PhysicalDrive0');
  final pdg = loggingCalloc<DISK_GEOMETRY>();

  try {
    final bResult = GetDriveGeometry(wszDrive, pdg);
    if (bResult) {
      print('Drive path      = ${wszDrive.toDartString()}');
      print('Cylinders       = ${pdg.ref.Cylinders}');
      print('Tracks/cylinder = ${pdg.ref.TracksPerCylinder}');
      print('Sectors/track   = ${pdg.ref.SectorsPerTrack}');
      print('Bytes/sector    = ${pdg.ref.BytesPerSector}');

      final DiskSize =
          pdg.ref.Cylinders *
          pdg.ref.TracksPerCylinder *
          pdg.ref.SectorsPerTrack *
          pdg.ref.BytesPerSector;
      print(
        'Disk size       = $DiskSize (Bytes)\n'
        '                = ${DiskSize / (1024 * 1024 * 1024)} (Gb)',
      );
    } else {
      print('GetDriveGeometry failed.');
    }
  } finally {
    free(pdg);
  }
}
