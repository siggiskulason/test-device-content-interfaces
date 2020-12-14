ls $SNAP_DATA/device-profiles

echo "Copying new profile file"
cp $SNAP/*.profile.yaml $SNAP_DATA/device-profiles/
ls $SNAP_DATA/device-profiles