.class Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/gslb2/GslbDataRefreshReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Intent;

.field final synthetic b:Lcom/meizu/gslb2/GslbDataRefreshReceiver;


# direct methods
.method constructor <init>(Lcom/meizu/gslb2/GslbDataRefreshReceiver;Landroid/content/Intent;)V
    .locals 0

    .prologue
    .line 25
    iput-object p1, p0, Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;->b:Lcom/meizu/gslb2/GslbDataRefreshReceiver;

    iput-object p2, p0, Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;->a:Landroid/content/Intent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 28
    iget-object v0, p0, Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;->b:Lcom/meizu/gslb2/GslbDataRefreshReceiver;

    iget-object v1, p0, Lcom/meizu/gslb2/GslbDataRefreshReceiver$1;->a:Landroid/content/Intent;

    const-string v2, "gslb"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/gslb2/GslbDataRefreshReceiver;->a(Lcom/meizu/gslb2/GslbDataRefreshReceiver;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    array-length v0, v2

    if-lez v0, :cond_1

    .line 30
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    array-length v0, v2

    if-ge v1, v0, :cond_1

    .line 31
    sget-object v3, Lcom/meizu/gslb2/GslbManager;->sManagerList:Ljava/util/List;

    monitor-enter v3

    .line 32
    :try_start_0
    sget-object v0, Lcom/meizu/gslb2/GslbManager;->sManagerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/gslb2/GslbManager;

    .line 33
    aget-object v5, v2, v1

    invoke-virtual {v0, v5}, Lcom/meizu/gslb2/GslbManager;->remove(Ljava/lang/String;)V

    goto :goto_1

    .line 35
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_0
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 38
    :cond_1
    return-void
.end method
