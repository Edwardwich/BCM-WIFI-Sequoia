
# BCM-WIFI-Sequoia

## Configuration(card i test)
| Specifications      | Detail                       |
| ------------------- | ---------------------------- |
| Wifi + Bluetooth    | DW1820a BCM4350              |

## OCLP & Config & Kexts :
  One Key OCLP  :
  ```bash
  bash -c "$(curl -fsSL https://raw.githubusercontent.com/Edwardwich/BCM-WIFI-Sequoia/main/compile_oclp.sh)"
  ```

  you need download this OCLP : [OpenCore-Legacy-Patchera](https://github.com/dortania/OpenCore-Legacy-Patcher/actions/runs/10081321423)
  
  Kext source : https://github.com/dortania/OpenCore-Legacy-Patcher/tree/sequoia-development/payloads/Kexts/Acidanthera
  
  download kext from this Repositories
- `IOSkywalkFamily.kext`
- `IO80211FamilyLegacy.kext` 
- `AirPortBrcmNIC.kext`
- `AirportBrcmFixup.kext`
- `BlueToolFixup.kext` 
- `BrcmFirmwareData.kext` 
- `BrcmPatchRAM3.kext` 
- `AMFIPass.kext`

 


![Screenshot 2024-03-18 at 18 42 31](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/e2cefd5b-4edf-411a-96fc-b675da63f097)

![Screenshot 2024-03-18 at 18 42 48](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/b8e7dc55-26fa-4305-8f0b-664566578be6)

![Screenshot 2024-03-18 at 18 43 06](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/7957db8d-7135-43c5-8900-6413ff9dd668)
Add this two Key and use linked kext for fixing BT:
https://github.com/Lorys89/BrcmPatchRAM/actions/runs/9551440370
![Screenshot 2024-08-24 at 19 49 02](https://github.com/user-attachments/assets/8c4b92dc-b7e2-4833-a2a4-7741b4ca9027)
```
<key>7C436110-AB2A-4BBB-A880-FE41995C9F82</key>
                <dict>
                    <key>SystemAudioVolume</key>
                    <data>Rg==</data>
                    <key>bluetoothExternalDongleFailed</key>
                    <data>AA==</data>
                    <key>bluetoothInternalControllerInfo</key>
                    <data>AAAAAAAAAAAAAAAAAAA=</data>
                    <key>boot-args</key>
                    <string></string>
                    <key>csr-active-config</key>
                    <data>AwgAAA==</data>
                    <key>prev-lang:kbd</key>
                    <string>en-US:0</string>
                    <key>run-efi-updater</key>
                    <string>No</string>
                </dict>
```


```
    <dict>
                    <key>Arch</key>
                    <string>Any</string>
                    <key>BundlePath</key>
                    <string>AMFIPass.kext</string>
                    <key>Comment</key>
                    <string>V1.4.1</string>
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



![Screenshot 2024-07-06 at 11 24 30](https://github.com/Edwardwich/BCM-WIFI-Sequoia/assets/35195176/38997721-0c70-4f3b-9851-08e4a4d41a87)

![Screenshot 2024-03-18 at 18 55 12](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/cf5ea299-161a-4a9c-8bd6-d65136f510c1)

![Screenshot 2024-03-18 at 18 55 37](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/df7c2226-2d71-417c-8edb-771ba612d004)

![Screenshot 2024-07-06 at 11 23 55](https://github.com/Edwardwich/BCM-WIFI-Sequoia/assets/35195176/739d77ae-e092-40e9-9370-c586a86b6993)

![Screenshot 2024-03-18 at 18 56 21](https://github.com/Edwardwich/BCM-WIFI_Sonoma/assets/35195176/d36f4a25-c5e9-4321-8660-85e578a683a9)







