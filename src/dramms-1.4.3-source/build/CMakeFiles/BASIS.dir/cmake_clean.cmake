FILE(REMOVE_RECURSE
  "bundle"
  "CMakeFiles/BASIS"
  "CMakeFiles/BASIS-complete"
  "bundle/src/BASIS-stamp/BASIS-install"
  "bundle/src/BASIS-stamp/BASIS-mkdir"
  "bundle/src/BASIS-stamp/BASIS-download"
  "bundle/src/BASIS-stamp/BASIS-update"
  "bundle/src/BASIS-stamp/BASIS-patch"
  "bundle/src/BASIS-stamp/BASIS-configure"
  "bundle/src/BASIS-stamp/BASIS-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/BASIS.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
