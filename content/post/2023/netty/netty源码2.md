---
title: netty源码分析二
description: 
date: 2023-05-04
categories:
    - Netty
---




精尽 Netty 源码分析 —— NIO 基础（二）之 Channel
1. 概述
在 Java NIO 中，基本上所有的 IO 操作都是从 Channel 开始。数据可以从 Channel 读取到 Buffer 中，也可以从 Buffer 写到 Channel 中。如下图所示：

Buffer <=> Channel
Buffer <=> Channel

2. NIO Channel 对比 Java Stream
NIO Channel 类似 Java Stream ，但又有几点不同：

对于同一个 Channel ，我们可以从它读取数据，也可以向它写入数据。而对于同一个 Stream ，通畅要么只能读，要么只能写，二选一( 有些文章也描述成“单向”，也是这个意思 )。
Channel 可以非阻塞的读写 IO 操作，而 Stream 只能阻塞的读写 IO 操作。
Channel 必须配合 Buffer 使用，总是先读取到一个 Buffer 中，又或者是向一个 Buffer 写入。也就是说，我们无法绕过 Buffer ，直接向 Channel 写入数据。
3. Channel 的实现
Channel 在 Java 中，作为一个接口，java.nio.channels.Channel ，定义了 IO 操作的连接与关闭。代码如下：

public interface Channel extends Closeable {

    /**
     * 判断此通道是否处于打开状态。 
     */
    public boolean isOpen();

    /**
     *关闭此通道。
     */
    public void close() throws IOException;

}
Channel 有非常多的实现类，最为重要的四个 Channel 实现类如下：

SocketChannel ：一个客户端用来发起 TCP 的 Channel 。
ServerSocketChannel ：一个服务端用来监听新进来的连接的 TCP 的 Channel 。对于每一个新进来的连接，都会创建一个对应的 SocketChannel 。
DatagramChannel ：通过 UDP 读写数据。
FileChannel ：从文件中，读写数据。
老艿艿：因为 《Java NIO 系列教程》 对上述的 Channel 解释的非常不错，我就直接引用啦。

我们在使用 Netty 时，主要使用 TCP 协议，所以胖友可以只看 「3.2 SocketChannel」 和 「3.1 ServerSocketChannel」 。

3.1 ServerSocketChannel
《Java NIO系列教程（九） ServerSocketChannel》

3.2 SocketChannel
《Java NIO 系列教程（八） SocketChannel》

3.3 DatagramChannel
《Java NIO系列教程（十） Java NIO DatagramChannel》

3.4 FileChannel
《Java NIO系列教程（七） FileChannel》