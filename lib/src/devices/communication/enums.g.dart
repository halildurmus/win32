/// {@category Enum}
class CLEAR_COMM_ERROR_FLAGS {
  static const CE_BREAK = 0x00000010;
  static const CE_FRAME = 0x00000008;
  static const CE_OVERRUN = 0x00000002;
  static const CE_RXOVER = 0x00000001;
  static const CE_RXPARITY = 0x00000004;
}

/// {@category Enum}
class COMMPROP_STOP_PARITY {
  static const STOPBITS_10 = 0x02020001;
  static const STOPBITS_15 = 0x04020002;
  static const STOPBITS_20 = 0x00020004;
  static const PARITY_NONE = 0x00020100;
  static const PARITY_ODD = 0x00020200;
  static const PARITY_EVEN = 0x00020400;
  static const PARITY_MARK = 0x00020800;
  static const PARITY_SPACE = 0x06041000;
}

/// {@category Enum}
class COMM_EVENT_MASK {
  static const EV_BREAK = 0x00000040;
  static const EV_CTS = 0x00000008;
  static const EV_DSR = 0x00000010;
  static const EV_ERR = 0x00000080;
  static const EV_EVENT1 = 0x00000800;
  static const EV_EVENT2 = 0x00001000;
  static const EV_PERR = 0x00000200;
  static const EV_RING = 0x00000100;
  static const EV_RLSD = 0x00000020;
  static const EV_RX80FULL = 0x00000400;
  static const EV_RXCHAR = 0x00000001;
  static const EV_RXFLAG = 0x00000002;
  static const EV_TXEMPTY = 0x00000004;
}

/// {@category Enum}
class ESCAPE_COMM_FUNCTION {
  static const CLRBREAK = 0x00000009;
  static const CLRDTR = 0x00000006;
  static const CLRRTS = 0x00000004;
  static const SETBREAK = 0x00000008;
  static const SETDTR = 0x00000005;
  static const SETRTS = 0x00000003;
  static const SETXOFF = 0x00000001;
  static const SETXON = 0x00000002;
}

/// {@category Enum}
class MODEMDEVCAPS_DIAL_OPTIONS {
  static const DIALOPTION_BILLING = 0x00000040;
  static const DIALOPTION_DIALTONE = 0x00000100;
  static const DIALOPTION_QUIET = 0x00000080;
}

/// {@category Enum}
class MODEMDEVCAPS_SPEAKER_MODE {
  static const MDMSPKRFLAG_CALLSETUP = 0x00000008;
  static const MDMSPKRFLAG_DIAL = 0x00000002;
  static const MDMSPKRFLAG_OFF = 0x00000001;
  static const MDMSPKRFLAG_ON = 0x00000004;
}

/// {@category Enum}
class MODEMDEVCAPS_SPEAKER_VOLUME {
  static const MDMVOLFLAG_HIGH = 0x00000004;
  static const MDMVOLFLAG_LOW = 0x00000001;
  static const MDMVOLFLAG_MEDIUM = 0x00000002;
}

/// {@category Enum}
class MODEMSETTINGS_SPEAKER_MODE {
  static const MDMSPKR_CALLSETUP = 0x00000008;
  static const MDMSPKR_DIAL = 0x00000002;
  static const MDMSPKR_OFF = 0x00000001;
  static const MDMSPKR_ON = 0x00000004;
}

/// {@category Enum}
class MODEM_SPEAKER_VOLUME {
  static const MDMVOL_HIGH = 0x00000002;
  static const MDMVOL_LOW = 0x00000000;
  static const MDMVOL_MEDIUM = 0x00000001;
}

/// {@category Enum}
class MODEM_STATUS_FLAGS {
  static const MS_CTS_ON = 0x00000010;
  static const MS_DSR_ON = 0x00000020;
  static const MS_RING_ON = 0x00000040;
  static const MS_RLSD_ON = 0x00000080;
}

/// {@category Enum}
class PURGE_COMM_FLAGS {
  static const PURGE_RXABORT = 0x00000002;
  static const PURGE_RXCLEAR = 0x00000008;
  static const PURGE_TXABORT = 0x00000001;
  static const PURGE_TXCLEAR = 0x00000004;
}
