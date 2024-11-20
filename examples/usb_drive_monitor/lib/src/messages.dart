sealed class ControlMessage {
  const ControlMessage();
}

final class Shutdown extends ControlMessage {
  const Shutdown();
}
