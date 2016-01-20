FILE(REMOVE_RECURSE
  "CMakeFiles/FastPD"
  "CMakeFiles/FastPD-complete"
  "src/FastPD-stamp/FastPD-install"
  "src/FastPD-stamp/FastPD-mkdir"
  "src/FastPD-stamp/FastPD-download"
  "src/FastPD-stamp/FastPD-update"
  "src/FastPD-stamp/FastPD-patch"
  "src/FastPD-stamp/FastPD-configure"
  "src/FastPD-stamp/FastPD-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/FastPD.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
