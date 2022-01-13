/// {@category Enum}
class NAMED_PIPE_MODE {
  static const PIPE_WAIT = 0x00000000;
  static const PIPE_NOWAIT = 0x00000001;
  static const PIPE_READMODE_BYTE = 0x00000000;
  static const PIPE_READMODE_MESSAGE = 0x00000002;
  static const PIPE_CLIENT_END = 0x00000000;
  static const PIPE_SERVER_END = 0x00000001;
  static const PIPE_TYPE_BYTE = 0x00000000;
  static const PIPE_TYPE_MESSAGE = 0x00000004;
  static const PIPE_ACCEPT_REMOTE_CLIENTS = 0x00000000;
  static const PIPE_REJECT_REMOTE_CLIENTS = 0x00000008;
}
