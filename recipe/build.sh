#!/usr/bin/env bash

set -o xtrace -o nounset -o pipefail -o errexit

cd csvtk
go build -buildmode=pie -trimpath -o=${PREFIX}/bin/csvtk -ldflags="-s -w -X main.Version=${PKG_VERSION}"
go-licenses save . --save_path=license-files --ignore github.com/ajstarks/svgo --ignore github.com/golang/freetype/raster
