.class Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$6;
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
    .line 222
    iput-object p1, p0, Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl$6;->this$0:Lcom/meizu/flyme/media/news/data/NewsFullManualArticleDao_Impl;

    invoke-direct {p0, p2}, Landroid/arch/persistence/room/j;-><init>(Landroid/arch/persistence/room/f;)V

    return-void
.end method


# virtual methods
.method public createQuery()Ljava/lang/String;
    .locals 1

    .prologue
    .line 225
    const-string v0, "UPDATE manual_articles SET newsChangeTime = ? WHERE (contentId = ? AND cpEntityId = ? AND cpId = ?)"

    .line 226
    const-string v0, "UPDATE manual_articles SET newsChangeTime = ? WHERE (contentId = ? AND cpEntityId = ? AND cpId = ?)"

    return-object v0
.end method
