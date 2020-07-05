// bthprops.dart

// Maps FFI prototypes onto the corresponding Win32 API function calls

import 'dart:ffi';

import 'typedefs.dart';

// Per StackOverflow:
//   https://stackoverflow.com/questions/19436462/loadlibrarybthprops-dll-fails-file-not-found,
// the MSDN documentation is incorrect in where these functions can be found.

final _bthprops = DynamicLibrary.open('bthprops.cpl');

/// {@category bthprops}
final BluetoothAuthenticateDeviceEx = _bthprops.lookupFunction<
    bluetoothAuthenticateDeviceExNative,
    bluetoothAuthenticateDeviceExDart>('BluetoothAuthenticateDeviceEx');

/// {@category bthprops}
final BluetoothFindDeviceClose = _bthprops.lookupFunction<
    bluetoothFindDeviceCloseNative,
    bluetoothFindDeviceCloseDart>('BluetoothFindDeviceClose');

/// {@category bthprops}
final BluetoothFindFirstDevice = _bthprops.lookupFunction<
    bluetoothFindFirstDeviceNative,
    bluetoothFindFirstDeviceDart>('BluetoothFindFirstDevice');

/// {@category bthprops}
final BluetoothFindFirstRadio = _bthprops.lookupFunction<
    bluetoothFindFirstRadioNative,
    bluetoothFindFirstRadioDart>('BluetoothFindFirstRadio');

/// {@category bthprops}
final BluetoothFindNextDevice = _bthprops.lookupFunction<
    bluetoothFindNextDeviceNative,
    bluetoothFindNextDeviceDart>('BluetoothFindNextDevice');

/// {@category bthprops}
final BluetoothFindNextRadio = _bthprops.lookupFunction<
    bluetoothFindNextRadioNative,
    bluetoothFindNextRadioDart>('BluetoothFindNextRadio');

/// {@category bthprops}
final BluetoothFindRadioClose = _bthprops.lookupFunction<
    bluetoothFindRadioCloseNative,
    bluetoothFindRadioCloseDart>('BluetoothFindRadioClose');

/// {@category bthprops}
final BluetoothIsConnectable = _bthprops.lookupFunction<
    bluetoothIsConnectableNative,
    bluetoothIsConnectableDart>('BluetoothIsConnectable');

/// {@category bthprops}
final BluetoothIsDiscoverable = _bthprops.lookupFunction<
    bluetoothIsDiscoverableNative,
    bluetoothIsDiscoverableDart>('BluetoothIsDiscoverable');

/// {@category bthprops}
final BluetoothUpdateDeviceRecord = _bthprops.lookupFunction<
    bluetoothUpdateDeviceRecordNative,
    bluetoothUpdateDeviceRecordDart>('BluetoothUpdateDeviceRecord');
