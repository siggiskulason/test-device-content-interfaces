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
TEST_DEVICE=edgex-device-rest
snapcraft --use-lxd
sudo snap remove test-device-content-interfaces
sudo snap install --dangerous test-device-content-interfaces*.snap
sudo snap connect test-device-content-interfaces:device-config $TEST_DEVICE:device-config
sudo test-device-content-interfaces.add-device-profile

```

## Verify that the profile has been added

```
sudo snap restart edgex-device-rest-go
curl http://localhost:48081/api/v1/deviceprofile | jq
```

