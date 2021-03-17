/// {@category Enum}
class RENDEZVOUS_SESSION_STATE {
  static const RSS_UNKNOWN = 0x00000000;
  static const RSS_READY = 0x00000001;
  static const RSS_INVITATION = 0x00000002;
  static const RSS_ACCEPTED = 0x00000003;
  static const RSS_CONNECTED = 0x00000004;
  static const RSS_CANCELLED = 0x00000005;
  static const RSS_DECLINED = 0x00000006;
  static const RSS_TERMINATED = 0x00000007;
}

/// {@category Enum}
class RENDEZVOUS_SESSION_FLAGS {
  static const RSF_NONE = 0x00000000;
  static const RSF_INVITER = 0x00000001;
  static const RSF_INVITEE = 0x00000002;
  static const RSF_ORIGINAL_INVITER = 0x00000004;
  static const RSF_REMOTE_LEGACYSESSION = 0x00000008;
  static const RSF_REMOTE_WIN7SESSION = 0x00000010;
}

