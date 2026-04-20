FROM alpine:latest
RUN apk add --no-cache wget tar
WORKDIR /app
# 下载 sing-box 官方程序
RUN wget https://github.com/SagerNet/sing-box/releases/download/v1.10.1/sing-box-1.10.1-linux-amd64.tar.gz && \
    tar -zxvf sing-box-1.10.1-linux-amd64.tar.gz && \
    mv sing-box-1.10.1-linux-amd64/sing-box . && \
    rm -rf sing-box-1.10.1-linux-amd64*
COPY config.json .
EXPOSE 8080
CMD ["./sing-box", "run", "-c", "config.json"]




若有干扰，可在「设置」关闭悬浮球

👋 Hi，想聊点什么～
输入您的问题... (Enter 发送，Shift+Enter 换行)
内容由AI生成，仅供参考
