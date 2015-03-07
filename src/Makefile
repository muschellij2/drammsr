version=1.4.1
all:
	mkdir -p ./"dramms-${version}-source";
	cp -r ./dramms-build/* ./"dramms-${version}-source";
	cd ./"dramms-${version}-source"/build; \
	cmake . -DCMAKE_INSTALL_PREFIX=../../../dramms; \
	make;
	rm -rf ./"dramms-${version}-source";

clean:
	rm -rf ./"dramms-${version}-source";
