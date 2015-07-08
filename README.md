muse-homepage
=====================================


### 主要命令：

1. `gulp dev`：运行本地开发模式，自动watch文件然后编译sass，编译coffee。
2. `npm run build`：编译文件，这个命令其实是调用：`NODE_ENV=dev-online gulp build && NODE_ENV=production gulp build`，改命令会再build下生成两个文件夹，production和dev-online。前者是为了用于线上的测试服务器，后者用于线上的投入运营的服务器。
3. `npm run server:dev`：运行本地server，代理build文件夹下得dev-online，这是为了测试是否build生成的文件能否正确运行。
4. `npm run server:production`：同上。代理production文件夹下的文件。