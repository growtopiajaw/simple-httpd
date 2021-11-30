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
| [simple-httpd-aix-ppc64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-aix-ppc64) | 0.2.1 | AIX PowerPC 64-bit | 8f4366946ddba4e172d1bed19f3780a17130ac97 |
| [simple-httpd-android-16-386](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-android-16-386) | 0.2.1 | Android x86_64 32-bit | c00d6c26d827a3b5be0ae8862c305d2df4dcad98 |
| [simple-httpd-android-16-arm](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-android-16-arm) | 0.2.1 | Android ARM 32-bit | 85790e131c71b732c03b3c46556bdf510421ab08 |
| [simple-httpd-darwin-10.6-386](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-darwin-10.6-386) | 0.2.1 | macOS x86_64 32-bit | 577cb22ebb9589ab66e96077f39e4acf32773b4b |
| [simple-httpd-darwin-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-darwin-amd64) | 0.2.1 | macOS x86_64 64-bit | 489c23337c8ffdc94567cefae8b153135b90dd78 |
| [simple-httpd-dragonfly-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-dragonfly-amd64) | 0.2.1 | DragonFly x86_64 64-bit | 3da4b9e6cffd32febfd1722dc0664157e9fa3473 |
| [simple-httpd-freebsd-386](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-freebsd-386) | 0.2.1 | FreeBSD x86_64 32-bit | e568d85d2e56091d813cda2403f1897ec9642ac6 |
| [simple-httpd-freebsd-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-freebsd-amd64) | 0.2.1 | FreeBSD x86_64 64-bit | 996ea6350ea06740c448db7a86f5dd6f662ba386 |
| [simple-httpd-freebsd-arm64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-freebsd-arm64) | 0.2.1 | FreeBSD ARM 64-bit | 40220935103e267d9c7854bff35a879ad5a5a48c |
| [simple-httpd-freebsd-armv6](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-freebsd-armv6) | 0.2.1 | FreeBSD ARM 32-bit armv6 | 9ef2d6e5a8f2f3b57f4068e2696e3f1d6e71a815 |
| [simple-httpd-freebsd-armv7](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-freebsd-armv7) | 0.2.1 | FreeBSD ARM 32-bit armv7 | b60b3ec86c11c27e960e4d1caffb0e3c669514c9 |
| [simple-httpd-illumos-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-illumos-amd64) | 0.2.1 | illumos x86_64 64-bit | fd7d1ce53f7ace61f62d68a47fcb477f33c17d48 |
| [simple-httpd-ios-5.0-arm64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-ios-5.0-arm64) | 0.2.1 | iOS ARM 64-bit | 058657df23504252c35fdb767cce226a9b508193 |
| [simple-httpd-ios-5.0-armv7](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-ios-5.0-armv7) | 0.2.1 | iOS ARM 32-bit armv7 | c4acf606c8d9084127713761ba4d1b86d6daeef4 |
| [simple-httpd-js-wasm](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-js-wasm) | 0.2.1 | JavaScript WebAssembly | 8286bea61508c9f8b7c9451a320e6d61508be8d1 |
| [simple-httpd-linux-386](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-386) | 0.2.1 | Linux x86_64 32-bit | e4c2a90dec1db0b22b48bd0996555fb615b02066 || [simple-httpd-linux-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-amd64) | 0.2.1 | Linux x86_64 64-bit | 1f1bfbe9c019b7d6ca1579313470f28836625855 |
| [simple-httpd-linux-arm64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-arm64) | 0.2.1 | Linux ARM 64-bit | 951abdd243195b20099050f91d6e36261eb8b89f |
| [simple-httpd-linux-armv5](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-armv5) | 0.2.1 | Linux ARM 32-bit armv5 | 90f7c6136d2105b8c410af894da1e63df6a7850b |
| [simple-httpd-linux-armv6](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-armv6) | 0.2.1 | Linux ARM 32-bit armv6 | 20047e8ab654577902d95de7cdfab26162280e12 |
| [simple-httpd-linux-armv7](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-armv7) | 0.2.1 | Linux ARM 32-bit armv7 | fa8ddfa24bc2d897adf9be0d98ba0244d755a9ca |
| [simple-httpd-linux-mips](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-mips) | 0.2.1 | Linux MIPS 32-bit | dcc816028901731f96f738e9dc9da51be2236eb3 || [simple-httpd-linux-mipsle](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-mipsle) | 0.2.1 | Linux MIPS 32-bit le | 6b4b3d25474cc5a62011e84fd27931743cbcb8b9 |
| [simple-httpd-linux-mips64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-mips64) | 0.2.1 | Linux MIPS 64-bit | f8e9b5787a12e40c44b69a5b77fc379cb8b69e01 |
| [simple-httpd-linux-mips64le](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-mips64le) | 0.2.1 | Linux MIPS 64-bit le | 49a5cc1de8fa93b0d48d42fe1a10fcf488bcc48c |
| [simple-httpd-linux-ppc64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-ppc64) | 0.2.1 | Linux PowerPC 64-bit | d7631de22f30e49c19886a21a2e5d6419c799e8a || [simple-httpd-linux-ppc64le](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-ppc64le) |  | Linux PowerPC 64-bit le | 6e49b10863aeb92f2e3f5d1bfce72fcf46339fc3 |
| [simple-httpd-linux-riscv64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-riscv64) | 0.2.1 | Linux RISC V 64-bit | 9211e6a6959f94bb4c52f890b44fbab5640a9f47 |
| [simple-httpd-linux-s390x](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-linux-s390x) | 0.2.1 | Linux IBM S/390 64-bit | cf9523704622fda63b206fb4a705e9b81a61f28b |
| [simple-httpd-netbsd-386](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-netbsd-386) | 0.2.1 | NetBSD x86_64 32-bit | 71f8a705311a7cdf3487be3e7a0852ffd995f35c |
| [simple-httpd-netbsd-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-netbsd-amd64) | 0.2.1 | NetBSD x86_64 64-bit | fd09baddbe27528d382e794d36a309fcef69c3c2 |
| [simple-httpd-netbsd-arm64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-netbsd-arm64) | 0.2.1 | NetBSD ARM 64-bit | efa75bcb4bba660c17579befac90391c1512d7d9 |
| [simple-httpd-netbsd-armv6](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-netbsd-armv6) | 0.2.1 | NetBSD ARM 32-bit armv6 | dac468af5e8f6d0e5834664a6df115c4b10e8f17 |
| [simple-httpd-netbsd-armv7](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-netbsd-armv7) | 0.2.1 | NetBSD ARM 32-bit armv7 | 43dfdb3753f4eeb2606e50c2aa09cebcbe3f7639 |
| [simple-httpd-openbsd-386](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-openbsd-386) | 0.2.1 | OpenBSD x86_64 32-bit | 9c7ac2d7d7ec4db105aa200f2bb450b8f0f10748 |
| [simple-httpd-openbsd-amd64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-openbsd-amd64) | 0.2.1 | OpenBSD x86_64 64-bit | b6a4119d11e77bfa879818ee1535ae09f74d7b81 |
| [simple-httpd-openbsd-arm64](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-openbsd-arm64) | 0.2.1 | OpenBSD ARM 64-bit | 913426dba514aec05ede6c3db4cba64999993797 |
| [simple-httpd-openbsd-armv6](https://github.com/GrowtopiaJaw/simple-httpd/releases/download/v0.2.1/simple-httpd-openbsd-armv6) | 0.2.1 | OpenBSD ARM 32-bit armv6 | 34c345e68dbe9e904f66155

## Contributions

* File Issue with details of the problem, feature request, etc.
* Submit a pull request and include details of what problem or feature the code is solving or implementing.
