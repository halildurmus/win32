// Windows Sockets library constants

// ignore_for_file: camel_case_types

const SOCK_STREAM = 1; /* stream socket */
const SOCK_DGRAM = 2; /* datagram socket */
const SOCK_RAW = 3; /* raw-protocol interface */
const SOCK_RDM = 4; /* reliably-delivered message */
const SOCK_SEQPACKET = 5; /* sequenced packet stream */

/*
 * Option flags per-socket.
 */
const SO_DEBUG = 0x0001; /* turn on debugging info recording */
const SO_ACCEPTCONN = 0x0002; /* socket has had listen() */
const SO_REUSEADDR = 0x0004; /* allow local address reuse */
const SO_KEEPALIVE = 0x0008; /* keep connections alive */
const SO_DONTROUTE = 0x0010; /* just use interface addresses */
const SO_BROADCAST = 0x0020; /* permit sending of broadcast msgs */
const SO_USELOOPBACK = 0x0040; /* bypass hardware when possible */
const SO_LINGER = 0x0080; /* linger on close if data present */
const SO_OOBINLINE = 0x0100; /* leave received OOB data in line */

const SO_DONTLINGER = (~SO_LINGER);

/*
 * Additional options.
 */
const SO_SNDBUF = 0x1001; /* send buffer size */
const SO_RCVBUF = 0x1002; /* receive buffer size */
const SO_SNDLOWAT = 0x1003; /* send low-water mark */
const SO_RCVLOWAT = 0x1004; /* receive low-water mark */
const SO_SNDTIMEO = 0x1005; /* send timeout */
const SO_RCVTIMEO = 0x1006; /* receive timeout */
const SO_ERROR = 0x1007; /* get error status and clear */
const SO_TYPE = 0x1008; /* get socket type */

/*
 * Options for connect and disconnect data and options.  Used only by
 * non-TCP/IP transports such as DECNet, OSI TP4, etc.
 */
const SO_CONNDATA = 0x7000;
const SO_CONNOPT = 0x7001;
const SO_DISCDATA = 0x7002;
const SO_DISCOPT = 0x7003;
const SO_CONNDATALEN = 0x7004;
const SO_CONNOPTLEN = 0x7005;
const SO_DISCDATALEN = 0x7006;
const SO_DISCOPTLEN = 0x7007;

/*
 * Option for opening sockets for synchronous access.
 */
const SO_OPENTYPE = 0x7008;

const SO_SYNCHRONOUS_ALERT = 0x10;
const SO_SYNCHRONOUS_NONALERT = 0x20;

/*
 * Other NT-specific options.
 */
const SO_MAXDG = 0x7009;
const SO_MAXPATHDG = 0x700A;
const SO_UPDATE_ACCEPT_CONTEXT = 0x700B;
const SO_CONNECT_TIME = 0x700C;

/*
 * TCP options.
 */
const TCP_NODELAY = 0x0001;
const TCP_BSDURGENT = 0x7000;

const FD_READ = 0x01;
const FD_WRITE = 0x02;
const FD_OOB = 0x04;
const FD_ACCEPT = 0x08;
const FD_CONNECT = 0x10;
const FD_CLOSE = 0x20;
