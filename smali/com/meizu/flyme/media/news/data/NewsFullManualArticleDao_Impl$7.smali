.class Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$7;
.super Landroid/arch/persistence/room/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;-><init>(Landroid/arch/persistence/room/f;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;


# direct methods
.method constructor <init>(Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;Landroid/arch/persistence/room/f;)V
    .locals 0

    .prologue
    .line 229
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$7;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/j;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 232
    const-string v0, "DELETE FROM manual_articles WHERE newsAddTime < ?"

    .line 233
    const-string v0, "DELETE FROM manual_articles WHERE newsAddTime < ?"

    return-object v0
.end method
