.class final Lcom/loc/dd$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/loc/dd;->a(Landroid/content/Context;Lcom/loc/cy;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/loc/cy;

.field final synthetic d:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/loc/cy;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/loc/dd$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/loc/dd$1;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/loc/dd$1;->c:Lcom/loc/cy;

    iput-object p4, p0, Lcom/loc/dd$1;->d:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    iget-object v0, p0, Lcom/loc/dd$1;->a:Landroid/content/Context;

    const/4 v0, 0x1

    invoke-static {v0}, Lcom/loc/dd;->d(I)Lcom/loc/e;

    move-result-object v0

    iget-object v1, p0, Lcom/loc/dd$1;->b:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/loc/dd$1;->c:Lcom/loc/cy;

    iget-object v2, p0, Lcom/loc/dd$1;->a:Landroid/content/Context;

    new-instance v3, Ljava/lang/Throwable;

    const-string v4, "gpsstatistics"

    invoke-direct {v3, v4}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/loc/dd$1;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/loc/e;->a(Lcom/loc/cy;Landroid/content/Context;Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget-object v1, p0, Lcom/loc/dd$1;->c:Lcom/loc/cy;

    iget-object v2, p0, Lcom/loc/dd$1;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/loc/dd$1;->b:Ljava/lang/String;

    iget-object v4, p0, Lcom/loc/dd$1;->d:Ljava/lang/String;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {v0 .. v6}, Lcom/loc/e;->a(Lcom/loc/cy;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0
.end method
