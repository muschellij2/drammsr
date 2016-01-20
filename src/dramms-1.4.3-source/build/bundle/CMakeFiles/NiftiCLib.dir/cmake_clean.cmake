FILE(REMOVE_RECURSE
  "CMakeFiles/NiftiCLib"
  "CMakeFiles/NiftiCLib-complete"
  "src/NiftiCLib-stamp/NiftiCLib-install"
  "src/NiftiCLib-stamp/NiftiCLib-mkdir"
  "src/NiftiCLib-stamp/NiftiCLib-download"
  "src/NiftiCLib-stamp/NiftiCLib-update"
  "src/NiftiCLib-stamp/NiftiCLib-patch"
  "src/NiftiCLib-stamp/NiftiCLib-configure"
  "src/NiftiCLib-stamp/NiftiCLib-build"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/NiftiCLib.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
