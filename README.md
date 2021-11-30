# simple-httpd

[![Build Status](https://travis-ci.org/briandowns/simple-httpd.svg?branch=master)](https://travis-ci.org/briandowns/simple-httpd)

simple-httpd is aimed to be a simple replacement for using `python -m SimpleHTTPServer` to serve local files.  Like [SimpleHTTPServer](https://docs.python.org/2/library/simplehttpserver.html), simple-httpd supports HTTP GET and HEAD requests and adheres to the [HTTP/1.1 RFC 2616](https://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html) guidelines.

The HTML output is a mix of the Python module layout and of an Apache directory listing layout.

If you're looking for a full featured or even just more capable web server, take a look at [Caddy](https://caddyserver.com/).

## Features

* HTTP2 with [Let's Encrypt](https://letsencrypt.org/) integration for automatic TLS, if enabled.
* Automatic self signed certificate generation and use, if enabled.
* Multiple language support: English, Italian, Spanish, Irish. ISO 639-1 are given on the CLI.

Certificates are cached in `${HOME}/.autocert` for reuse.

## Installation

```
go get github.com/GrowtopiaJaw/simple-httpd
```
or
```
make install
```
or, on BSD
```
gmake install
```

### Examples

HTTP/1.1 on default port (8000)

```
simple-httpd
```

HTTP/1.1 on the given port

```
simple-httpd -p 8181
```

HTTP/2 with Let's Encrypt on the default port

```
simple-httpd -l some.valid.domain
```

The port assignment is for the HTTP server.  The TLS port will be 8081 and both will respond to requests.

```
simple-httpd -p 8080 -t some.valid.domain
```

Generate a self signed certificate and run the server

```
simple-httpd -g
```

Run server in Spanish

```
simple-httpd -l es
```

### Downloads
 Check our [releases](https://github.com/GrowtopiaJaw/simple-httpd/releases) section.

| Filename               | Version | Description        | SHA1SUM                                   |
|:-----------------------|:--------|:-------------------|:-----------------------------------------|
| [simple-httpd-aix-ppc64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-aix-ppc64) | 0.2.3 | AIX PowerPC 64-bit | 437f469dcf6c7f7c28a08f5e108b27b7cb66425d |
| [simple-httpd-android-16-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-android-16-386) | 0.2.3 | Android x86_64 32-bit | c76bc9e680de6145f93b79b2402abae479a763af |
| [simple-httpd-android-16-arm](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-android-16-arm) | 0.2.3 | Android ARM 32-bit | e3d5fcdf28e6a984a572419efae22f032b5a58fb |
| [simple-httpd-darwin-10.6-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-darwin-10.6-386) | 0.2.3 | macOS x86_64 32-bit | 0ac42d0149dc19401bc1c7a89837b3456b936aa5 |
| [simple-httpd-darwin-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-darwin-amd64) | 0.2.3 | macOS x86_64 64-bit | 721c6259ac4a27702c0990ec10af98c654f5b75b |
| [simple-httpd-dragonfly-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-dragonfly-amd64) | 0.2.3 | DragonFly x86_64 64-bit | eb933d3b8f203ceebda361e59b5e2ce81c8aa06f |
| [simple-httpd-freebsd-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-freebsd-386) | 0.2.3 | FreeBSD x86_64 32-bit | c1e09d11360c41c7844435dc69054683631f9fc6 |
| [simple-httpd-freebsd-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-freebsd-amd64) | 0.2.3 | FreeBSD x86_64 64-bit | c81b1ea9128f7539557d2d5b710b842a236c368c |
| [simple-httpd-freebsd-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-freebsd-arm64) | 0.2.3 | FreeBSD ARM 64-bit | 020eb60d4ddcd49de17d4a54d0c921d1cee85e01 |
| [simple-httpd-freebsd-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-freebsd-armv6) | 0.2.3 | FreeBSD ARM 32-bit armv6 | 19c6b27c7afce0022702076eb3e356a9b442eafb |
| [simple-httpd-freebsd-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-freebsd-armv7) | 0.2.3 | FreeBSD ARM 32-bit armv7 | 139ce4dd12bc112d094a8866ea276d749b1b48ef |
| [simple-httpd-illumos-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-illumos-amd64) | 0.2.3 | illumos x86_64 64-bit | c11d0241c50e1c85d9e2b903b59097fa278b03c0 |
| [simple-httpd-ios-5.0-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-ios-5.0-arm64) | 0.2.3 | iOS ARM 64-bit | 2d523cebafba79fd57ca7e46ffd6eb86f66a37a6 |
| [simple-httpd-ios-5.0-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-ios-5.0-armv7) | 0.2.3 | iOS ARM 32-bit armv7 | 17cb7e67b4eb5c81dd557bd033e14cd68bbbd24e |
| [simple-httpd-js-wasm](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-js-wasm) | 0.2.3 | JavaScript WebAssembly | 607c7ef033c305946b5be4e5260a37d1fdc862e8 |
| [simple-httpd-linux-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-386) | 0.2.3 | Linux x86_64 32-bit | 39a703c103b3aa0fd5111a2b652cd841a6907797 |
| [simple-httpd-linux-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-amd64) | 0.2.3 | Linux x86_64 64-bit | 1e23fddd22e23b6ad0575523c1fd63291dc3a3d5 |
| [simple-httpd-linux-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-arm64) | 0.2.3 | Linux ARM 64-bit | 9b896d74a6e463ae06b28516ab86b8240bdddf83 |
| [simple-httpd-linux-armv5](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-armv5) | 0.2.3 | Linux ARM 32-bit armv5 | bc74825270eefd3aac446b69741d5cc94d891e91 |
| [simple-httpd-linux-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-armv6) | 0.2.3 | Linux ARM 32-bit armv6 | e6535749a5ac4f978eb9d9666ee5541682060179 |
| [simple-httpd-linux-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-armv7) | 0.2.3 | Linux ARM 32-bit armv7 | 34f71e4f7529ce3f7d357ae6f9c1a2aef2de5b19 |
| [simple-httpd-linux-mips](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-mips) | 0.2.3 | Linux MIPS 32-bit | 313871a4a5a805baa91a80e8518841450d2b9865 |
| [simple-httpd-linux-mipsle](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-mipsle) | 0.2.3 | Linux MIPS 32-bit le | d98378d1e300dcd652ad01a588ce312477a21ead |
| [simple-httpd-linux-mips64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-mips64) | 0.2.3 | Linux MIPS 64-bit | 5fb8b19af2e3e8c32b812a2abd323c49eb6fa978 |
| [simple-httpd-linux-mips64le](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-mips64le) | 0.2.3 | Linux MIPS 64-bit le | 3a11bed0f131cf82d073ef8656bf4228284fdd35 |
| [simple-httpd-linux-ppc64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-ppc64) | 0.2.3 | Linux PowerPC 64-bit | 0e940e909e6de573a74261e3f17e114d0f33cc5b |
| [simple-httpd-linux-ppc64le](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-ppc64le) | 0.2.3 | Linux PowerPC 64-bit le | 2fe1ed1f3c67ecb4f318aef2f90f632fc3c86994 |
| [simple-httpd-linux-riscv64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-riscv64) | 0.2.3 | Linux RISC V 64-bit | c6745f071f5dd93bd25fe00a98c142a771898e05 |
| [simple-httpd-linux-s390x](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-linux-s390x) | 0.2.3 | Linux IBM S/390 64-bit | cace73657bac997a7f08a4b53b52aa85a8b40c90 |
| [simple-httpd-netbsd-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-netbsd-386) | 0.2.3 | NetBSD x86_64 32-bit | 7a8bce0208a3c319ce827a5fd33a7b73bfbb333b |
| [simple-httpd-netbsd-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-netbsd-amd64) | 0.2.3 | NetBSD x86_64 64-bit | cad9e39d68f8d3d0ff9b8aa54f7c9c5ed6aa6f75 |
| [simple-httpd-netbsd-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-netbsd-arm64) | 0.2.3 | NetBSD ARM 64-bit | 3fef66cc7af1c5be470a08becc95d1ef248b0fbf |
| [simple-httpd-netbsd-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-netbsd-armv6) | 0.2.3 | NetBSD ARM 32-bit armv6 | 54774818ca71fc16efe96553de367cfb00d09622 |
| [simple-httpd-netbsd-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-netbsd-armv7) | 0.2.3 | NetBSD ARM 32-bit armv7 | 9fcc9161047301a0daf857cf5563aa4ac7a681ec |
| [simple-httpd-openbsd-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-openbsd-386) | 0.2.3 | OpenBSD x86_64 32-bit | 1a0244626140cf55c9162ef09b2d2d1664835c60 |
| [simple-httpd-openbsd-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-openbsd-amd64) | 0.2.3 | OpenBSD x86_64 64-bit | d8754fe7be5a7772d39fa0d4ed586429357dac0f |
| [simple-httpd-openbsd-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-openbsd-arm64) | 0.2.3 | OpenBSD ARM 64-bit | 706b7a02cf68cce9c400b62c34b12afdce133059 |
| [simple-httpd-openbsd-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-openbsd-armv6) | 0.2.3 | OpenBSD ARM 32-bit armv6 | 6718477b02f1c762f8b5352ab1f14ceb2c96c6f7 |
| [simple-httpd-openbsd-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-openbsd-armv7) | 0.2.3 | OpenBSD ARM 32-bit armv7 | 65d46d1d8b02e69cca6b9c969b4582f3f7afd64f |
| [simple-httpd-plan9-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-plan9-386) | 0.2.3 | Plan 9 x86_64 32-bit | 1ad7e837b261c38d626d8e9421c21520b289e5aa |
| [simple-httpd-plan9-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-plan9-amd64) | 0.2.3 | Plan 9 x86_64 64-bit | 3ddd9c5ad385bc4f4eae5f0db710f7496cd74baf |
| [simple-httpd-plan9-arm](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-plan9-arm) | 0.2.3 | Plan 9 ARM 32-bit | 5900ede8e0edcb04ddec2422153e0f5b5ba525e1 |
| [simple-httpd-solaris-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-solaris-amd64) | 0.2.3 | Solaris x86_64 64-bit | 5fc92417515ffd1e5473ee71da51cbb54de5abee |
| [simple-httpd-windows-386.exe](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-windows-386.exe) | 0.2.3 | Windows x86_64 32-bit | 01225863b64979a389c9b4182cc6c23da13bf128 |
| [simple-httpd-windows-amd64.exe](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-windows-amd64.exe) | 0.2.3 | Windows x86_64 64-bit | a4a35fb48c0a3464c217d6bb9c4fb8aa1a244068 |
| [simple-httpd-windows-arm.exe](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.3/simple-httpd-windows-arm.exe) | 0.2.3 | Windows ARM 32-bit | d4affc078e88ac3bb26c64883232365647ff12e1 |

## Contributions

* File Issue with details of the problem, feature request, etc.
* Submit a pull request and include details of what problem or feature the code is solving or implementing.
