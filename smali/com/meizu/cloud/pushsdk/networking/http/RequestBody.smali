.class public abstract Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 1

    .prologue
    .line 57
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Lcom/meizu/cloud/pushsdk/networking/okio/ByteString;)V

    return-object v0
.end method

.method public static create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 2

    .prologue
    .line 109
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 111
    :cond_0
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$3;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/io/File;)V

    return-object v0
.end method

.method public static create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 3

    .prologue
    .line 43
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 44
    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->charset()Ljava/nio/charset/Charset;

    move-result-object v0

    .line 46
    if-nez v0, :cond_0

    .line 47
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/http/Util;->UTF_8:Ljava/nio/charset/Charset;

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "; charset=utf-8"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/meizu/cloud/pushsdk/networking/http/MediaType;->parse(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/networking/http/MediaType;

    move-result-object p0

    .line 51
    :cond_0
    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 52
    invoke-static {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[B)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[B)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 2

    .prologue
    .line 79
    const/4 v0, 0x0

    array-length v1, p1

    invoke-static {p0, p1, v0, v1}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;->create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[BII)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;

    move-result-object v0

    return-object v0
.end method

.method public static create(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;[BII)Lcom/meizu/cloud/pushsdk/networking/http/RequestBody;
    .locals 6

    .prologue
    .line 85
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "content == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_0
    array-length v0, p1

    int-to-long v0, v0

    int-to-long v2, p2

    int-to-long v4, p3

    invoke-static/range {v0 .. v5}, Lcom/meizu/cloud/pushsdk/networking/http/Util;->checkOffsetAndCount(JJJ)V

    .line 87
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$2;

    invoke-direct {v0, p0, p3, p1, p2}, Lcom/meizu/cloud/pushsdk/networking/http/RequestBody$2;-><init>(Lcom/meizu/cloud/pushsdk/networking/http/MediaType;I[BI)V

    return-object v0
.end method


# virtual methods
.method public content()[B
    .locals 1

    .prologue
    .line 35
    const/4 v0, 0x0

    new-array v0, v0, [B

    return-object v0
.end method

.method public contentLength()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 27
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public abstract contentType()Lcom/meizu/cloud/pushsdk/networking/http/MediaType;
.end method

.method public abstract writeTo(Lcom/meizu/cloud/pushsdk/networking/okio/BufferedSink;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
