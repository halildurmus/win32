// These functions wrap the native APIs and preserve the result of
// GetLastError(), making it easier to debug issues and handle errors reliably.
//
// THIS FILE IS GENERATED AUTOMATICALLY AND SHOULD NOT BE EDITED DIRECTLY.

#include "ws2_32.g.h"

SOCKET accept_Wrapper(SOCKET s, SOCKADDR* addr, int* addrlen) {
  trace_print("Calling accept\n");
  SOCKET result_ = accept(s, addr, addrlen);
  trace_print("accept returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int bind_Wrapper(SOCKET s, SOCKADDR* name, int namelen) {
  trace_print("Calling bind\n");
  int result_ = bind(s, name, namelen);
  trace_print("bind returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int closesocket_Wrapper(SOCKET s) {
  trace_print("Calling closesocket\n");
  int result_ = closesocket(s);
  trace_print("closesocket returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int connect_Wrapper(SOCKET s, SOCKADDR* name, int namelen) {
  trace_print("Calling connect\n");
  int result_ = connect(s, name, namelen);
  trace_print("connect returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int gethostname_Wrapper(PSTR name, int namelen) {
  trace_print("Calling gethostname\n");
  int result_ = gethostname(name, namelen);
  trace_print("gethostname returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int getnameinfo_Wrapper(SOCKADDR* pSockaddr, socklen_t sockaddrLength, PSTR pNodeBuffer, unsigned long nodeBufferSize, PSTR pServiceBuffer, unsigned long serviceBufferSize, int flags) {
  trace_print("Calling getnameinfo\n");
  int result_ = getnameinfo(pSockaddr, sockaddrLength, pNodeBuffer, nodeBufferSize, pServiceBuffer, serviceBufferSize, flags);
  trace_print("getnameinfo returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int getpeername_Wrapper(SOCKET s, SOCKADDR* name, int* namelen) {
  trace_print("Calling getpeername\n");
  int result_ = getpeername(s, name, namelen);
  trace_print("getpeername returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

PROTOENT* getprotobyname_Wrapper(PCSTR name) {
  trace_print("Calling getprotobyname\n");
  PROTOENT* result_ = getprotobyname(name);
  trace_print("getprotobyname returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

PROTOENT* getprotobynumber_Wrapper(int number) {
  trace_print("Calling getprotobynumber\n");
  PROTOENT* result_ = getprotobynumber(number);
  trace_print("getprotobynumber returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SERVENT* getservbyname_Wrapper(PCSTR name, PCSTR proto) {
  trace_print("Calling getservbyname\n");
  SERVENT* result_ = getservbyname(name, proto);
  trace_print("getservbyname returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SERVENT* getservbyport_Wrapper(int port, PCSTR proto) {
  trace_print("Calling getservbyport\n");
  SERVENT* result_ = getservbyport(port, proto);
  trace_print("getservbyport returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int getsockname_Wrapper(SOCKET s, SOCKADDR* name, int* namelen) {
  trace_print("Calling getsockname\n");
  int result_ = getsockname(s, name, namelen);
  trace_print("getsockname returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int getsockopt_Wrapper(SOCKET s, int level, int optname, PSTR optval, int* optlen) {
  trace_print("Calling getsockopt\n");
  int result_ = getsockopt(s, level, optname, optval, optlen);
  trace_print("getsockopt returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long htonl_Wrapper(unsigned long hostlong) {
  trace_print("Calling htonl\n");
  unsigned long result_ = htonl(hostlong);
  trace_print("htonl returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short htons_Wrapper(unsigned short hostshort) {
  trace_print("Calling htons\n");
  unsigned short result_ = htons(hostshort);
  trace_print("htons returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

PCSTR inet_ntop_Wrapper(int family, void* pAddr, PSTR pStringBuf, unsigned long long stringBufSize) {
  trace_print("Calling inet_ntop\n");
  PCSTR result_ = inet_ntop(family, pAddr, pStringBuf, stringBufSize);
  trace_print("inet_ntop returned %p\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int ioctlsocket_Wrapper(SOCKET s, int cmd, unsigned long* argp) {
  trace_print("Calling ioctlsocket\n");
  int result_ = ioctlsocket(s, cmd, argp);
  trace_print("ioctlsocket returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int listen_Wrapper(SOCKET s, int backlog) {
  trace_print("Calling listen\n");
  int result_ = listen(s, backlog);
  trace_print("listen returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned long ntohl_Wrapper(unsigned long netlong) {
  trace_print("Calling ntohl\n");
  unsigned long result_ = ntohl(netlong);
  trace_print("ntohl returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

unsigned short ntohs_Wrapper(unsigned short netshort) {
  trace_print("Calling ntohs\n");
  unsigned short result_ = ntohs(netshort);
  trace_print("ntohs returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int recv_Wrapper(SOCKET s, PSTR buf, int len, LONG flags) {
  trace_print("Calling recv\n");
  int result_ = recv(s, buf, len, flags);
  trace_print("recv returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int recvfrom_Wrapper(SOCKET s, PSTR buf, int len, int flags, SOCKADDR* from, int* fromlen) {
  trace_print("Calling recvfrom\n");
  int result_ = recvfrom(s, buf, len, flags, from, fromlen);
  trace_print("recvfrom returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int select_Wrapper(int nfds, FD_SET* readfds, FD_SET* writefds, FD_SET* exceptfds, TIMEVAL* timeout) {
  trace_print("Calling select\n");
  int result_ = select(nfds, readfds, writefds, exceptfds, timeout);
  trace_print("select returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int send_Wrapper(SOCKET s, PCSTR buf, int len, LONG flags) {
  trace_print("Calling send\n");
  int result_ = send(s, buf, len, flags);
  trace_print("send returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int sendto_Wrapper(SOCKET s, PCSTR buf, int len, int flags, SOCKADDR* to, int tolen) {
  trace_print("Calling sendto\n");
  int result_ = sendto(s, buf, len, flags, to, tolen);
  trace_print("sendto returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

int shutdown_Wrapper(SOCKET s, LONG how) {
  trace_print("Calling shutdown\n");
  int result_ = shutdown(s, how);
  trace_print("shutdown returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}

SOCKET socket_Wrapper(int af, LONG type, int protocol) {
  trace_print("Calling socket\n");
  SOCKET result_ = socket(af, type, protocol);
  trace_print("socket returned %d\n", result_);
  DWORD error = GetLastError();
  setLastError(error);
  trace_print("Set lastError to %d\n", error);
  return result_;
}
