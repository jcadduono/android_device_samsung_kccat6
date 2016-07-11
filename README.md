## TWRP device tree for Galaxy S5 Plus (International)

Add to `.repo/local_manifests/kccat6.xml`:

```xml
<?xml version="1.0" encoding="UTF-8"?>
<manifest>
	<project path="device/samsung/kccat6" name="android_device_samsung_kccat6" remote="TeamWin" revision="android-6.0" />
</manifest>
```

Then run `repo sync` to check it out.

To build:

```sh
. build/envsetup.sh
lunch omni_kccat6-eng
make -j5 recoveryimage
```

Kernel sources are available at: https://github.com/jcadduono/nethunter_kernel_kccat6/tree/twrp-6.0

