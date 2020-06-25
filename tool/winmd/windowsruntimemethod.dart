class WindowsRuntimeMethod {
  int token;
  String methodName;
  int methodFlags;
  int relativeVirtualAddress;

  WindowsRuntimeMethod(this.token, this.methodName, this.methodFlags,
      this.relativeVirtualAddress);
}
