FILE(REMOVE_RECURSE
  "bundle"
  "CMakeFiles/bundle"
  "CMakeFiles/bundle-complete"
  "bundle/tmp/bundle-install"
  "bundle/tmp/bundle-mkdir"
  "bundle/tmp/bundle-download"
  "bundle/tmp/bundle-update"
  "bundle/tmp/bundle-patch"
  "bundle/tmp/bundle-configure"
  "bundle/tmp/bundle-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/bundle.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
