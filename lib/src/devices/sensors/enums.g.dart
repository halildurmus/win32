/// {@category Enum}
class ACTIVITY_STATE {
  static const ActivityState_Unknown = 0x00000001;
  static const ActivityState_Stationary = 0x00000002;
  static const ActivityState_Fidgeting = 0x00000004;
  static const ActivityState_Walking = 0x00000008;
  static const ActivityState_Running = 0x00000010;
  static const ActivityState_InVehicle = 0x00000020;
  static const ActivityState_Biking = 0x00000040;
  static const ActivityState_Idle = 0x00000080;
  static const ActivityState_Max = 0x00000100;
  static const ActivityState_Force_Dword = 0xffffffff;
}

/// {@category Enum}
class ACTIVITY_STATE_COUNT {
  static const ActivityStateCount = 0x00000008;
}

/// {@category Enum}
class AXIS {
  static const AXIS_X = 0x00000000;
  static const AXIS_Y = 0x00000001;
  static const AXIS_Z = 0x00000002;
  static const AXIS_MAX = 0x00000003;
}

/// {@category Enum}
class ELEVATION_CHANGE_MODE {
  static const ElevationChangeMode_Unknown = 0x00000000;
  static const ElevationChangeMode_Elevator = 0x00000001;
  static const ElevationChangeMode_Stepping = 0x00000002;
  static const ElevationChangeMode_Max = 0x00000003;
  static const ElevationChangeMode_Force_Dword = 0xffffffff;
}

/// {@category Enum}
class HUMAN_PRESENCE_DETECTION_TYPE {
  static const HumanPresenceDetectionType_VendorDefinedNonBiometric =
      0x00000001;
  static const HumanPresenceDetectionType_VendorDefinedBiometric = 0x00000002;
  static const HumanPresenceDetectionType_FacialBiometric = 0x00000004;
  static const HumanPresenceDetectionType_AudioBiometric = 0x00000008;
  static const HumanPresenceDetectionType_Force_Dword = 0xffffffff;
}

/// {@category Enum}
class HUMAN_PRESENCE_DETECTION_TYPE_COUNT {
  static const HumanPresenceDetectionTypeCount = 0x00000004;
}

/// {@category Enum}
class LOCATION_DESIRED_ACCURACY {
  static const LOCATION_DESIRED_ACCURACY_DEFAULT = 0x00000000;
  static const LOCATION_DESIRED_ACCURACY_HIGH = 0x00000001;
}

/// {@category Enum}
class LOCATION_POSITION_SOURCE {
  static const LOCATION_POSITION_SOURCE_CELLULAR = 0x00000000;
  static const LOCATION_POSITION_SOURCE_SATELLITE = 0x00000001;
  static const LOCATION_POSITION_SOURCE_WIFI = 0x00000002;
  static const LOCATION_POSITION_SOURCE_IPADDRESS = 0x00000003;
  static const LOCATION_POSITION_SOURCE_UNKNOWN = 0x00000004;
}

/// {@category Enum}
class MAGNETOMETER_ACCURACY {
  static const MagnetometerAccuracy_Unknown = 0x00000000;
  static const MagnetometerAccuracy_Unreliable = 0x00000001;
  static const MagnetometerAccuracy_Approximate = 0x00000002;
  static const MagnetometerAccuracy_High = 0x00000003;
}

/// {@category Enum}
class MagnetometerAccuracy {
  static const MAGNETOMETER_ACCURACY_UNKNOWN = 0x00000000;
  static const MAGNETOMETER_ACCURACY_UNRELIABLE = 0x00000001;
  static const MAGNETOMETER_ACCURACY_APPROXIMATE = 0x00000002;
  static const MAGNETOMETER_ACCURACY_HIGH = 0x00000003;
}

/// {@category Enum}
class PEDOMETER_STEP_TYPE {
  static const PedometerStepType_Unknown = 0x00000001;
  static const PedometerStepType_Walking = 0x00000002;
  static const PedometerStepType_Running = 0x00000004;
  static const PedometerStepType_Max = 0x00000008;
  static const PedometerStepType_Force_Dword = 0xffffffff;
}

/// {@category Enum}
class PEDOMETER_STEP_TYPE_COUNT {
  static const PedometerStepTypeCount = 0x00000003;
}

/// {@category Enum}
class PROXIMITY_TYPE {
  static const ProximityType_ObjectProximity = 0x00000000;
  static const ProximityType_HumanProximity = 0x00000001;
  static const ProximityType_Force_Dword = 0xffffffff;
}

/// {@category Enum}
class SENSOR_CONNECTION_TYPES {
  static const SensorConnectionType_Integrated = 0x00000000;
  static const SensorConnectionType_Attached = 0x00000001;
  static const SensorConnectionType_External = 0x00000002;
}

/// {@category Enum}
class SENSOR_STATE {
  static const SensorState_Initializing = 0x00000000;
  static const SensorState_Idle = 0x00000001;
  static const SensorState_Active = 0x00000002;
  static const SensorState_Error = 0x00000003;
}

/// {@category Enum}
class SIMPLE_DEVICE_ORIENTATION {
  static const SimpleDeviceOrientation_NotRotated = 0x00000000;
  static const SimpleDeviceOrientation_Rotated90DegreesCounterclockwise =
      0x00000001;
  static const SimpleDeviceOrientation_Rotated180DegreesCounterclockwise =
      0x00000002;
  static const SimpleDeviceOrientation_Rotated270DegreesCounterclockwise =
      0x00000003;
  static const SimpleDeviceOrientation_Faceup = 0x00000004;
  static const SimpleDeviceOrientation_Facedown = 0x00000005;
}

/// {@category Enum}
class SensorConnectionType {
  static const SENSOR_CONNECTION_TYPE_PC_INTEGRATED = 0x00000000;
  static const SENSOR_CONNECTION_TYPE_PC_ATTACHED = 0x00000001;
  static const SENSOR_CONNECTION_TYPE_PC_EXTERNAL = 0x00000002;
}

/// {@category Enum}
class SensorState {
  static const SENSOR_STATE_MIN = 0x00000000;
  static const SENSOR_STATE_READY = 0x00000000;
  static const SENSOR_STATE_NOT_AVAILABLE = 0x00000001;
  static const SENSOR_STATE_NO_DATA = 0x00000002;
  static const SENSOR_STATE_INITIALIZING = 0x00000003;
  static const SENSOR_STATE_ACCESS_DENIED = 0x00000004;
  static const SENSOR_STATE_ERROR = 0x00000005;
  static const SENSOR_STATE_MAX = 0x00000005;
}

/// {@category Enum}
class SimpleDeviceOrientation {
  static const SIMPLE_DEVICE_ORIENTATION_NOT_ROTATED = 0x00000000;
  static const SIMPLE_DEVICE_ORIENTATION_ROTATED_90 = 0x00000001;
  static const SIMPLE_DEVICE_ORIENTATION_ROTATED_180 = 0x00000002;
  static const SIMPLE_DEVICE_ORIENTATION_ROTATED_270 = 0x00000003;
  static const SIMPLE_DEVICE_ORIENTATION_ROTATED_FACE_UP = 0x00000004;
  static const SIMPLE_DEVICE_ORIENTATION_ROTATED_FACE_DOWN = 0x00000005;
}
