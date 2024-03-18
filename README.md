
# BCM-WIFI-Sonoma

## Configuration(card i test)
| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| Wifi + Bluetooth    | DW1820a BCM4350              |

## Config & Kexts :

<details>  

<summary> Kexts：</summary>

- `IOSkywalkFamily.kext`[download:https://github.com/dortania/OpenCore-Legacy-Patcher/blob/main/payloads/Kexts/Wifi/IOSkywalkFamily-v1.1.0.zip]
- `IO80211FamilyLegacy.kext`[download:https://github.com/dortania/OpenCore-Legacy-Patcher/blob/main/payloads/Kexts/Wifi/IO80211FamilyLegacy-v1.0.0.zip]
- `AirPortBrcmNIC.kext`[its plugin inside IO80211FamilyLegacy.kext]
- `AirportBrcmFixup.kext`[download:https://github.com/acidanthera/AirportBrcmFixup/releases]
- 'BlueToolFixup.kext'[download:https://github.com/acidanthera/BrcmPatchRAM/releases]
- 'BrcmFirmwareData.kext'[download:https://github.com/acidanthera/BrcmPatchRAM/releases]
- 'BrcmPatchRAM3.kext'[download:https://github.com/acidanthera/BrcmPatchRAM/releases]
- 'AMFIPass.kext'[download:https://github.com/dortania/OpenCore-Legacy-Patcher/blob/main/payloads/Kexts/Acidanthera/AMFIPass-v1.4.0-RELEASE.zip
</details> 
<details>
<summary> Config：</summary>

![Screenshot 2024-03-18 at 18 42 31](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/e2cefd5b-4edf-411a-96fc-b675da63f097)

![Screenshot 2024-03-18 at 18 42 48](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/b8e7dc55-26fa-4305-8f0b-664566578be6)

![Screenshot 2024-03-18 at 18 43 06](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/7957db8d-7135-43c5-8900-6413ff9dd668)

```
    <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>AMFIPass.kext</string>
                    <key>Comment</key>
                    <string>V1.4.0</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/AMFIPass</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string></string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>IOSkywalkFamily.kext</string>
                    <key>Comment</key>
                    <string>V1.0</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/IOSkywalkFamily</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string>23.00.00</string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>IO80211FamilyLegacy.kext</string>
                    <key>Comment</key>
                    <string>V1200.12.2b1</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/IO80211FamilyLegacy</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string>23.00.00</string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>AirportBrcmFixup.kext</string>
                    <key>Comment</key>
                    <string>V2.1.8</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/AirportBrcmFixup</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string></string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>IO80211FamilyLegacy.kext/Contents/PlugIns/AirPortBrcmNIC.kext</string>
                    <key>Comment</key>
                    <string>V1400.1.1</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/AirPortBrcmNIC</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string>23.00.00</string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>BlueToolFixup.kext</string>
                    <key>Comment</key>
                    <string>V2.6.8</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/BlueToolFixup</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string>21.0.0</string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>BrcmFirmwareData.kext</string>
                    <key>Comment</key>
                    <string>V2.6.8</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/BrcmFirmwareData</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string></string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>BrcmPatchRAM3.kext</string>
                    <key>Comment</key>
                    <string>V2.6.8</string>
                    <key>Enabled</key>
                    <true/>
                    <key>ExecutablePath</key>
                    <string>Contents/MacOS/BrcmPatchRAM3</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string></string>
                    <key>PlistPath</key>
                    <string>Contents/Info.plist</string>
                </dict>
                <dict>
    
```

```
  <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>Comment</key>
                    <string>Allow IOSkywalkFamily Downgrade</string>
                    <key>Enabled</key>
                    <true/>
                    <key>Identifier</key>
                    <string>com.apple.iokit.IOSkywalkFamily</string>
                    <key>MaxKernel</key>
                    <string></string>
                    <key>MinKernel</key>
                    <string>23.00.00</string>
                    <key>Strategy</key>
                    <string>Exclude</string>
                </dict>
```

```
  <key>csr-active-config</key>
                    <data>AwgAAA==</data>
```


</details> 

<details>  

<summary> OpenCore-Patcher：</summary>

![Screenshot 2024-03-18 at 18 52 13](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/f9b2721a-4b30-4257-9642-b894e2e07675)

![fixing-broadcom-wifi-in-macos-sonoma-v0-2vihrrop8ofb1 copy](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/b523156b-9108-498e-8cc0-c98f1e7c3ebd)

![Screenshot 2024-03-18 at 18 55 12](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/cf5ea299-161a-4a9c-8bd6-d65136f510c1)

![Screenshot 2024-03-18 at 18 55 37](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/df7c2226-2d71-417c-8edb-771ba612d004)

![Screenshot 2024-03-18 at 18 56 01](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/7a7872f5-f7fc-439d-b522-d7f404cc0ba1)

![Screenshot 2024-03-18 at 18 56 21](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/d36f4a25-c5e9-4321-8660-85e578a683a9)

</details> 





