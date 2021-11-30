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
| [simple-httpd-aix-ppc64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-aix-ppc64) | 0.2.2 | AIX PowerPC 64-bit | 0bc3c49ef686ea76406de888261637f98c66041f |
| [simple-httpd-android-16-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-android-16-386) | 0.2.2 | Android x86_64 32-bit | c30ee37c69c69b64899139e729f16bf87732642f |
| [simple-httpd-android-16-arm](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-android-16-arm) | 0.2.2 | Android ARM 32-bit | 9080772c8b1183782a7ff9b95c84d95dcf3b04cd |
| [simple-httpd-darwin-10.6-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-darwin-10.6-386) | 0.2.2 | macOS x86_64 32-bit | c8326b1e2268e3950e4f8c48c463c201de17a07b |
| [simple-httpd-darwin-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-darwin-amd64) | 0.2.2 | macOS x86_64 64-bit | 803344c0bc7afd0c496434faf17c2292a121eab3 |
| [simple-httpd-dragonfly-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-dragonfly-amd64) | 0.2.2 | DragonFly x86_64 64-bit | 3847799207c384bd1f08e3e07886d6da228f614e |
| [simple-httpd-freebsd-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-freebsd-386) | 0.2.2 | FreeBSD x86_64 32-bit | 6e4e18fc1315c8ac2891b349e0e3381096b7b700 |
| [simple-httpd-freebsd-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-freebsd-amd64) | 0.2.2 | FreeBSD x86_64 64-bit | 31030b7f887771ae31d26b56b9dc42999ee2bdf0 |
| [simple-httpd-freebsd-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-freebsd-arm64) | 0.2.2 | FreeBSD ARM 64-bit | cabbfd165532fa165ad14f0de2b205336a5621ef |
| [simple-httpd-freebsd-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-freebsd-armv6) | 0.2.2 | FreeBSD ARM 32-bit armv6 | 5db845309ad550b13ced9f2ae3531e793f8d0391 |
| [simple-httpd-freebsd-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-freebsd-armv7) | 0.2.2 | FreeBSD ARM 32-bit armv7 | 5ab25a431520420ec911e762562aad868e9e268d |
| [simple-httpd-illumos-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-illumos-amd64) | 0.2.2 | illumos x86_64 64-bit | 4ab366c1b1d5982f3a2db5f792c05dc90be62fef |
| [simple-httpd-ios-5.0-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-ios-5.0-arm64) | 0.2.2 | iOS ARM 64-bit | 83dbb56e93bbd6ed3bff0880e274857cf664972d |
| [simple-httpd-ios-5.0-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-ios-5.0-armv7) | 0.2.2 | iOS ARM 32-bit armv7 | 1e4c696fc10fa504c53fdb9095b6aeb7fd4dede2 |
| [simple-httpd-js-wasm](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-js-wasm) | 0.2.2 | JavaScript WebAssembly | bb97c4ee01faac975e5119754e7d9b340a405252 |
| [simple-httpd-linux-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-386) | 0.2.2 | Linux x86_64 32-bit | ade6c9ec7146c5dda04714e496cf56e036f559c0 |
| [simple-httpd-linux-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-amd64) | 0.2.2 | Linux x86_64 64-bit | 334a87374a8bd36c0736cb95add694db66a2c22e |
| [simple-httpd-linux-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-arm64) | 0.2.2 | Linux ARM 64-bit | caa850206ec76d1986ceeb60544ca3ddee2190b5 |
| [simple-httpd-linux-armv5](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-armv5) | 0.2.2 | Linux ARM 32-bit armv5 | 9e4447307f6990e872f1d7c61f7dad21f8cde946 |
| [simple-httpd-linux-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-armv6) | 0.2.2 | Linux ARM 32-bit armv6 | 4d146c4a24d98ccd36a8eef6364c780c8c46d1bb |
| [simple-httpd-linux-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-armv7) | 0.2.2 | Linux ARM 32-bit armv7 | 2a1b3c904125ba63065166095f4829e800fa6d21 |
| [simple-httpd-linux-mips](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-mips) | 0.2.2 | Linux MIPS 32-bit | 8371ed5bf14718101403a14ae3d62837ccdda6fd |
| [simple-httpd-linux-mipsle](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-mipsle) | 0.2.2 | Linux MIPS 32-bit le | 2f1b16457bcb6caa87c7c2f217f539f75cd48170 |
| [simple-httpd-linux-mips64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-mips64) | 0.2.2 | Linux MIPS 64-bit | f67e560393751ae94efa247466ad81d9640d6189 |
| [simple-httpd-linux-mips64le](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-mips64le) | 0.2.2 | Linux MIPS 64-bit le | 598e283e37eae15fb53899cda1646a80a5f7c6a2 |
| [simple-httpd-linux-ppc64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-ppc64) | 0.2.2 | Linux PowerPC 64-bit | c62fa357f118be8350a9d22dcc66e65e08115901 |
| [simple-httpd-linux-ppc64le](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-ppc64le) | 0.2.2 | Linux PowerPC 64-bit le | bf5224d95cd55d1cea6ce7f4ee7e0d87d6986930 |
| [simple-httpd-linux-riscv64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-riscv64) | 0.2.2 | Linux RISC V 64-bit | 6f1cb91e2126a36bcd0fb0fe0d468f9dcf91862c |
| [simple-httpd-linux-s390x](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-linux-s390x) | 0.2.2 | Linux IBM S/390 64-bit | e48891659e9b3c508db84278f2e0ab4207c28e34 |
| [simple-httpd-netbsd-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-netbsd-386) | 0.2.2 | NetBSD x86_64 32-bit | d3753804d708fe8d5964100081efd79e43af7aa5 |
| [simple-httpd-netbsd-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-netbsd-amd64) | 0.2.2 | NetBSD x86_64 64-bit | 1d39a7f9be4620ff3792c8098c20e089bef4b526 |
| [simple-httpd-netbsd-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-netbsd-arm64) | 0.2.2 | NetBSD ARM 64-bit | b8ddb235e70ed1e19e6a082e563b752d6f2a9827 |
| [simple-httpd-netbsd-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-netbsd-armv6) | 0.2.2 | NetBSD ARM 32-bit armv6 | eaa1a8ee069b7edbd2eea6f2aa203e2584867fd1 |
| [simple-httpd-netbsd-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-netbsd-armv7) | 0.2.2 | NetBSD ARM 32-bit armv7 | 88d8baabdd09f62aee88bf1a50b1d28c691172c0 |
| [simple-httpd-openbsd-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-openbsd-386) | 0.2.2 | OpenBSD x86_64 32-bit | e265d6d36baf216b3df5d8d26d111bd5ce04647b |
| [simple-httpd-openbsd-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-openbsd-amd64) | 0.2.2 | OpenBSD x86_64 64-bit | cb9fbf4adbecd349196e0d3b3d3ba3fda5d28d21 |
| [simple-httpd-openbsd-arm64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-openbsd-arm64) | 0.2.2 | OpenBSD ARM 64-bit | dc1a7ae5510a83d8e4da442705d51ed7bb98f526 |
| [simple-httpd-openbsd-armv6](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-openbsd-armv6) | 0.2.2 | OpenBSD ARM 32-bit armv6 | 6d48e2c46ddd9c6c0ca4f5285619957c9bdae0b8 |
| [simple-httpd-openbsd-armv7](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-openbsd-armv7) | 0.2.2 | OpenBSD ARM 32-bit armv7 | eeb54cc2181c225a8481c1186bf9a06ae68c1994 |
| [simple-httpd-plan9-386](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-plan9-386) | 0.2.2 | Plan 9 x86_64 32-bit | 0cbf38e62aa9ab584bd331ba56ad95549f7d917a |
| [simple-httpd-plan9-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-plan9-amd64) | 0.2.2 | Plan 9 x86_64 64-bit | db6c9252e23db34138aa78e154045bd0448bb230 |
| [simple-httpd-plan9-arm](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-plan9-arm) | 0.2.2 | Plan 9 ARM 32-bit | 1c7d9c3fccc26e0df016803efe4440dab71d4bf7 |
| [simple-httpd-solaris-amd64](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-solaris-amd64) | 0.2.2 | Solaris x86_64 64-bit | e1ff70e1b3a3e979aac1ac9916bb406e10000edf |
| [simple-httpd-windows-386.exe](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-windows-386.exe) | 0.2.2 | Windows x86_64 32-bit | a5283d46274018823283a1d12f01b178234be778 |
| [simple-httpd-windows-amd64.exe](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-windows-amd64.exe) | 0.2.2 | Windows x86_64 64-bit | afdd06ee285126fa87745053b8364bb6cf5c9477 |
| [simple-httpd-windows-arm.exe](https://github.com/growtopiajaw/simple-httpd/releases/download/v0.2.2/simple-httpd-windows-arm.exe) | 0.2.2 | Windows ARM 32-bit | 5cc9681cc85543affba8ca3c076a85a8af096261 |

## Contributions

* File Issue with details of the problem, feature request, etc.
* Submit a pull request and include details of what problem or feature the code is solving or implementing.
