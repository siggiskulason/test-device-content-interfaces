# Device content interfaces in EdgeX device snaps

## Build and install the device snap to test

``` 
sudo snap install edgex-device-rfid-llrp --channel=[the channel you are using]
```

## View the logs for the device snap

```
snap logs -f edgex-device-rfid-llrp.device-rfid-llrp-go
```

## Build and install the test snap

```
snapcraft --use-lxd
sudo snap remove test-device-content-interfaces
sudo snap install --dangerous test-device-content-interfaces_0.1_amd64.snap
sudo snap connect test-device-content-interfaces:device-profiles-plug edgex-device-rfid-llrp:device-profiles-slot
sudo test-device-content-interfaces.add-device-profile
```

## Verify that the profile has been added

```
sudo snap restart edgex-device-rfid-llrp
curl http://localhost:48081/api/v1/deviceprofile | grep Test.LLRP.Profile
```

