    echo "你确定要卸载junction 节点程序吗？这将会删除所有相关的数据。[Y/N]"
    read -r -p "请确认: " response

    case "$response" in
        [yY][eE][sS]|[yY]) 
            echo "开始卸载节点程序..."
            pm2 stop junctiond && pm2 delete junctiond
            rm -rf $HOME/.junctiond && rm -rf $HOME/junction $(which junctiond) && rm -rf $HOME/.junction
            echo "节点程序卸载完成。"
            ;;
        *)
            echo "取消卸载操作。"
            ;;
    esac
