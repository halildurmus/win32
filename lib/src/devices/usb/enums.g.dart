/// {@category Enum}
class PIPE_TYPE {
  static const EVENT_PIPE = 0x00000000;
  static const READ_DATA_PIPE = 0x00000001;
  static const WRITE_DATA_PIPE = 0x00000002;
  static const ALL_PIPE = 0x00000003;
}

/// {@category Enum}
class RAW_PIPE_TYPE {
  static const USBSCAN_PIPE_CONTROL = 0x00000000;
  static const USBSCAN_PIPE_ISOCHRONOUS = 0x00000001;
  static const USBSCAN_PIPE_BULK = 0x00000002;
  static const USBSCAN_PIPE_INTERRUPT = 0x00000003;
}

/// {@category Enum}
class USBD_ENDPOINT_OFFLOAD_MODE {
  static const UsbdEndpointOffloadModeNotSupported = 0x00000000;
  static const UsbdEndpointOffloadSoftwareAssisted = 0x00000001;
  static const UsbdEndpointOffloadHardwareAssisted = 0x00000002;
}

/// {@category Enum}
class USBD_PIPE_TYPE {
  static const UsbdPipeTypeControl = 0x00000000;
  static const UsbdPipeTypeIsochronous = 0x00000001;
  static const UsbdPipeTypeBulk = 0x00000002;
  static const UsbdPipeTypeInterrupt = 0x00000003;
}

/// {@category Enum}
class USBFN_BUS_SPEED {
  static const UsbfnBusSpeedLow = 0x00000000;
  static const UsbfnBusSpeedFull = 0x00000001;
  static const UsbfnBusSpeedHigh = 0x00000002;
  static const UsbfnBusSpeedSuper = 0x00000003;
  static const UsbfnBusSpeedMaximum = 0x00000004;
}

/// {@category Enum}
class USBFN_DEVICE_STATE {
  static const UsbfnDeviceStateMinimum = 0x00000000;
  static const UsbfnDeviceStateAttached = 0x00000001;
  static const UsbfnDeviceStateDefault = 0x00000002;
  static const UsbfnDeviceStateDetached = 0x00000003;
  static const UsbfnDeviceStateAddressed = 0x00000004;
  static const UsbfnDeviceStateConfigured = 0x00000005;
  static const UsbfnDeviceStateSuspended = 0x00000006;
  static const UsbfnDeviceStateStateMaximum = 0x00000007;
}

/// {@category Enum}
class USBFN_DIRECTION {
  static const UsbfnDirectionMinimum = 0x00000000;
  static const UsbfnDirectionIn = 0x00000001;
  static const UsbfnDirectionOut = 0x00000002;
  static const UsbfnDirectionTx = 0x00000001;
  static const UsbfnDirectionRx = 0x00000002;
  static const UsbfnDirectionMaximum = 0x00000003;
}

/// {@category Enum}
class USBFN_EVENT {
  static const UsbfnEventMinimum = 0x00000000;
  static const UsbfnEventAttach = 0x00000001;
  static const UsbfnEventReset = 0x00000002;
  static const UsbfnEventDetach = 0x00000003;
  static const UsbfnEventSuspend = 0x00000004;
  static const UsbfnEventResume = 0x00000005;
  static const UsbfnEventSetupPacket = 0x00000006;
  static const UsbfnEventConfigured = 0x00000007;
  static const UsbfnEventUnConfigured = 0x00000008;
  static const UsbfnEventPortType = 0x00000009;
  static const UsbfnEventBusTearDown = 0x0000000a;
  static const UsbfnEventSetInterface = 0x0000000b;
  static const UsbfnEventMaximum = 0x0000000c;
}

/// {@category Enum}
class USBFN_PORT_TYPE {
  static const UsbfnUnknownPort = 0x00000000;
  static const UsbfnStandardDownstreamPort = 0x00000001;
  static const UsbfnChargingDownstreamPort = 0x00000002;
  static const UsbfnDedicatedChargingPort = 0x00000003;
  static const UsbfnInvalidDedicatedChargingPort = 0x00000004;
  static const UsbfnProprietaryDedicatedChargingPort = 0x00000005;
  static const UsbfnPortTypeMaximum = 0x00000006;
}

