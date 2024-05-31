
| 支持的目标 | ESP32 | ESP32-C2 | ESP32-C3 | ESP32-C6 | ESP32-S2 | ESP32-S3 |
| ---------- | ----- | -------- | -------- | -------- | -------- | -------- |

# 简单 OTA 示例

本示例基于 `esp_https_ota` 组件的 API。  使用 esp-idf5.2框架

## 步骤 1: 使用 Python 简单 HTTP 服务器



```sh
cd /path/to/firmware
python3 -m http.server 8070
```

## 步骤 2: 允许 HTTP 升级

确保在 `menuconfig` 中允许 HTTP 升级：

```plaintext
Component config -> ESP HTTPS OTA -> Allow HTTP for OTA (CONFIG_ESP_HTTPS_OTA_ALLOW_HTTP)
```

## 步骤 3: 确认 URL 设置正确

确认在 `menuconfig` 中设置了正确的固件升级 URL：

```plaintext
http://<host-ip-address>:8070/hello_world.bin
```

## 步骤 4: 运行 OTA 升级

在 ESP32 启动后，它应该会连接到配置的 HTTP 服务器并下载固件。如果一切配置正确，固件下载完成后应该会自动重启并运行新固件。
使用 "idf.py erase_flash" 可以擦除