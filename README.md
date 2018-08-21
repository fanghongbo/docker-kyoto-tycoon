# Kyotocabinet & kyototycoon

官档： http://fallabs.com/kyotocabinet/spex.html#tutorial
官档： http://fallabs.com/kyototycoon/spex.html#tutorial

介绍： Kyotocabinet 是一款轻量级嵌入式数据库,kyototycoon 是 kyotocabinet 的网络接口程序

   Kyoto Tycoon是一个具有自动过期机制的轻量级数据库，主要用于处理缓存数据和各种应用程序的持久性数据。KT同时也是Kyoto Cabinet的网络接口。尽管KC拥有高性能和高并发性，但你会被麻烦于多个进程共享同一个数据库，或者远端进程访问数据库。KT提供了并发和远程连接来管理KC。
   服务器的高并发性由Linux/*BSD的thread-pool模型和epoll/kqueue机制来实现。它可以在同一时间处理1W连接请求。因为是由epoll/kqueue等系统功能进行封装，所以KT具备较高的可移植性，可以工作在几乎所有的UNIX系统或者Windows系统上。
   KT支持热备份功能，并不需要停止服务来拷贝数据文件。操作日志支持两个备份文件之间的差异。甚者，可以实现异步复制的功能。一个服务器发送操作日志到另外一个服务器，会评估操作日志并立即更新它们的数据库保持和master数据库一致。
   KT和连接它的客户端采用HTTP协议进行沟通。所以你可以采用几乎所有流行的编程语言去编写客户端应用。支持GET,HEAD,PUT,DELETE方法。
KT可以嵌入Lua，一种轻量级的脚本语言。即使你找不到任何内置的操作匹配你的需求在KT的客户端API中，你可以通过Lua中的定义函数来定义任意的操作。Lua脚本的API提供了完整的数据库操作，包括visitor、cursor和事务机制。
   KT可以加载共享库文件,实现了一个可插入服务器机制。它可以运行任意网络服务和操作数据库对象在主服务上。这对于实现其他网络协议很有帮助。
KT的服务程序是采用C++语言编写。它可以在符合C++ 03 TR1 API平台下进行扩展。KT是一个遵守GNU GENERAL 协议的开源软件。你可以您编写客户端应用程序不受控于我们的许可证，通过他们与服务器进行HTTP通信而不使用核心库。

