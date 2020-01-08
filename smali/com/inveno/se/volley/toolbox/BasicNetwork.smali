.class public Lcom/inveno/se/volley/toolbox/BasicNetwork;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Network;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;
    }
.end annotation


# static fields
.field protected static final DEBUG:Z = true

.field private static DEFAULT_POOL_SIZE:I

.field private static SLOW_REQUEST_THRESHOLD_MS:I


# instance fields
.field protected final mHttpStack:Lcom/inveno/se/volley/toolbox/HttpStack;

.field protected final mPool:Lcom/inveno/se/volley/toolbox/ByteArrayPool;

.field private processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0xbb8

    sput v0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->SLOW_REQUEST_THRESHOLD_MS:I

    const/16 v0, 0x1000

    sput v0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    return-void
.end method

.method public constructor <init>(Lcom/inveno/se/volley/toolbox/HttpStack;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/inveno/se/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/inveno/se/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/inveno/se/volley/toolbox/BasicNetwork;-><init>(Lcom/inveno/se/volley/toolbox/HttpStack;Lcom/inveno/se/volley/toolbox/ByteArrayPool;)V

    return-void
.end method

.method public constructor <init>(Lcom/inveno/se/volley/toolbox/HttpStack;Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;)V
    .locals 2

    new-instance v0, Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    sget v1, Lcom/inveno/se/volley/toolbox/BasicNetwork;->DEFAULT_POOL_SIZE:I

    invoke-direct {v0, v1}, Lcom/inveno/se/volley/toolbox/ByteArrayPool;-><init>(I)V

    invoke-direct {p0, p1, v0}, Lcom/inveno/se/volley/toolbox/BasicNetwork;-><init>(Lcom/inveno/se/volley/toolbox/HttpStack;Lcom/inveno/se/volley/toolbox/ByteArrayPool;)V

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;

    return-void
.end method

.method public constructor <init>(Lcom/inveno/se/volley/toolbox/HttpStack;Lcom/inveno/se/volley/toolbox/ByteArrayPool;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/inveno/se/volley/toolbox/HttpStack;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mPool:Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    return-void
.end method

.method private addCacheHeaders(Ljava/util/Map;Lcom/inveno/se/volley/Cache$Entry;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/inveno/se/volley/Cache$Entry;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p2, Lcom/inveno/se/volley/Cache$Entry;->etag:Ljava/lang/String;

    if-eqz v0, :cond_2

    const-string v0, "If-None-Match"

    iget-object v1, p2, Lcom/inveno/se/volley/Cache$Entry;->etag:Ljava/lang/String;

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    iget-wide v0, p2, Lcom/inveno/se/volley/Cache$Entry;->serverDate:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    new-instance v0, Ljava/util/Date;

    iget-wide v2, p2, Lcom/inveno/se/volley/Cache$Entry;->serverDate:J

    invoke-direct {v0, v2, v3}, Ljava/util/Date;-><init>(J)V

    const-string v1, "If-Modified-Since"

    invoke-static {v0}, Lorg/apache/http/impl/cookie/DateUtils;->formatDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private static attemptRetryOnException(Ljava/lang/String;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/inveno/se/volley/Request",
            "<*>;",
            "Lcom/inveno/se/volley/VolleyError;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/VolleyError;
        }
    .end annotation

    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getRetryPolicy()Lcom/inveno/se/volley/RetryPolicy;

    move-result-object v0

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getTimeoutMs()I

    move-result v1

    :try_start_0
    invoke-interface {v0, p2}, Lcom/inveno/se/volley/RetryPolicy;->retry(Lcom/inveno/se/volley/VolleyError;)V

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->attemptRetryQuest()V
    :try_end_0
    .catch Lcom/inveno/se/volley/VolleyError; {:try_start_0 .. :try_end_0} :catch_0

    const-string v0, "%s-retry [timeout=%s]"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p0, v2, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v5

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    const-string v2, "%s-timeout-giveup [timeout=%s]"

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p0, v3, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v5

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/inveno/se/volley/Request;->addMarker(Ljava/lang/String;)V

    throw v0
.end method

.method private static convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lorg/apache/http/Header;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    const/4 v0, 0x0

    :goto_0
    array-length v2, p0

    if-ge v0, v2, :cond_0

    aget-object v2, p0, v0

    invoke-interface {v2}, Lorg/apache/http/Header;->getName()Ljava/lang/String;

    move-result-object v2

    aget-object v3, p0, v0

    invoke-interface {v3}, Lorg/apache/http/Header;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method private entityToBytes(Lorg/apache/http/HttpEntity;Lcom/inveno/se/volley/Request;)[B
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/http/HttpEntity;",
            "Lcom/inveno/se/volley/Request",
            "<*>;)[B"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/inveno/se/volley/ServerError;
        }
    .end annotation

    const/4 v12, 0x0

    new-instance v4, Lcom/inveno/se/volley/toolbox/PoolingByteArrayOutputStream;

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mPool:Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v2

    long-to-int v1, v2

    invoke-direct {v4, v0, v1}, Lcom/inveno/se/volley/toolbox/PoolingByteArrayOutputStream;-><init>(Lcom/inveno/se/volley/toolbox/ByteArrayPool;I)V

    const/4 v1, 0x0

    :try_start_0
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContent()Ljava/io/InputStream;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Lcom/inveno/se/volley/ServerError;

    invoke-direct {v0}, Lcom/inveno/se/volley/ServerError;-><init>()V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception v0

    :try_start_1
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_0
    iget-object v2, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mPool:Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    invoke-virtual {v2, v1}, Lcom/inveno/se/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v4}, Lcom/inveno/se/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    throw v0

    :cond_0
    :try_start_2
    iget-object v2, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mPool:Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    const/16 v3, 0x400

    invoke-virtual {v2, v3}, Lcom/inveno/se/volley/toolbox/ByteArrayPool;->getBuf(I)[B

    move-result-object v1

    const-wide/16 v2, 0x0

    :cond_1
    :goto_1
    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_2

    const/4 v6, 0x0

    invoke-virtual {v4, v1, v6, v5}, Lcom/inveno/se/volley/toolbox/PoolingByteArrayOutputStream;->write([BII)V

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v6

    int-to-long v8, v5

    add-long/2addr v2, v8

    invoke-virtual {p0, v6, v7, v2, v3}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->process(JJ)V

    iget-object v6, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;

    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->getContentLength()J

    move-result-wide v8

    int-to-long v10, v5

    add-long/2addr v2, v10

    invoke-interface {v6, v8, v9, v2, v3}, Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;->process(JJ)V

    goto :goto_1

    :cond_2
    invoke-virtual {v4}, Lcom/inveno/se/volley/toolbox/PoolingByteArrayOutputStream;->toByteArray()[B
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    :try_start_3
    invoke-interface {p1}, Lorg/apache/http/HttpEntity;->consumeContent()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    :goto_2
    iget-object v2, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mPool:Lcom/inveno/se/volley/toolbox/ByteArrayPool;

    invoke-virtual {v2, v1}, Lcom/inveno/se/volley/toolbox/ByteArrayPool;->returnBuf([B)V

    invoke-virtual {v4}, Lcom/inveno/se/volley/toolbox/PoolingByteArrayOutputStream;->close()V

    return-object v0

    :catch_0
    move-exception v2

    const-string v2, "Error occured when calling consumingContent"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inveno/se/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v2

    const-string v2, "Error occured when calling consumingContent"

    new-array v3, v12, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/inveno/se/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private logSlowRequests(JLcom/inveno/se/volley/Request;[BLorg/apache/http/StatusLine;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lcom/inveno/se/volley/Request",
            "<*>;[B",
            "Lorg/apache/http/StatusLine;",
            ")V"
        }
    .end annotation

    const-string v1, "HTTP response for request=<%s> [lifetime=%d], [size=%s], [rc=%d], [retryCount=%s]"

    const/4 v0, 0x5

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    aput-object p3, v2, v0

    const/4 v0, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x2

    if-eqz p4, :cond_0

    array-length v0, p4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_0
    aput-object v0, v2, v3

    const/4 v0, 0x3

    invoke-interface {p5}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x4

    invoke-virtual {p3}, Lcom/inveno/se/volley/Request;->getRetryPolicy()Lcom/inveno/se/volley/RetryPolicy;

    move-result-object v3

    invoke-interface {v3}, Lcom/inveno/se/volley/RetryPolicy;->getCurrentRetryCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcom/inveno/se/volley/VolleyLog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void

    :cond_0
    const-string v0, "null"

    goto :goto_0
.end method

.method private requestFail(Lcom/inveno/se/volley/Request;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;J)V"
        }
    .end annotation

    instance-of v0, p1, Lcom/inveno/se/volley/toolbox/ImageRequest;

    if-eqz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u8bf7\u6c42\u5931\u8d25 \u4e86\uff0c\u9700\u8bb0\u5f55\u8bf7\u6c42\u4fe1\u606f\u5f85\u4e0a\u4f20\uff1a"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    invoke-static {}, Lcom/inveno/se/tools/URLUtils;->change()V

    goto :goto_0
.end method


# virtual methods
.method protected logError(Ljava/lang/String;Ljava/lang/String;J)V
    .locals 5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "HTTP ERROR(%s) %d ms to fetch %s"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    sub-long/2addr v0, p3

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x2

    aput-object p2, v3, v0

    invoke-static {v2, v3}, Lcom/inveno/se/volley/VolleyLog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public performRequest(Lcom/inveno/se/volley/Request;)Lcom/inveno/se/volley/NetworkResponse;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;)",
            "Lcom/inveno/se/volley/NetworkResponse;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/inveno/se/volley/VolleyError;
        }
    .end annotation

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    :goto_0
    const/4 v2, 0x0

    const/4 v5, 0x0

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getCacheEntry()Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->addCacheHeaders(Ljava/util/Map;Lcom/inveno/se/volley/Cache$Entry;)V

    iget-object v3, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->mHttpStack:Lcom/inveno/se/volley/toolbox/HttpStack;

    invoke-interface {v3, p1, v0}, Lcom/inveno/se/volley/toolbox/HttpStack;->performRequest(Lcom/inveno/se/volley/Request;Ljava/util/Map;)Lorg/apache/http/HttpResponse;
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_4

    move-result-object v8

    :try_start_1
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v6

    invoke-interface {v6}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------statusCode:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getAllHeaders()[Lorg/apache/http/Header;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->convertHeaders([Lorg/apache/http/Header;)Ljava/util/Map;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_5

    move-result-object v7

    const/16 v0, 0x130

    if-ne v9, v0, :cond_0

    :try_start_2
    new-instance v0, Lcom/inveno/se/volley/NetworkResponse;

    const/16 v1, 0x130

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getCacheEntry()Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v2

    iget-object v2, v2, Lcom/inveno/se/volley/Cache$Entry;->data:[B

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v7, v3}, Lcom/inveno/se/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    :goto_1
    return-object v0

    :cond_0
    invoke-interface {v8}, Lorg/apache/http/HttpResponse;->getEntity()Lorg/apache/http/HttpEntity;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->entityToBytes(Lorg/apache/http/HttpEntity;Lcom/inveno/se/volley/Request;)[B

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    sub-long v2, v0, v10

    move-object v1, p0

    move-object v4, p1

    invoke-direct/range {v1 .. v6}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->logSlowRequests(JLcom/inveno/se/volley/Request;[BLorg/apache/http/StatusLine;)V

    const/16 v0, 0xc8

    if-eq v9, v0, :cond_1

    const/16 v0, 0xcc

    if-eq v9, v0, :cond_1

    invoke-direct {p0, p1, v10, v11}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->requestFail(Lcom/inveno/se/volley/Request;J)V

    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0}, Ljava/io/IOException;-><init>()V

    throw v0
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6

    :catch_0
    move-exception v0

    invoke-direct {p0, p1, v10, v11}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->requestFail(Lcom/inveno/se/volley/Request;J)V

    const-string v1, "socket"

    new-instance v2, Lcom/inveno/se/volley/TimeoutError;

    invoke-direct {v2}, Lcom/inveno/se/volley/TimeoutError;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------SocketTimeoutException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/SocketTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_1
    :try_start_3
    new-instance v0, Lcom/inveno/se/volley/NetworkResponse;

    const/4 v1, 0x0

    invoke-direct {v0, v9, v5, v7, v1}, Lcom/inveno/se/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/net/MalformedURLException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-direct {p0, p1, v10, v11}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->requestFail(Lcom/inveno/se/volley/Request;J)V

    const-string v1, "connection"

    new-instance v2, Lcom/inveno/se/volley/TimeoutError;

    invoke-direct {v2}, Lcom/inveno/se/volley/TimeoutError;-><init>()V

    invoke-static {v1, p1, v2}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------ConnectTimeoutException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Lorg/apache/http/conn/ConnectTimeoutException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    goto/16 :goto_0

    :catch_2
    move-exception v0

    invoke-direct {p0, p1, v10, v11}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->requestFail(Lcom/inveno/se/volley/Request;J)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------MalformedURLException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/net/MalformedURLException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Bad URL "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_3
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "-------InterruptedIOException:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/InterruptedIOException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    const-string v0, "connection"

    new-instance v1, Lcom/inveno/se/volley/TimeoutError;

    invoke-direct {v1}, Lcom/inveno/se/volley/TimeoutError;-><init>()V

    invoke-static {v0, p1, v1}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    goto/16 :goto_0

    :catch_4
    move-exception v0

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "-------IOException:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/inveno/se/tools/LogTools;->showLogB(Ljava/lang/String;)V

    invoke-direct {p0, p1, v10, v11}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->requestFail(Lcom/inveno/se/volley/Request;J)V

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    invoke-interface {v2}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v0

    const-string v2, "Unexpected response code %d for %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v4, v6

    const/4 v6, 0x1

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getUrl()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v2, v4}, Lcom/inveno/se/volley/VolleyLog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_5

    new-instance v2, Lcom/inveno/se/volley/NetworkResponse;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v5, v1, v3}, Lcom/inveno/se/volley/NetworkResponse;-><init>(I[BLjava/util/Map;Z)V

    const/16 v1, 0x191

    if-eq v0, v1, :cond_2

    const/16 v1, 0x193

    if-ne v0, v1, :cond_4

    :cond_2
    const-string v0, "auth"

    new-instance v1, Lcom/inveno/se/volley/AuthFailureError;

    invoke-direct {v1, v2}, Lcom/inveno/se/volley/AuthFailureError;-><init>(Lcom/inveno/se/volley/NetworkResponse;)V

    invoke-static {v0, p1, v1}, Lcom/inveno/se/volley/toolbox/BasicNetwork;->attemptRetryOnException(Ljava/lang/String;Lcom/inveno/se/volley/Request;Lcom/inveno/se/volley/VolleyError;)V

    goto/16 :goto_0

    :cond_3
    new-instance v1, Lcom/inveno/se/volley/NoConnectionError;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/NoConnectionError;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_4
    new-instance v0, Lcom/inveno/se/volley/ServerError;

    invoke-direct {v0, v2}, Lcom/inveno/se/volley/ServerError;-><init>(Lcom/inveno/se/volley/NetworkResponse;)V

    throw v0

    :cond_5
    new-instance v0, Lcom/inveno/se/volley/NetworkError;

    invoke-direct {v0, v3}, Lcom/inveno/se/volley/NetworkError;-><init>(Lcom/inveno/se/volley/NetworkResponse;)V

    throw v0

    :catch_5
    move-exception v0

    move-object v2, v8

    goto :goto_2

    :catch_6
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_2
.end method

.method public process(JJ)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;->process(JJ)V

    :cond_0
    return-void
.end method

.method public setProcessListner(Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/BasicNetwork;->processListner:Lcom/inveno/se/volley/toolbox/BasicNetwork$LoadingProcessListner;

    return-void
.end method
