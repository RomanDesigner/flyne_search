.class final Lcom/meizu/flyme/media/news/lite/f$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/flyme/media/news/protocol/c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/flyme/media/news/lite/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/meizu/flyme/media/news/protocol/c",
        "<",
        "Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 82
    check-cast p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;

    invoke-virtual {p0, p1}, Lcom/meizu/flyme/media/news/lite/f$1;->a(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 85
    iget-object v0, p1, Lcom/meizu/flyme/media/news/data/NewsFullArticleEntity;->title:Ljava/lang/String;

    return-object v0
.end method
