.class public Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
.super Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$Watchdog;
    }
.end annotation


# static fields
.field private static head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;


# instance fields
.field private inQueue:Z

.field private next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

.field private timeoutAt:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/Timeout;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-static {}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->awaitTimeout()Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized awaitTimeout()Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .prologue
    const-wide/32 v8, 0xf4240

    const/4 v0, 0x0

    .line 306
    const-class v2, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    monitor-enter v2

    :try_start_0
    sget-object v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    iget-object v1, v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 309
    if-nez v1, :cond_0

    .line 310
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 329
    :goto_0
    monitor-exit v2

    return-object v0

    .line 314
    :cond_0
    :try_start_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    invoke-direct {v1, v4, v5}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    .line 317
    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 320
    const-wide/32 v6, 0xf4240

    div-long v6, v4, v6

    .line 321
    mul-long/2addr v8, v6

    sub-long/2addr v4, v8

    .line 322
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    long-to-int v3, v4

    invoke-virtual {v1, v6, v7, v3}, Ljava/lang/Object;->wait(JI)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 306
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0

    .line 327
    :cond_1
    :try_start_2
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    iget-object v3, v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    iput-object v3, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 328
    const/4 v0, 0x0

    iput-object v0, v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v1

    .line 329
    goto :goto_0
.end method

.method private static declared-synchronized cancelScheduledTimeout(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;)Z
    .locals 3

    .prologue
    .line 116
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    :goto_0
    if-eqz v0, :cond_1

    .line 117
    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    if-ne v2, p0, :cond_0

    .line 118
    iget-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    iput-object v2, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 119
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    const/4 v0, 0x0

    .line 125
    :goto_1
    monitor-exit v1

    return v0

    .line 116
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x1

    goto :goto_1

    .line 116
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private remainingNanos(J)J
    .locals 3

    .prologue
    .line 133
    iget-wide v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->timeoutAt:J

    sub-long/2addr v0, p1

    return-wide v0
.end method

.method private static declared-synchronized scheduleTimeout(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;JZ)V
    .locals 9

    .prologue
    const-wide/16 v4, 0x0

    .line 74
    const-class v1, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    if-nez v0, :cond_0

    .line 75
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;-><init>()V

    sput-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 76
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$Watchdog;

    invoke-direct {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$Watchdog;-><init>()V

    invoke-virtual {v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$Watchdog;->start()V

    .line 79
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    .line 80
    cmp-long v0, p1, v4

    if-eqz v0, :cond_3

    if-eqz p3, :cond_3

    .line 83
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v2

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->timeoutAt:J

    .line 93
    :goto_0
    invoke-direct {p0, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v4

    .line 94
    sget-object v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 95
    :goto_1
    iget-object v6, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-direct {v6, v2, v3}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->remainingNanos(J)J

    move-result-wide v6

    cmp-long v6, v4, v6

    if-gez v6, :cond_6

    .line 96
    :cond_1
    iget-object v2, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    iput-object v2, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 97
    iput-object p0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    .line 98
    sget-object v2, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->head:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    if-ne v0, v2, :cond_2

    .line 99
    const-class v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;

    invoke-virtual {v0}, Ljava/lang/Object;->notify()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 104
    :cond_2
    monitor-exit v1

    return-void

    .line 84
    :cond_3
    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    .line 85
    add-long v4, v2, p1

    :try_start_1
    iput-wide v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->timeoutAt:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 86
    :cond_4
    if-eqz p3, :cond_5

    .line 87
    :try_start_2
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->deadlineNanoTime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->timeoutAt:J

    goto :goto_0

    .line 89
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 94
    :cond_6
    iget-object v0, v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->next:Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method


# virtual methods
.method public final enter()V
    .locals 6

    .prologue
    .line 61
    iget-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->inQueue:Z

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unbalanced enter/exit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 62
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->timeoutNanos()J

    move-result-wide v0

    .line 63
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->hasDeadline()Z

    move-result v2

    .line 64
    const-wide/16 v4, 0x0

    cmp-long v3, v0, v4

    if-nez v3, :cond_1

    if-nez v2, :cond_1

    .line 69
    :goto_0
    return-void

    .line 67
    :cond_1
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->inQueue:Z

    .line 68
    invoke-static {p0, v0, v1, v2}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->scheduleTimeout(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;JZ)V

    goto :goto_0
.end method

.method final exit(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 259
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit()Z

    move-result v0

    if-nez v0, :cond_0

    .line 260
    :goto_0
    return-object p1

    :cond_0
    invoke-virtual {p0, p1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object p1

    goto :goto_0
.end method

.method final exit(Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 248
    invoke-virtual {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->exit()Z

    move-result v0

    .line 249
    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    .line 250
    :cond_0
    return-void
.end method

.method public final exit()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 108
    iget-boolean v1, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->inQueue:Z

    if-nez v1, :cond_0

    .line 110
    :goto_0
    return v0

    .line 109
    :cond_0
    iput-boolean v0, p0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->inQueue:Z

    .line 110
    invoke-static {p0}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;->cancelScheduledTimeout(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;)Z

    move-result v0

    goto :goto_0
.end method

.method protected newTimeoutException(Ljava/io/IOException;)Ljava/io/IOException;
    .locals 2

    .prologue
    .line 269
    new-instance v0, Ljava/io/InterruptedIOException;

    const-string v1, "timeout"

    invoke-direct {v0, v1}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    .line 270
    if-eqz p1, :cond_0

    .line 271
    invoke-virtual {v0, p1}, Ljava/io/InterruptedIOException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 273
    :cond_0
    return-object v0
.end method

.method public final sink(Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)Lcom/meizu/cloud/pushsdk/networking/okio/Sink;
    .locals 1

    .prologue
    .line 149
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$1;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;Lcom/meizu/cloud/pushsdk/networking/okio/Sink;)V

    return-object v0
.end method

.method public final source(Lcom/meizu/cloud/pushsdk/networking/okio/Source;)Lcom/meizu/cloud/pushsdk/networking/okio/Source;
    .locals 1

    .prologue
    .line 205
    new-instance v0, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$2;

    invoke-direct {v0, p0, p1}, Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout$2;-><init>(Lcom/meizu/cloud/pushsdk/networking/okio/AsyncTimeout;Lcom/meizu/cloud/pushsdk/networking/okio/Source;)V

    return-object v0
.end method

.method protected timedOut()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method
