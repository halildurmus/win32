// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.
//
// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.

#include "ws2_32.g.h"

Win32Result accept_Wrapper(SOCKET s, SOCKADDR* addr, int* addrlen) {
  SOCKET value_ = accept(s, addr, addrlen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}

Win32Result bind_Wrapper(SOCKET s, SOCKADDR* name, int namelen) {
  int value_ = bind(s, name, namelen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result closesocket_Wrapper(SOCKET s) {
  int value_ = closesocket(s);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result connect_Wrapper(SOCKET s, SOCKADDR* name, int namelen) {
  int value_ = connect(s, name, namelen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result gethostname_Wrapper(PSTR name, int namelen) {
  int value_ = gethostname(name, namelen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result getnameinfo_Wrapper(SOCKADDR* pSockaddr, socklen_t sockaddrLength, PSTR pNodeBuffer, unsigned long nodeBufferSize, PSTR pServiceBuffer, unsigned long serviceBufferSize, int flags) {
  int value_ = getnameinfo(pSockaddr, sockaddrLength, pNodeBuffer, nodeBufferSize, pServiceBuffer, serviceBufferSize, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result getpeername_Wrapper(SOCKET s, SOCKADDR* name, int* namelen) {
  int value_ = getpeername(s, name, namelen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result getprotobyname_Wrapper(PCSTR name) {
  PROTOENT* value_ = getprotobyname(name);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result getprotobynumber_Wrapper(int number) {
  PROTOENT* value_ = getprotobynumber(number);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result getservbyname_Wrapper(PCSTR name, PCSTR proto) {
  SERVENT* value_ = getservbyname(name, proto);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result getservbyport_Wrapper(int port, PCSTR proto) {
  SERVENT* value_ = getservbyport(port, proto);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result getsockname_Wrapper(SOCKET s, SOCKADDR* name, int* namelen) {
  int value_ = getsockname(s, name, namelen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result getsockopt_Wrapper(SOCKET s, int level, int optname, PSTR optval, int* optlen) {
  int value_ = getsockopt(s, level, optname, optval, optlen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result htonl_Wrapper(unsigned long hostlong) {
  unsigned long value_ = htonl(hostlong);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result htons_Wrapper(unsigned short hostshort) {
  unsigned short value_ = htons(hostshort);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result inet_ntop_Wrapper(int family, void* pAddr, PSTR pStringBuf, unsigned long long stringBufSize) {
  PCSTR value_ = inet_ntop(family, pAddr, pStringBuf, stringBufSize);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.ptr = value_}};
}

Win32Result ioctlsocket_Wrapper(SOCKET s, int cmd, unsigned long* argp) {
  int value_ = ioctlsocket(s, cmd, argp);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result listen_Wrapper(SOCKET s, int backlog) {
  int value_ = listen(s, backlog);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result ntohl_Wrapper(unsigned long netlong) {
  unsigned long value_ = ntohl(netlong);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u32 = value_}};
}

Win32Result ntohs_Wrapper(unsigned short netshort) {
  unsigned short value_ = ntohs(netshort);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.u16 = value_}};
}

Win32Result recv_Wrapper(SOCKET s, PSTR buf, int len, LONG flags) {
  int value_ = recv(s, buf, len, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result recvfrom_Wrapper(SOCKET s, PSTR buf, int len, int flags, SOCKADDR* from, int* fromlen) {
  int value_ = recvfrom(s, buf, len, flags, from, fromlen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result select_Wrapper(int nfds, FD_SET* readfds, FD_SET* writefds, FD_SET* exceptfds, TIMEVAL* timeout) {
  int value_ = select(nfds, readfds, writefds, exceptfds, timeout);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result send_Wrapper(SOCKET s, PCSTR buf, int len, LONG flags) {
  int value_ = send(s, buf, len, flags);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result sendto_Wrapper(SOCKET s, PCSTR buf, int len, int flags, SOCKADDR* to, int tolen) {
  int value_ = sendto(s, buf, len, flags, to, tolen);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result shutdown_Wrapper(SOCKET s, LONG how) {
  int value_ = shutdown(s, how);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i32 = value_}};
}

Win32Result socket_Wrapper(int af, LONG type, int protocol) {
  SOCKET value_ = socket(af, type, protocol);
  DWORD error_ = GetLastError();
  return (Win32Result){error_, .value = {.i64 = value_}};
}
