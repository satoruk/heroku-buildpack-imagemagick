
indent() {
  sed 's/^/       /'
}

arrow() {
  sed 's/^/-----> /'
}

function mktmpdir() {
  local solt dir
  solt="$1"
  dir=$(mktemp -t "${solt}-XXXX")
  rm -rf $dir
  mkdir -p $dir
  echo $dir
}

function tgz() {
  local file location
  file="$1"
  location=$(mktmpdir ${file##*/})
  echo "${location}"
  cat "${file}" | tar xzf - -C "${location}"
}

function tgz_download() {
  local remote location
  remote="$1"
  location=$(mktmpdir ${remote##*/})
  echo "${location}"
  curl "${remote}" -s -o - | tar xzf - -C "${location}"
}

