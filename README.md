# gfwlist2pacs
一键更新 gfwlist 并转换为 pac 的脚本，用来在自己服务器上配合定时任务，让自己的每个设备订阅服务器上的 pac 。

## 脚本功能
- 写入日期到日志文件，以下所有步骤都会写入日志文件。
- 更新本地 gfwlist 仓库。
- 改名并复制 gfwlist 仓库中的 gfwlist.txt 到网页服务器的文件夹，对外访问，便于 SwitchyOmega 等订阅。
- 从 gfwlist.txt 创建 pac 文件

## 部署步骤
- 架设 Python 和网页服务
- `pip install -U genpac`
- `chmod +x glist.sh`
- 修改文件中的所有路径为自己的。
- 修改文件中的 pac 生成端口和协议，脚本中默认创建了两个 pac 文件：
  - 端口：1081，协议：HTTP
  - 端口：1080，协议：SOCKS5
- 设置定时任务

### 路径
脚本中的所有路径用的都是绝对路径，需要根据需要改变以下默认路径：
- 日志文件: `/mnt/disk16/log/gfwlist.log`
- 克隆 gfwlist 到本地文件夹: `/mnt/disk16/glist/gfwlist/gfwlist.txt`
- 网页服务器上的 list: `/mnt/disk16/www/site8/glist/glist.txt`
- 网页服务器上的 pac: `/mnt/disk16/www/site8/glist/`