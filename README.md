# TongWII dockerfile

---

## baseimage
**基础系统，设置了时区**

## vlmcsd
**kms批量激活服务**
### 启动服务
```
docker run -d -p 1688:1688 --restart=always --name vlmcsd tongwii/vlmcsd
```
### 查看日志
```
docker logs vlmcsd
```
### 客户端配置
#### Windows
```
slmgr.vbs -upk
slmgr.vbs -ipk XXXXX-XXXXX-XXXXX-XXXXX-XXXXX
slmgr.vbs -skms <DOCKER_IP>
slmgr.vbs -ato
slmgr.vbs -dlv
```

#### Office
```
CD \Program Files\Microsoft Office\Office16 OR CD \Program Files (x86)\Microsoft Office\Office16
cscript ospp.vbs /sethst:<DOCKER_IP>
cscript ospp.vbs /inpkey:xxxxx-xxxxx-xxxxx-xxxxx-xxxxx
cscript ospp.vbs /act
cscript ospp.vbs /dstatusall
```
#### KEY
| 操作系统 | KEY |
| -------- | :-----: |
| **Windows Server 2016** |  |
| Windows Server 2016 Datacenter | CB7KF-BWN84-R7R2Y-793K2-8XDDG |
| Windows Server 2016 Standard | WC2BQ-8NRM3-FDDYY-2BFGV-KHKQY |
| Windows Server 2016 Essentials | JCKRF-N37P4-C2D82-9YXRT-4M63B |
| **Windows 10** |  |
| Windows 10 Professional | W269N-WFGWX-YVC9B-4J6C9-T83GX |
| Windows 10 Professional N | MH37W-N47XK-V7XM9-C7227-GCQG9 |
| Windows 10 Enterprise | NPPR9-FWDCX-D2C8J-H872K-2YT43 |
| Windows 10 Enterprise N | DPH2V-TTNVB-4X9Q3-TJR4H-KHJW4 |
| Windows 10 Education | NW6C2-QMPVW-D7KKK-3GKT6-VCFB2 |
| Windows 10 Education N | 2WH4N-8QGBV-H22JP-CT43Q-MDWWJ |
| Windows 10 Enterprise 2015 LTSB | WNMTR-4C88C-JK8YV-HQ7T2-76DF9 |
| Windows 10 Enterprise 2015 LTSB N | 2F77B-TNFGY-69QQF-B8YKP-D69TJ |
| Windows 10 Enterprise 2016 LTSB | DCPHK-NFMTC-H88MJ-PFHPY-QJ4BJ |
| Windows 10 Enterprise 2016 LTSB N | QFFDN-GRT3P-VKWWX-X7T3R-8B639 |
| **Windows Server 2012 R2 and Windows 8.1** |  |
| Windows 8.1 Professional | GCRJD-8NW9H-F2CDX-CCM8D-9D6T9 |
| Windows 8.1 Professional N | HMCNV-VVBFX-7HMBH-CTY9B-B4FXY |
| Windows 8.1 Enterprise | MHF9N-XY6XB-WVXMC-BTDCT-MKKG7 |
| Windows 8.1 Enterprise N | TT4HM-HN7YT-62K67-RGRQJ-JFFXW |
| Windows Server 2012 R2 Server Standard | D2N9P-3P6X9-2R39C-7RTCD-MDVJX |
| Windows Server 2012 R2 Datacenter | W3GGN-FT8W3-Y4M27-J84CP-Q3VJ9 |
| Windows Server 2012 R2 Essentials | KNC87-3J2TX-XB4WP-VCPJV-M4FWM |
| **Windows Server 2012 and Windows 8** |  |
| Windows 8 Professional | NG4HW-VH26C-733KW-K6F98-J8CK4 |
| Windows 8 Professional N | XCVCF-2NXM9-723PB-MHCB7-2RYQQ |
| Windows 8 Enterprise | 32JNW-9KQ84-P47T8-D8GGY-CWCK7 |
| Windows 8 Enterprise N | JMNMF-RHW7P-DMY6X-RF3DR-X2BQT |
| Windows Server 2012 | BN3D2-R7TKB-3YPBD-8DRP2-27GG4 |
| Windows Server 2012 N | 8N2M2-HWPGY-7PGT9-HGDD8-GVGGY |
| Windows Server 2012 Single Language | 2WN2H-YGCQR-KFX6K-CD6TF-84YXQ |
| Windows Server 2012 Country Specific | 4K36P-JN4VD-GDC6V-KDT89-DYFKP |
| Windows Server 2012 Server Standard | XC9B7-NBPP2-83J2H-RHMBY-92BT4 |
| Windows Server 2012 MultiPoint Standard | HM7DN-YVMH3-46JC3-XYTG7-CYQJJ |
| Windows Server 2012 MultiPoint Premium | XNH6W-2V9GX-RGJ4K-Y8X6F-QGJ2G |
| Windows Server 2012 Datacenter | 48HP8-DN98B-MYWDG-T2DCC-8W83P |
| **Windows 7 and Windows Server 2008 R2** |  |
| Windows 7 Professional | FJ82H-XT6CR-J8D7P-XQJJ2-GPDD4 |
| Windows 7 Professional N | MRPKT-YTG23-K7D7T-X2JMM-QY7MG |
| Windows 7 Professional E | W82YF-2Q76Y-63HXB-FGJG9-GF7QX |
| Windows 7 Enterprise | 33PXH-7Y6KF-2VJC9-XBBR8-HVTHH |
| Windows 7 Enterprise N | YDRBP-3D83W-TY26F-D46B2-XCKRJ |
| Windows 7 Enterprise E | C29WB-22CC8-VJ326-GHFJW-H9DH4 |
| Windows Server 2008 R2 Web | 6TPJF-RBVHG-WBW2R-86QPH-6RTM4 |
| Windows Server 2008 R2 HPC edition | TT8MH-CG224-D3D7Q-498W2-9QCTX |
| Windows Server 2008 R2 Standard | YC6KT-GKW9T-YTKYR-T4X34-R7VHC |
| Windows Server 2008 R2 Enterprise | 489J6-VHDMP-X63PK-3K798-CPX3Y |
| Windows Server 2008 R2 Datacenter | 74YFP-3QFB3-KQT8W-PMXWJ-7M648 |
| Windows Server 2008 R2 for Itanium-based Systems | GT63C-RJFQ3-4GMB6-BRFB9-CB83V |
| **Windows Vista and Windows Server 2008** |  |
| Windows Vista Business | YFKBB-PQJJV-G996G-VWGXY-2V3X8 |
| Windows Vista Business N | HMBQG-8H2RH-C77VX-27R82-VMQBT |
| Windows Vista Enterprise | VKK3X-68KWM-X2YGT-QR4M6-4BWMV |
| Windows Vista Enterprise N | VTC42-BM838-43QHV-84HX6-XJXKV |
| Windows Web Server 2008 | WYR28-R7TFJ-3X2YQ-YCY4H-M249D |
| Windows Server 2008 Standard | TM24T-X9RMF-VWXK6-X8JC9-BFGM2 |
| Windows Server 2008 Standard without Hyper-V | W7VD6-7JFBR-RX26B-YKQ3Y-6FFFJ |
| Windows Server 2008 Enterprise | YQGMW-MPWTJ-34KDK-48M3W-X4Q6V |
| Windows Server 2008 Enterprise without Hyper-V | 39BXF-X8Q23-P2WWT-38T2F-G3FPG |
| Windows Server 2008 HPC | RCTX3-KWVHP-BR6TB-RB6DM-6X7HP |
| Windows Server 2008 Datacenter | 7M67G-PC374-GR742-YH8V4-TCBY3 |
| Windows Server 2008 Datacenter without Hyper-V | 22XQ2-VRXRG-P8D42-K34TD-G3QQC |
| Windows Server 2008 for Itanium-Based Systems | 4DWFP-JF3DJ-B7DTH-78FJB-PDRHK |
| **Office 2013** |  |
| Office 2013 Professional Plus | YC7DK-G2NP3-2QQC3-J6H88-GVGXT |
| Office 2013 Standard | KBKQT-2NMXY-JJWGP-M62JB-92CD4 |
| Project 2013 Professional | FN8TT-7WMH6-2D4X9-M337T-2342K |
| Project 2013 Standard | 6NTH3-CW976-3G3Y2-JK3TX-8QHTT |
| Visio 2013 Professional | C2FG9-N6J68-H8BTJ-BW3QX-RM3B3 |
| Visio 2013 Standard | J484Y-4NKBF-W2HMG-DBMJC-PGWR7 |
| Access 2013 | NG2JY-H4JBT-HQXYP-78QH9-4JM2D |
| Excel 2013 | VGPNG-Y7HQW-9RHP7-TKPV3-BG7GB |
| InfoPath 2013 | DKT8B-N7VXH-D963P-Q4PHY-F8894 |
| Lync 2013 | 2MG3G-3BNTT-3MFW9-KDQW3-TCK7R |
| OneNote 2013 | TGN6P-8MMBC-37P2F-XHXXK-P34VW |
| Outlook 2013 | QPN8Q-BJBTJ-334K3-93TGY-2PMBT |
| PowerPoint 2013 | 4NT99-8RJFH-Q2VDH-KYG2C-4RD4F |
| Publisher 2013 | PN2WF-29XG2-T9HJ7-JQPJR-FCXK4 |
| Word 2013 | 6Q7VD-NX8JD-WJ2VH-88V73-4GBJ7 |
| **Office 2016** |  |
| Office Professional Plus 2016 | XQNVK-8JYDB-WJ9W3-YJ8YR-WFG99 |
| Office Standard 2016 | JNRGM-WHDWX-FJJG3-K47QV-DRTFM |
| Project Professional 2016 | YG9NW-3K39V-2T3HJ-93F3Q-G83KT |
| Project Standard 2016 | GNFHQ-F6YQM-KQDGJ-327XX-KQBVC |
| Visio Professional 2016 | PD3PC-RHNGV-FXJ29-8JK7D-RJRJK |
| Visio Standard 2016 | 7WHWN-4T7MP-G96JF-G33KR-W8GF4 |
| Access 2016 | GNH9Y-D2J4T-FJHGG-QRVH7-QPFDW |
| Excel 2016 | 9C2PK-NWTVB-JMPW8-BFT28-7FTBF |
| OneNote 2016 | DR92N-9HTF2-97XKM-XW2WJ-XW3J6 |
| Outlook 2016 | R69KK-NTPKF-7M3Q4-QYBHW-6MT9B |
| PowerPoint 2016 | J7MQP-HNJ4Y-WJ7YM-PFYGF-BY6C6 |
| Publisher 2016 | F47MM-N3XJP-TQXJ9-BP99D-8K837 |
| Skype for Business 2016 | 869NQ-FJ69K-466HW-QYCP2-DDBV6 |
| Word 2016 | WXY84-JN2Q9-RBCCQ-3Q3J3-3PFJ6 |

## dnsmasq
**DNS服务器,带WEB UI的配置界面**
### 启动服务
```
docker run --name dnsmasq -d -p 53:53/udp -p 5380:8080 --log-opt "max-size=100m" -e "USER=tongwii" -e "PASS=tongwii" --restart always tongwii/dnsmasq
```
### 配置界面与运行查看
在浏览器中输入:http://<DOCKER_IP>:5380
### 测试
#### Windows
```
nslookup www.baidu.com
```
#### Linux
```
host www.baidu.com <DOCKER_IP>
```

## shadowsocks

