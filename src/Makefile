version=1.5.2
all:
	mkdir -p ./"dramms-${version}-source";
	cp -r ./dramms-build/* ./"dramms-${version}-source";
	cd ./"dramms-${version}-source"/build; \
	cmake . -DCMAKE_INSTALL_PREFIX=../../../inst/dramms \
	-DCMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION:BOOL=OFF \
	-DCMAKE_BUILD_TYPE=Release \
	; \
	make;
	rm -rf ./"dramms-${version}-source";

clean:
	rm -rf ./"dramms-${version}-source";
	rm -rf ../inst/dramms/*;
