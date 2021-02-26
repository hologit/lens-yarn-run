pkg_name=lens-yarn-run
pkg_origin=holo
pkg_version="1.0"
pkg_maintainer="Chris Alfano <chris@jarv.us>"
pkg_license=("Apache-2.0")

pkg_deps=(
  core/bash
  core/yarn
  jarvus/hologit
)

pkg_bin_dirs=(bin)


do_build() {
  return 0
}

do_build() {

  pushd "${CACHE_PATH}" > /dev/null
    build_line "Preparing bin scripts"
    mkdir -v "bin"
    cp -v "${PLAN_CONTEXT}/bin"/* "./bin/"
    fix_interpreter "bin/*" core/bash bin/bash
  popd > /dev/null
}

do_install() {
  cp -r "${CACHE_PATH}"/* "${pkg_prefix}/"
}

do_strip() {
  return 0
}
