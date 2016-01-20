FILE(REMOVE_RECURSE
  "CMakeFiles/DRAMMS"
  "CMakeFiles/DRAMMS-complete"
  "src/DRAMMS-stamp/DRAMMS-install"
  "src/DRAMMS-stamp/DRAMMS-mkdir"
  "src/DRAMMS-stamp/DRAMMS-download"
  "src/DRAMMS-stamp/DRAMMS-update"
  "src/DRAMMS-stamp/DRAMMS-patch"
  "src/DRAMMS-stamp/DRAMMS-configure"
  "src/DRAMMS-stamp/DRAMMS-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/DRAMMS.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