/// {@category Enum}
class USB_CONTROLLER_FLAVOR {
  static const USB_HcGeneric = 0x00000000;
  static const OHCI_Generic = 0x00000064;
  static const OHCI_Hydra = 0x00000065;
  static const OHCI_NEC = 0x00000066;
  static const UHCI_Generic = 0x000000c8;
  static const UHCI_Piix4 = 0x000000c9;
  static const UHCI_Piix3 = 0x000000ca;
  static const UHCI_Ich2 = 0x000000cb;
  static const UHCI_Reserved204 = 0x000000cc;
  static const UHCI_Ich1 = 0x000000cd;
  static const UHCI_Ich3m = 0x000000ce;
  static const UHCI_Ich4 = 0x000000cf;
  static const UHCI_Ich5 = 0x000000d0;
  static const UHCI_Ich6 = 0x000000d1;
  static const UHCI_Intel = 0x000000f9;
  static const UHCI_VIA = 0x000000fa;
  static const UHCI_VIA_x01 = 0x000000fb;
  static const UHCI_VIA_x02 = 0x000000fc;
  static const UHCI_VIA_x03 = 0x000000fd;
  static const UHCI_VIA_x04 = 0x000000fe;
  static const UHCI_VIA_x0E_FIFO = 0x00000108;
  static const EHCI_Generic = 0x000003e8;
  static const EHCI_NEC = 0x000007d0;
  static const EHCI_Lucent = 0x00000bb8;
  static const EHCI_NVIDIA_Tegra2 = 0x00000fa0;
  static const EHCI_NVIDIA_Tegra3 = 0x00000fa1;
  static const EHCI_Intel_Medfield = 0x00001389;
}

/// {@category Enum}
class USB_DEVICE_SPEED {
  static const UsbLowSpeed = 0x00000000;
  static const UsbFullSpeed = 0x00000001;
  static const UsbHighSpeed = 0x00000002;
  static const UsbSuperSpeed = 0x00000003;
}

/// {@category Enum}
class USB_DEVICE_TYPE {
  static const Usb11Device = 0x00000000;
  static const Usb20Device = 0x00000001;
}

/// {@category Enum}
class USB_USER_ERROR_CODE {
  static const UsbUserSuccess = 0x00000000;
  static const UsbUserNotSupported = 0x00000001;
  static const UsbUserInvalidRequestCode = 0x00000002;
  static const UsbUserFeatureDisabled = 0x00000003;
  static const UsbUserInvalidHeaderParameter = 0x00000004;
  static const UsbUserInvalidParameter = 0x00000005;
  static const UsbUserMiniportError = 0x00000006;
  static const UsbUserBufferTooSmall = 0x00000007;
  static const UsbUserErrorNotMapped = 0x00000008;
  static const UsbUserDeviceNotStarted = 0x00000009;
  static const UsbUserNoDeviceConnected = 0x0000000a;
}

/// {@category Enum}
class WDMUSB_POWER_STATE {
  static const WdmUsbPowerNotMapped = 0x00000000;
  static const WdmUsbPowerSystemUnspecified = 0x00000064;
  static const WdmUsbPowerSystemWorking = 0x00000065;
  static const WdmUsbPowerSystemSleeping1 = 0x00000066;
  static const WdmUsbPowerSystemSleeping2 = 0x00000067;
  static const WdmUsbPowerSystemSleeping3 = 0x00000068;
  static const WdmUsbPowerSystemHibernate = 0x00000069;
  static const WdmUsbPowerSystemShutdown = 0x0000006a;
  static const WdmUsbPowerDeviceUnspecified = 0x000000c8;
  static const WdmUsbPowerDeviceD0 = 0x000000c9;
  static const WdmUsbPowerDeviceD1 = 0x000000ca;
  static const WdmUsbPowerDeviceD2 = 0x000000cb;
  static const WdmUsbPowerDeviceD3 = 0x000000cc;
}
