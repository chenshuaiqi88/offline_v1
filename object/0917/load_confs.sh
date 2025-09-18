

#!/bin/bash

# SeaTunnel 启动脚本路径，需根据实际安装路径修改
SEATUNNEL_BIN_PATH="/opt/soft/apache-seatunnel-2.3.10/bin/seatunnel.sh"
# 配置文件所在目录，需与实际目录一致
CONF_DIR="/opt/soft/apache-seatunnel-2.3.10/user_config/bigdata_realtime_v1"

# 遍历配置文件目录下所有以 .conf 结尾的文件
for conf_file in ${CONF_DIR}/*.conf; do
    if [[ -f ${conf_file} ]]; then
        echo "正在运行配置文件: ${conf_file}"
        # 执行 SeaTunnel 任务，-c 指定配置文件
        ${SEATUNNEL_BIN_PATH} -c ${conf_file} -m local
        # 判断任务是否执行成功
        if [[ $? -eq 0 ]]; then
            echo "配置文件 ${conf_file} 运行成功"
        else
            echo "配置文件 ${conf_file} 运行失败"
        fi
    fi
done
