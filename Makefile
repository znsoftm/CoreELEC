BUILD_DIRS=build.*

all: release

system:
	./scripts/image_st

release:
	./scripts/image_st release

image:
	./scripts/image_st mkimage

noobs:
	./scripts/image_st noobs

amlpkg:
	./scripts/image_st amlpkg

# legacy sequential build targets
system-st:
	./scripts/image_st

release-st:
	./scripts/image_st release

image-st:
	./scripts/image_st mkimage

noobs-st:
	./scripts/image_st noobs

amlpkg-st:
	./scripts/image_st amlpkg

system_mt:
	./scripts/image_mt

release_mt:
	./scripts/image_mt release

image_mt:
	./scripts/image_mt mkimage

noobs_mt:
	./scripts/image_mt noobs

amlpkg_mt:
	./scripts/image_mt amlpkg

addons_mt:
	./scripts/create_addon_mt all

clean:
	rm -rf $(BUILD_DIRS)/* $(BUILD_DIRS)/.stamps

distclean:
	rm -rf ./.ccache ./$(BUILD_DIRS)

src-pkg:
	tar cvJf sources.tar.xz sources .stamps
