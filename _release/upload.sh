#!/usr/local/bin/bash

# Originally written by Petter Rasmussen (github.com/prasmussen)
# Source: https://github.com/prasmussen/gdrive/raw/master/_release/upload.sh
# Modified to suit simple-httpd's release flow

#githubrelease --github-token $gjaw_token --progress ref GrowtopiaJaw/simple-httpd list | awk '/\/v/'
#echo
#echo -e "These are all the releases that have been published to GitHub"
#echo -e "Please specify your next release tag"
#read -p ": " simple_httpd_tag
#githubrelease --github-token $gjaw_token --progress release GrowtopiaJaw/simple-httpd debug v"$(latest_version)" | awk '/body/ {print $2}' | sed "s/'//g"
#echo -e "This is the latest ordinal release that has been published to GitHub"
#echo -e "Please specify your next ordinal release"
#read -p ": " ordinal_release

git_root=$(git rev-parse --show-toplevel)

function latest_version() {
    cat $git_root/README.md | awk '/simple-httpd-aix-ppc64/ {print $4}'
}

function description() {
    cat <<EOF
$ordinal_release release
- All possible binaries are built using [xgo](https://github.com/karalabe/xgo) and golang’s built in cross compile support although, they are not tested, YMMV
- So far, these are the only binaries that I’ve personally tested and is known to work
  * simple-httpd-linux-amd64 (Ubuntu 18.04.5 LTS, Debian 11.0 Unstable)
  * simple-httpd-ios-5.0-arm64 (Apple iPhone 6, Apple iPhone 7)
  * simple-httpd-darwin-amd64 (macOS Catalina 10.15.7, macOS Big Sur 11.6)
  * simple-httpd-windows-amd64.exe (Windows 7 Ultimate, Windows 10 Pro)
  * simple-httpd-android-16-arm (Android 5.1.1, Android 6.0.1, Android 7.1.1, Android 8.1.0)
EOF
}

githubrelease --github-token $gjaw_token --progress release GrowtopiaJaw/simple-httpd create --name $simple_httpd_tag --body "$(description)" --publish $simple_httpd_tag

# Grab application version
VERSION=$(./simple-httpd-linux-amd64 version | awk 'NR==1 {print $2}')

declare -a filenames
filenames=(
    "simple-httpd-aix-ppc64"
    "simple-httpd-android-16-386"
    "simple-httpd-android-16-arm"
    "simple-httpd-darwin-10.6-386"
    "simple-httpd-darwin-amd64"
    "simple-httpd-dragonfly-amd64"
    "simple-httpd-freebsd-386"
    "simple-httpd-freebsd-amd64"
    "simple-httpd-freebsd-arm64"
    "simple-httpd-freebsd-armv6"
    "simple-httpd-freebsd-armv7"
    "simple-httpd-illumos-amd64"
    "simple-httpd-ios-5.0-arm64"
    "simple-httpd-ios-5.0-armv7"
    "simple-httpd-js-wasm"
    "simple-httpd-linux-386"
    "simple-httpd-linux-amd64"
    "simple-httpd-linux-arm64"
    "simple-httpd-linux-armv5"
    "simple-httpd-linux-armv6"
    "simple-httpd-linux-armv7"
    "simple-httpd-linux-mips"
    "simple-httpd-linux-mipsle"
    "simple-httpd-linux-mips64"
    "simple-httpd-linux-mips64le"
    "simple-httpd-linux-ppc64"
    "simple-httpd-linux-ppc64le"
    "simple-httpd-linux-riscv64"
    "simple-httpd-linux-s390x"
    "simple-httpd-netbsd-386"
    "simple-httpd-netbsd-amd64"
    "simple-httpd-netbsd-arm64"
    "simple-httpd-netbsd-armv6"
    "simple-httpd-netbsd-armv7"
    "simple-httpd-openbsd-386"
    "simple-httpd-openbsd-amd64"
    "simple-httpd-openbsd-arm64"
    "simple-httpd-openbsd-armv6"
    "simple-httpd-openbsd-armv7"
    "simple-httpd-plan9-386"
    "simple-httpd-plan9-amd64"
    "simple-httpd-plan9-arm"
    "simple-httpd-solaris-amd64"
    "simple-httpd-windows-386.exe"
    "simple-httpd-windows-amd64.exe"
    "simple-httpd-windows-arm.exe"
)

# Note: associative array requires bash 4+
declare -A descriptions
descriptions=(
    ["simple-httpd-aix-ppc64"]="AIX PowerPC 64-bit"
    ["simple-httpd-android-16-386"]="Android x86_64 32-bit"
    ["simple-httpd-android-16-arm"]="Android ARM 32-bit"
    ["simple-httpd-darwin-10.6-386"]="macOS x86_64 32-bit"
    ["simple-httpd-darwin-amd64"]="macOS x86_64 64-bit"
    ["simple-httpd-dragonfly-amd64"]="DragonFly x86_64 64-bit"
    ["simple-httpd-freebsd-386"]="FreeBSD x86_64 32-bit"
    ["simple-httpd-freebsd-amd64"]="FreeBSD x86_64 64-bit"
    ["simple-httpd-freebsd-arm64"]="FreeBSD ARM 64-bit"
    ["simple-httpd-freebsd-armv6"]="FreeBSD ARM 32-bit armv6"
    ["simple-httpd-freebsd-armv7"]="FreeBSD ARM 32-bit armv7"
    ["simple-httpd-illumos-amd64"]="illumos x86_64 64-bit"
    ["simple-httpd-ios-5.0-arm64"]="iOS ARM 64-bit"
    ["simple-httpd-ios-5.0-armv7"]="iOS ARM 32-bit armv7"
    ["simple-httpd-js-wasm"]="JavaScript WebAssembly"
    ["simple-httpd-linux-386"]="Linux x86_64 32-bit"
    ["simple-httpd-linux-amd64"]="Linux x86_64 64-bit"
    ["simple-httpd-linux-arm64"]="Linux ARM 64-bit"
    ["simple-httpd-linux-armv5"]="Linux ARM 32-bit armv5"
    ["simple-httpd-linux-armv6"]="Linux ARM 32-bit armv6"
    ["simple-httpd-linux-armv7"]="Linux ARM 32-bit armv7"
    ["simple-httpd-linux-mips"]="Linux MIPS 32-bit"
    ["simple-httpd-linux-mipsle"]="Linux MIPS 32-bit le"
    ["simple-httpd-linux-mips64"]="Linux MIPS 64-bit"
    ["simple-httpd-linux-mips64le"]="Linux MIPS 64-bit le"
    ["simple-httpd-linux-ppc64"]="Linux PowerPC 64-bit"
    ["simple-httpd-linux-ppc64le"]="Linux PowerPC 64-bit le"
    ["simple-httpd-linux-riscv64"]="Linux RISC V 64-bit"
    ["simple-httpd-linux-s390x"]="Linux IBM S/390 64-bit"
    ["simple-httpd-netbsd-386"]="NetBSD x86_64 32-bit"
    ["simple-httpd-netbsd-amd64"]="NetBSD x86_64 64-bit"
    ["simple-httpd-netbsd-arm64"]="NetBSD ARM 64-bit"
    ["simple-httpd-netbsd-armv6"]="NetBSD ARM 32-bit armv6"
    ["simple-httpd-netbsd-armv7"]="NetBSD ARM 32-bit armv7"
    ["simple-httpd-openbsd-386"]="OpenBSD x86_64 32-bit"
    ["simple-httpd-openbsd-amd64"]="OpenBSD x86_64 64-bit"
    ["simple-httpd-openbsd-arm64"]="OpenBSD ARM 64-bit"
    ["simple-httpd-openbsd-armv6"]="OpenBSD ARM 32-bit armv6"
    ["simple-httpd-openbsd-armv7"]="OpenBSD ARM 32-bit armv7"
    ["simple-httpd-plan9-386"]="Plan 9 x86_64 32-bit"
    ["simple-httpd-plan9-amd64"]="Plan 9 x86_64 64-bit"
    ["simple-httpd-plan9-arm"]="Plan 9 ARM 32-bit"
    ["simple-httpd-solaris-amd64"]="Solaris x86_64 64-bit"
    ["simple-httpd-windows-386.exe"]="Windows x86_64 32-bit"
    ["simple-httpd-windows-amd64.exe"]="Windows x86_64 64-bit"
    ["simple-httpd-windows-arm.exe"]="Windows ARM 32-bit"
)

# Markdown helpers
HEADER='### Downloads
 Check our [releases](https://github.com/GrowtopiaJaw/simple-httpd/releases) section.

| Filename               | Version | Description        | SHA1SUM                                   |
|:-----------------------|:--------|:-------------------|:-----------------------------------------|'

ROW_TEMPLATE="| [{{name}}]({{url}}) | $VERSION | {{description}} | {{sha}} |"


# Print header
echo "$HEADER"

for name in ${filenames[@]}; do
    bin_path="$name"

    # Upload file
    url=$(githubrelease --github-token $gjaw_token --progress asset GrowtopiaJaw/simple-httpd upload $simple_httpd_tag $bin_path | awk '/https/ {print $2}')

    # Shasum
    sha="$(shasum -b $bin_path | awk '{print $1}')"

    # Filename
    name="$(basename $bin_path)"

    # Render markdown row
    row=${ROW_TEMPLATE//"{{name}}"/$name}
    row=${row//"{{url}}"/$url}
    row=${row//"{{description}}"/${descriptions[$name]}}
    row=${row//"{{sha}}"/$sha}

    # Print row
    echo "$row"
done
