.class final Lcom/loc/df$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/df;->a(Landroid/content/Context;Lcom/loc/cy;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Lcom/loc/cy;

.field final synthetic c:Z

.field final synthetic d:Lcom/loc/df;


# direct methods
.method constructor <init>(Lcom/loc/df;Landroid/content/Context;Lcom/loc/cy;Z)V
    .locals 0

    iput-object p1, p0, Lcom/loc/df$1;->d:Lcom/loc/df;

    iput-object p2, p0, Lcom/loc/df$1;->a:Landroid/content/Context;

    iput-object p3, p0, Lcom/loc/df$1;->b:Lcom/loc/cy;

    iput-boolean p4, p0, Lcom/loc/df$1;->c:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    :try_start_0
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    :try_start_1
    new-instance v0, Lcom/loc/n;

    iget-object v2, p0, Lcom/loc/df$1;->a:Landroid/content/Context;

    const/4 v3, 0x1

    invoke-direct {v0, v2, v3}, Lcom/loc/n;-><init>(Landroid/content/Context;Z)V

    iget-object v2, p0, Lcom/loc/df$1;->b:Lcom/loc/cy;

    invoke-virtual {v0, v2}, Lcom/loc/n;->a(Lcom/loc/cy;)V

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-boolean v0, p0, Lcom/loc/df$1;->c:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    monitor-enter v1
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    :try_start_3
    new-instance v0, Lcom/loc/o;

    iget-object v2, p0, Lcom/loc/df$1;->a:Landroid/content/Context;

    invoke-direct {v0, v2}, Lcom/loc/o;-><init>(Landroid/content/Context;)V

    new-instance v2, Lcom/loc/p;

    invoke-direct {v2}, Lcom/loc/p;-><init>()V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/p;->c(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/p;->a(Z)V

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/loc/p;->b(Z)V

    invoke-virtual {v0, v2}, Lcom/loc/o;->a(Lcom/loc/p;)V

    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :try_start_4
    iget-object v0, p0, Lcom/loc/df$1;->d:Lcom/loc/df;

    invoke-static {v0}, Lcom/loc/df;->a(Lcom/loc/df;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/loc/dd;->a(Landroid/content/Context;)V

    :cond_0
    :goto_0
    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    :catchall_1
    move-exception v0

    :try_start_5
    monitor-exit v1

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
.end method
