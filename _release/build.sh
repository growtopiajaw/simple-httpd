#!/usr/bin/env bash

# Originally written by Marko Mudrinić (DigitalOcean)
# Source: https://www.digitalocean.com/community/tutorials/how-to-build-go-executables-for-multiple-platforms-on-ubuntu-16-04
# Modified to suit simple-httpd’s release flow

package="github.com/GrowtopiaJaw/simple-httpd"
package_split=(${package//\// })
package_name=${package_split[-1]}

go get -u $package

platforms=("aix/ppc64" "darwin/amd64" "dragonfly/amd64" "freebsd/386" "freebsd/amd64" "freebsd/armv6" "freebsd/armv7" "freebsd/arm64" "illumos/amd64" "js/wasm" "linux/386" "linux/amd64" "linux/armv5" "linux/armv6" "linux/armv7" "linux/arm64" "linux/ppc64" "linux/ppc64le" "linux/mips64" "linux/mips64le" "linux/riscv64" "linux/s390x" "netbsd/386" "netbsd/amd64" "netbsd/armv6" "netbsd/armv7" "netbsd/arm64" "openbsd/386" "openbsd/amd64" "openbsd/armv6" "openbsd/armv7" "openbsd/arm64" "plan9/386" "plan9/amd64" "plan9/arm" "solaris/amd64" "windows/386" "windows/amd64" "windows/arm" "linux/mips" "linux/mipsle")

# Unsupported architectures
# "darwin/386"

for platform in "${platforms[@]}"
do
    platform_split=(${platform//\// })
    GOOS=${platform_split[0]}
    GOARCH=${platform_split[1]}
    output_name=$package_name'-'$GOOS'-'$GOARCH
    if [ $GOOS = "windows" ]; then
        output_name+='.exe'
    fi

    if [ $GOARCH == "armv5" ]; then
        export GOARM=5
        GOARCH="arm"
    elif [ $GOARCH == "armv6" ]; then
        export GOARM=6
        GOARCH="arm"
    elif [ $GOARCH == "armv7" ]; then
        export GOARM=7
        GOARCH="arm"
    else
        unset GOARM
    fi

    export GOOS=$GOOS
    export GOARCH=$GOARCH

    go build -o $output_name $package
    if [ $? -ne 0 ]; then
        echo 'An error has occurred! Aborting the script execution...'
        exit 1
    fi
done

sudo $HOME/go/bin/xgo --targets="android/*,darwin/386,ios/*" $package
sudo rm -rf $package_name-android-*-aar $package_name-ios-*-framework
