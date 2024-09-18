def --env cw [] {
    # 定义工作区路径
    let $workspacePath = "E:/workspace"
    # 获取工作区下的直接子目录
    let $subDirectories = (ls --short-names $workspacePath | where type == "dir")
    # 提取目录名
    let $directoryNames = $subDirectories | get name | to text
    # 调用 fzf 选择子目录名，使用 --height 参数来避免全屏
    let $selectedDirectoryName = ($directoryNames | fzf --height 40% --layout=reverse --preview 'eza -T --colour=always --git-ignore --level=1 --icons=always E:\workspace/{}')
    # 检查是否选择了目录

        # 构建完整路径
        let $selectedDirectoryPath = ($workspacePath | path join $selectedDirectoryName)
        # 跳转到选择的目录
        cd $selectedDirectoryPath
}

