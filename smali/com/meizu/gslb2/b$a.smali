.class Lcom/meizu/gslb2/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/gslb2/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field a:Ljava/lang/Object;

.field b:Ljava/lang/String;

.field c:Ljava/lang/String;

.field d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field e:Z

.field final synthetic f:Lcom/meizu/gslb2/b;


# direct methods
.method constructor <init>(Lcom/meizu/gslb2/b;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 104
    iput-object p1, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    iput-object p2, p0, Lcom/meizu/gslb2/b$a;->a:Ljava/lang/Object;

    .line 106
    iput-object p3, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    .line 108
    iput-object p5, p0, Lcom/meizu/gslb2/b$a;->d:Ljava/util/Map;

    .line 109
    return-void
.end method

.method private a()V
    .locals 9

    .prologue
    const/4 v1, 0x0

    .line 124
    .line 125
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->b(Lcom/meizu/gslb2/b;)Lcom/meizu/storage2/b;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/meizu/storage2/b;->a(Ljava/lang/String;)[B

    move-result-object v2

    .line 126
    if-eqz v2, :cond_3

    array-length v0, v2

    if-lez v0, :cond_3

    .line 127
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v2}, Ljava/lang/String;-><init>([B)V

    .line 128
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "load response:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;)V

    .line 130
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    if-eqz v0, :cond_7

    .line 138
    :try_start_1
    invoke-static {v0}, Lcom/meizu/gslb2/s;->a(Lorg/json/JSONObject;)Lcom/meizu/gslb2/DomainIpInfo;

    move-result-object v1

    .line 139
    if-eqz v1, :cond_0

    .line 140
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0}, Lcom/meizu/gslb2/b$a;->a(Lcom/meizu/gslb2/DomainIpInfo;Z)V

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from global storage success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/meizu/gslb2/f;->b(Ljava/lang/String;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v1

    .line 150
    :goto_1
    if-nez v0, :cond_6

    .line 152
    :try_start_2
    iget-object v1, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v1}, Lcom/meizu/gslb2/b;->c(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/q;

    move-result-object v1

    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    iget-object v4, p0, Lcom/meizu/gslb2/b$a;->d:Ljava/util/Map;

    invoke-virtual {v1, v2, v3, v4}, Lcom/meizu/gslb2/q;->a(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Lorg/json/JSONObject;

    move-result-object v1

    .line 153
    if-eqz v1, :cond_5

    .line 154
    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v2}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from server success"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/meizu/gslb2/f;->b(Ljava/lang/String;)V

    .line 155
    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v2}, Lcom/meizu/gslb2/b;->b(Lcom/meizu/gslb2/b;)Lcom/meizu/storage2/b;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->getBytes()[B

    move-result-object v4

    invoke-interface {v2, v3, v4}, Lcom/meizu/storage2/b;->a(Ljava/lang/String;[B)V

    .line 156
    invoke-static {v1}, Lcom/meizu/gslb2/s;->a(Lorg/json/JSONObject;)Lcom/meizu/gslb2/DomainIpInfo;

    move-result-object v0

    .line 157
    if-eqz v0, :cond_1

    .line 158
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/meizu/gslb2/b$a;->a(Lcom/meizu/gslb2/DomainIpInfo;Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    :cond_1
    :goto_2
    move-object v1, v0

    .line 166
    :goto_3
    if-nez v1, :cond_2

    .line 167
    new-instance v1, Lcom/meizu/gslb2/DomainIpInfo;

    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    const-wide/16 v4, 0x78

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct/range {v1 .. v7}, Lcom/meizu/gslb2/DomainIpInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JJ)V

    .line 170
    :cond_2
    :goto_4
    invoke-static {}, Lcom/meizu/gslb2/b;->a()Ljava/util/Map;

    move-result-object v2

    monitor-enter v2

    .line 171
    :try_start_3
    invoke-static {}, Lcom/meizu/gslb2/b;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 172
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 173
    iget-object v1, p0, Lcom/meizu/gslb2/b$a;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 174
    :try_start_4
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->a:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 175
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 176
    return-void

    .line 131
    :catch_0
    move-exception v0

    .line 132
    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v3}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v3

    const-string v4, "load from global storage"

    invoke-virtual {v3, v4, v0}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_3
    move-object v0, v1

    goto/16 :goto_0

    .line 143
    :catch_1
    move-exception v0

    .line 144
    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v3}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v3

    const-string v4, "parser from storage response"

    invoke-virtual {v3, v4, v0}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    if-eqz v2, :cond_4

    .line 146
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->b(Lcom/meizu/gslb2/b;)Lcom/meizu/storage2/b;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Lcom/meizu/storage2/b;->b(Ljava/lang/String;)V

    :cond_4
    move-object v0, v1

    goto/16 :goto_1

    .line 161
    :cond_5
    :try_start_5
    iget-object v1, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v1}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "convert "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from server failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/gslb2/f;->b(Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_2

    .line 163
    :catch_2
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    .line 164
    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v2}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "convert "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/meizu/gslb2/b$a;->b:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " form server"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 172
    :catchall_0
    move-exception v0

    :try_start_6
    monitor-exit v2
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    throw v0

    .line 175
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    throw v0

    :cond_6
    move-object v1, v0

    goto/16 :goto_4

    :cond_7
    move-object v0, v1

    goto/16 :goto_1
