DEVICE=$1
KEYS=keys
. build/envsetup.sh
breakfast "$DEVICE" user
make target-files-package otatools -j12
# Sign the build
croot
sign_target_files_apks -o -d $KEYS \
    --extra_apks AdServicesApk.apk=$KEYS/releasekey \
    --extra_apks FederatedCompute.apk=$KEYS/releasekey \
    --extra_apks HalfSheetUX.apk=$KEYS/releasekey \
    --extra_apks HealthConnectBackupRestore.apk=$KEYS/releasekey \
    --extra_apks HealthConnectController.apk=$KEYS/releasekey \
    --extra_apks OsuLogin.apk=$KEYS/releasekey \
    --extra_apks SafetyCenterResources.apk=$KEYS/releasekey \
    --extra_apks ServiceConnectivityResources.apk=$KEYS/releasekey \
    --extra_apks ServiceUwbResources.apk=$KEYS/releasekey \
    --extra_apks ServiceWifiResources.apk=$KEYS/releasekey \
    --extra_apks WifiDialog.apk=$KEYS/releasekey \
    --extra_apks com.android.adbd.apex=$KEYS/com.android.adbd \
    --extra_apks com.android.adservices.apex=$KEYS/com.android.adservices \
    --extra_apks com.android.adservices.api.apex=$KEYS/com.android.adservices.api \
    --extra_apks com.android.appsearch.apex=$KEYS/com.android.appsearch \
    --extra_apks com.android.art.apex=$KEYS/com.android.art \
    --extra_apks com.android.bluetooth.apex=$KEYS/com.android.bluetooth \
    --extra_apks com.android.btservices.apex=$KEYS/com.android.btservices \
    --extra_apks com.android.cellbroadcast.apex=$KEYS/com.android.cellbroadcast \
    --extra_apks com.android.compos.apex=$KEYS/com.android.compos \
    --extra_apks com.android.configinfrastructure.apex=$KEYS/com.android.configinfrastructure \
    --extra_apks com.android.connectivity.resources.apex=$KEYS/com.android.connectivity.resources \
    --extra_apks com.android.conscrypt.apex=$KEYS/com.android.conscrypt \
    --extra_apks com.android.devicelock.apex=$KEYS/com.android.devicelock \
    --extra_apks com.android.extservices.apex=$KEYS/com.android.extservices \
    --extra_apks com.android.graphics.pdf.apex=$KEYS/com.android.graphics.pdf \
    --extra_apks com.android.hardware.biometrics.face.virtual.apex=$KEYS/com.android.hardware.biometrics.face.virtual \
    --extra_apks com.android.hardware.biometrics.fingerprint.virtual.apex=$KEYS/com.android.hardware.biometrics.fingerprint.virtual \
    --extra_apks com.android.hardware.boot.apex=$KEYS/com.android.hardware.boot \
    --extra_apks com.android.hardware.cas.apex=$KEYS/com.android.hardware.cas \
    --extra_apks com.android.hardware.wifi.apex=$KEYS/com.android.hardware.wifi \
    --extra_apks com.android.healthfitness.apex=$KEYS/com.android.healthfitness \
    --extra_apks com.android.hotspot2.osulogin.apex=$KEYS/com.android.hotspot2.osulogin \
    --extra_apks com.android.i18n.apex=$KEYS/com.android.i18n \
    --extra_apks com.android.ipsec.apex=$KEYS/com.android.ipsec \
    --extra_apks com.android.media.apex=$KEYS/com.android.media \
    --extra_apks com.android.media.swcodec.apex=$KEYS/com.android.media.swcodec \
    --extra_apks com.android.mediaprovider.apex=$KEYS/com.android.mediaprovider \
    --extra_apks com.android.nearby.halfsheet.apex=$KEYS/com.android.nearby.halfsheet \
    --extra_apks com.android.networkstack.tethering.apex=$KEYS/com.android.networkstack.tethering \
    --extra_apks com.android.neuralnetworks.apex=$KEYS/com.android.neuralnetworks \
    --extra_apks com.android.ondevicepersonalization.apex=$KEYS/com.android.ondevicepersonalization \
    --extra_apks com.android.os.statsd.apex=$KEYS/com.android.os.statsd \
    --extra_apks com.android.permission.apex=$KEYS/com.android.permission \
    --extra_apks com.android.resolv.apex=$KEYS/com.android.resolv \
    --extra_apks com.android.rkpd.apex=$KEYS/com.android.rkpd \
    --extra_apks com.android.runtime.apex=$KEYS/com.android.runtime \
    --extra_apks com.android.safetycenter.resources.apex=$KEYS/com.android.safetycenter.resources \
    --extra_apks com.android.scheduling.apex=$KEYS/com.android.scheduling \
    --extra_apks com.android.sdkext.apex=$KEYS/com.android.sdkext \
    --extra_apks com.android.support.apexer.apex=$KEYS/com.android.support.apexer \
    --extra_apks com.android.telephony.apex=$KEYS/com.android.telephony \
    --extra_apks com.android.telephonymodules.apex=$KEYS/com.android.telephonymodules \
    --extra_apks com.android.tethering.apex=$KEYS/com.android.tethering \
    --extra_apks com.android.tzdata.apex=$KEYS/com.android.tzdata \
    --extra_apks com.android.uwb.apex=$KEYS/com.android.uwb \
    --extra_apks com.android.uwb.resources.apex=$KEYS/com.android.uwb.resources \
    --extra_apks com.android.virt.apex=$KEYS/com.android.virt \
    --extra_apks com.android.vndk.current.apex=$KEYS/com.android.vndk.current \
    --extra_apks com.android.vndk.current.on_vendor.apex=$KEYS/com.android.vndk.current.on_vendor \
    --extra_apks com.android.wifi.apex=$KEYS/com.android.wifi \
    --extra_apks com.android.wifi.dialog.apex=$KEYS/com.android.wifi.dialog \
    --extra_apks com.android.wifi.resources.apex=$KEYS/com.android.wifi.resources \
    --extra_apks com.google.pixel.camera.hal.apex=$KEYS/com.google.pixel.camera.hal \
    --extra_apks com.google.pixel.vibrator.hal.apex=$KEYS/com.google.pixel.vibrator.hal \
    --extra_apks com.qorvo.uwb.apex=$KEYS/com.qorvo.uwb \
    --extra_apex_payload_key com.android.adbd.apex=$KEYS/com.android.adbd.pem \
    --extra_apex_payload_key com.android.adservices.apex=$KEYS/com.android.adservices.pem \
    --extra_apex_payload_key com.android.adservices.api.apex=$KEYS/com.android.adservices.api.pem \
    --extra_apex_payload_key com.android.appsearch.apex=$KEYS/com.android.appsearch.pem \
    --extra_apex_payload_key com.android.art.apex=$KEYS/com.android.art.pem \
    --extra_apex_payload_key com.android.bluetooth.apex=$KEYS/com.android.bluetooth.pem \
    --extra_apex_payload_key com.android.btservices.apex=$KEYS/com.android.btservices.pem \
    --extra_apex_payload_key com.android.cellbroadcast.apex=$KEYS/com.android.cellbroadcast.pem \
    --extra_apex_payload_key com.android.compos.apex=$KEYS/com.android.compos.pem \
    --extra_apex_payload_key com.android.configinfrastructure.apex=$KEYS/com.android.configinfrastructure.pem \
    --extra_apex_payload_key com.android.connectivity.resources.apex=$KEYS/com.android.connectivity.resources.pem \
    --extra_apex_payload_key com.android.conscrypt.apex=$KEYS/com.android.conscrypt.pem \
    --extra_apex_payload_key com.android.devicelock.apex=$KEYS/com.android.devicelock.pem \
    --extra_apex_payload_key com.android.extservices.apex=$KEYS/com.android.extservices.pem \
    --extra_apex_payload_key com.android.graphics.pdf.apex=$KEYS/com.android.graphics.pdf.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.face.virtual.apex=$KEYS/com.android.hardware.biometrics.face.virtual.pem \
    --extra_apex_payload_key com.android.hardware.biometrics.fingerprint.virtual.apex=$KEYS/com.android.hardware.biometrics.fingerprint.virtual.pem \
    --extra_apex_payload_key com.android.hardware.boot.apex=$KEYS/com.android.hardware.boot.pem \
    --extra_apex_payload_key com.android.hardware.cas.apex=$KEYS/com.android.hardware.cas.pem \
    --extra_apex_payload_key com.android.hardware.wifi.apex=$KEYS/com.android.hardware.wifi.pem \
    --extra_apex_payload_key com.android.healthfitness.apex=$KEYS/com.android.healthfitness.pem \
    --extra_apex_payload_key com.android.hotspot2.osulogin.apex=$KEYS/com.android.hotspot2.osulogin.pem \
    --extra_apex_payload_key com.android.i18n.apex=$KEYS/com.android.i18n.pem \
    --extra_apex_payload_key com.android.ipsec.apex=$KEYS/com.android.ipsec.pem \
    --extra_apex_payload_key com.android.media.apex=$KEYS/com.android.media.pem \
    --extra_apex_payload_key com.android.media.swcodec.apex=$KEYS/com.android.media.swcodec.pem \
    --extra_apex_payload_key com.android.mediaprovider.apex=$KEYS/com.android.mediaprovider.pem \
    --extra_apex_payload_key com.android.nearby.halfsheet.apex=$KEYS/com.android.nearby.halfsheet.pem \
    --extra_apex_payload_key com.android.networkstack.tethering.apex=$KEYS/com.android.networkstack.tethering.pem \
    --extra_apex_payload_key com.android.neuralnetworks.apex=$KEYS/com.android.neuralnetworks.pem \
    --extra_apex_payload_key com.android.ondevicepersonalization.apex=$KEYS/com.android.ondevicepersonalization.pem \
    --extra_apex_payload_key com.android.os.statsd.apex=$KEYS/com.android.os.statsd.pem \
    --extra_apex_payload_key com.android.permission.apex=$KEYS/com.android.permission.pem \
    --extra_apex_payload_key com.android.resolv.apex=$KEYS/com.android.resolv.pem \
    --extra_apex_payload_key com.android.rkpd.apex=$KEYS/com.android.rkpd.pem \
    --extra_apex_payload_key com.android.runtime.apex=$KEYS/com.android.runtime.pem \
    --extra_apex_payload_key com.android.safetycenter.resources.apex=$KEYS/com.android.safetycenter.resources.pem \
    --extra_apex_payload_key com.android.scheduling.apex=$KEYS/com.android.scheduling.pem \
    --extra_apex_payload_key com.android.sdkext.apex=$KEYS/com.android.sdkext.pem \
    --extra_apex_payload_key com.android.support.apexer.apex=$KEYS/com.android.support.apexer.pem \
    --extra_apex_payload_key com.android.telephony.apex=$KEYS/com.android.telephony.pem \
    --extra_apex_payload_key com.android.telephonymodules.apex=$KEYS/com.android.telephonymodules.pem \
    --extra_apex_payload_key com.android.tethering.apex=$KEYS/com.android.tethering.pem \
    --extra_apex_payload_key com.android.tzdata.apex=$KEYS/com.android.tzdata.pem \
    --extra_apex_payload_key com.android.uwb.apex=$KEYS/com.android.uwb.pem \
    --extra_apex_payload_key com.android.uwb.resources.apex=$KEYS/com.android.uwb.resources.pem \
    --extra_apex_payload_key com.android.virt.apex=$KEYS/com.android.virt.pem \
    --extra_apex_payload_key com.android.vndk.current.apex=$KEYS/com.android.vndk.current.pem \
    --extra_apex_payload_key com.android.vndk.current.on_vendor.apex=$KEYS/com.android.vndk.current.on_vendor.pem \
    --extra_apex_payload_key com.android.wifi.apex=$KEYS/com.android.wifi.pem \
    --extra_apex_payload_key com.android.wifi.dialog.apex=$KEYS/com.android.wifi.dialog.pem \
    --extra_apex_payload_key com.android.wifi.resources.apex=$KEYS/com.android.wifi.resources.pem \
    --extra_apex_payload_key com.google.pixel.camera.hal.apex=$KEYS/com.google.pixel.camera.hal.pem \
    --extra_apex_payload_key com.google.pixel.vibrator.hal.apex=$KEYS/com.google.pixel.vibrator.hal.pem \
    --extra_apex_payload_key com.qorvo.uwb.apex=$KEYS/com.qorvo.uwb.pem \
    $OUT/obj/PACKAGING/target_files_intermediates/*-target_files.zip \
    out/signed-target_files.zip

SECURITY_PATCH=$(cat "$OUT/system/build.prop" | grep ro.build.version.security_patch=)
SECURITY_PATCH="${SECURITY_PATCH#*=}"
DATETIME=$(cat "$OUT/system/build.prop" | grep ro.build.date.utc=)
DATETIME="${DATETIME#*=}"
BUILD_ID=$(cat "$OUT/system/build.prop" | grep ro.build.id=)
BUILD_ID="${BUILD_ID#*=}"
DEVICE_NAME=$(grep -rh "def_device_name_simple" "$COMMON_DEVICE_BASE" | sed -n 's/.*<string name="def_device_name_simple">\([^<]*\)<\/string>.*/\1/p' | awk 'BEGIN { first=1 } { if (!first) { printf(" / ") } printf("%s", $0); first=0 }')
BUILD_DATE=$(date -u +%Y%m%d)
BUILD_DATE_PRETTY=$(date -u +%Y-%m-%d)
PRODUCT_VERSION_MAJOR=$(grep '^PRODUCT_VERSION_MAJOR' vendor/lineage/config/version.mk | awk -F ' = ' '{print $2}')
PRODUCT_VERSION_MINOR=$(grep '^PRODUCT_VERSION_MINOR' vendor/lineage/config/version.mk | awk -F ' = ' '{print $2}')
VERSION="$PRODUCT_VERSION_MAJOR.$PRODUCT_VERSION_MINOR"
FILENAME_WITHOUT_EXTENSION="lineage-$VERSION-$BUILD_DATE-UNOFFICIAL-$DEVICE"
OTA_FILE_NAME="$FILENAME_WITHOUT_EXTENSION.zip"

ota_from_target_files -k $KEYS/releasekey \
    --block \
    --backup=true \
    out/signed-target_files.zip \
    "out/$OTA_FILE_NAME"

# Copy it to the builds directory
BUILDS_DIR="/home/piyush/Downloads/lineage/"
cd out
cp ${OTA_FILE_NAME} ${BUILDS_DIR}
partitions="boot dtbo recovery vendor_boot"
for partition in ${partitions}; do
    unzip -p signed-target_files.zip IMAGES/"${partition}".img > "${BUILDS_DIR}/${partition}.img";
done
