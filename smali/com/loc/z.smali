.class public final Lcom/loc/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# static fields
.field private static a:Lcom/loc/z;


# instance fields
.field private b:Ljava/lang/Thread$UncaughtExceptionHandler;

.field private c:Landroid/content/Context;

.field private d:Lcom/loc/cy;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/loc/cy;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/z;->c:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/z;->d:Lcom/loc/cy;

    invoke-static {}, Ljava/lang/Thread;->getDefaultUncaughtExceptionHandler()Ljava/lang/Thread$UncaughtExceptionHandler;

    move-result-object v0

    iput-object v0, p0, Lcom/loc/z;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-static {p0}, Ljava/lang/Thread;->setDefaultUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    return-void
.end method

.method static declared-synchronized a(Landroid/content/Context;Lcom/loc/cy;)Lcom/loc/z;
    .locals 2

    const-class v1, Lcom/loc/z;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/loc/z;->a:Lcom/loc/z;

    if-nez v0, :cond_0

    new-instance v0, Lcom/loc/z;

    invoke-direct {v0, p0, p1}, Lcom/loc/z;-><init>(Landroid/content/Context;Lcom/loc/cy;)V

    sput-object v0, Lcom/loc/z;->a:Lcom/loc/z;

    :cond_0
    sget-object v0, Lcom/loc/z;->a:Lcom/loc/z;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 4

    invoke-static {p2}, Lcom/loc/cz;->a(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v0

    :try_start_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "amapdynamic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "admic"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    :cond_0
    const-string v1, "com.amap.api"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_7

    new-instance v1, Lcom/loc/g;

    iget-object v2, p0, Lcom/loc/z;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aa;->b()Lcom/loc/aa;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/f;)V

    const-string v2, "loc"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v3, "loc"

    invoke-static {v1, v2, v3}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V

    :cond_1
    const-string v2, "navi"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v3, "navi"

    invoke-static {v1, v2, v3}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    const-string v2, "sea"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-object v2, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v3, "sea"

    invoke-static {v1, v2, v3}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V

    :cond_3
    const-string v2, "2dmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v3, "2dmap"

    invoke-static {v1, v2, v3}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V

    :cond_4
    const-string v2, "3dmap"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v2, "3dmap"

    invoke-static {v1, v0, v2}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/loc/z;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/loc/z;->b:Ljava/lang/Thread$UncaughtExceptionHandler;

    invoke-interface {v0, p1, p2}, Ljava/lang/Thread$UncaughtExceptionHandler;->uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    :cond_6
    return-void

    :cond_7
    :try_start_1
    const-string v1, "com.autonavi.aps.amapapi.offline"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_8

    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/z;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aa;->b()Lcom/loc/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/f;)V

    iget-object v1, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v2, "OfflineLocation"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    const-string v1, "DynamicExceptionHandler"

    const-string v2, "uncaughtException"

    invoke-static {v0, v1, v2}, Lcom/loc/dc;->a(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_8
    :try_start_2
    const-string v1, "com.data.carrier_v4"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/z;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aa;->b()Lcom/loc/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/f;)V

    iget-object v1, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v2, "Collection"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_0

    :cond_9
    const-string v1, "com.autonavi.aps.amapapi.httpdns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "com.autonavi.httpdns"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_5

    :cond_a
    new-instance v0, Lcom/loc/g;

    iget-object v1, p0, Lcom/loc/z;->c:Landroid/content/Context;

    invoke-static {}, Lcom/loc/aa;->b()Lcom/loc/aa;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/loc/g;-><init>(Landroid/content/Context;Lcom/loc/f;)V

    iget-object v1, p0, Lcom/loc/z;->c:Landroid/content/Context;

    const-string v2, "HttpDNS"

    invoke-static {v0, v1, v2}, Lcom/loc/w;->a(Lcom/loc/g;Landroid/content/Context;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0
.end method