.end method

.method private a(Lcom/meizu/gslb2/DomainIpInfo;Z)V
    .locals 4

    .prologue
    .line 112
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 113
    iget-object v0, p1, Lcom/meizu/gslb2/DomainIpInfo;->mIpInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_1

    .line 114
    iget-object v0, p1, Lcom/meizu/gslb2/DomainIpInfo;->mIpInfos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/gslb2/o;

    .line 115
    invoke-virtual {v0}, Lcom/meizu/gslb2/o;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 116
    invoke-virtual {v0}, Lcom/meizu/gslb2/o;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 120
    :cond_1
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->eventListener()Lcom/meizu/gslb2/j;

    move-result-object v0

    invoke-virtual {p1}, Lcom/meizu/gslb2/DomainIpInfo;->getDomain()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, v1, p2}, Lcom/meizu/gslb2/j;->a(Ljava/lang/String;Ljava/util/List;Z)V

    .line 121
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 180
    iget-boolean v0, p0, Lcom/meizu/gslb2/b$a;->e:Z

    if-nez v0, :cond_2

    .line 181
    monitor-enter p0

    .line 182
    :try_start_0
    iget-boolean v0, p0, Lcom/meizu/gslb2/b$a;->e:Z

    if-nez v0, :cond_1

    .line 183
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    const-string v1, "ready to convert"

    invoke-virtual {v0, v1}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/gslb2/b$a;->e:Z

    .line 186
    invoke-static {}, Lcom/meizu/gslb2/b;->a()Ljava/util/Map;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 187
    :try_start_1
    invoke-static {}, Lcom/meizu/gslb2/b;->a()Ljava/util/Map;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/gslb2/b$a;->c:Ljava/lang/String;

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    .line 188
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 189
    :try_start_2
    iget-object v1, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v1}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasKey = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;)V

    .line 190
    if-nez v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/meizu/gslb2/b$a;->a()V

    .line 193
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/meizu/gslb2/b$a;->e:Z

    .line 197
    :goto_0
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 201
    :goto_1
    return-void

    .line 188
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 197
    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 195
    :cond_1
    :try_start_5
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    const-string v1, "convert running[1] in synchronized block"

    invoke-virtual {v0, v1}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/meizu/gslb2/b$a;->f:Lcom/meizu/gslb2/b;

    invoke-static {v0}, Lcom/meizu/gslb2/b;->a(Lcom/meizu/gslb2/b;)Lcom/meizu/gslb2/GslbManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/gslb2/GslbManager;->logger()Lcom/meizu/gslb2/f;

    move-result-object v0

    const-string v1, "convert running[0]"

    invoke-virtual {v0, v1}, Lcom/meizu/gslb2/f;->a(Ljava/lang/String;)V

    goto :goto_1
.end method
