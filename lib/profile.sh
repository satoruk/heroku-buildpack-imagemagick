# ImageMagick

base_dir="/app/.heroku/imagemagick"

export PATH="${PATH}:${base_dir}/bin"

pkg_config_path="${base_dir}/lib/pkgconfig"
if [ -n "${PKG_CONFIG_PATH}" ]; then
  export PKG_CONFIG_PATH="${PKG_CONFIG_PATH}:${pkg_config_path}"
else
  export PKG_CONFIG_PATH="${pkg_config_path}"
fi

