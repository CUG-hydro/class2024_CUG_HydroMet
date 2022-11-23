# Github Action自动推送代码到`gitlab`


> 国内用户，有些无法访问github，因此把课件在gitlab上也同步了一份。
> 下文介绍如何进行同步设置。（For developers）

1. gitlab新建token，记下来。token是授权文件，目的是为了让github action有推送代码的权限。

   用户头像 -> edit profile -> 左侧`Access Tokens` -> 选择授权日期、授权类型（需要给予对应的权限） -> 确定 -> 记录下token（一定要记下来，以后无法看见）

2. 回到github的repository：

   setting -> secrets -> actions -> new -> 填写变量名(`GITLAB_ACCESS_TOKEN`)和变量值(新建的token值)

   在github action中，secrets中的调用方法为`secrets.VariableName`（如`secrets.GITLAB_ACCESS_TOKEN`）。
   > 需要确定github actions中调用的变量和此处的变量名名字一致！

3. 添加github action，可参考：

   <https://github.com/CUG-hydro/class2022_CUG_HydroMet/blob/master/.github/workflows/push2gitlab.yaml>

搞定，收工！

## References

1. <https://stackoverflow.com/questions/63308904/push-to-gitlab-with-access-token-using-github-actions>
