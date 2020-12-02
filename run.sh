snap remove test-device-content-interfaces
snapcraft clean --destructive-mode;snapcraft prime --destructive-mode
snap try prime
snap connect test-device-content-interfaces:device-profiles-plug edgex-device-camera:device-profiles-slot
sudo test-device-content-interfaces.add-device-profile

