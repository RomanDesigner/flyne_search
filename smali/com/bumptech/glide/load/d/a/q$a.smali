.class Lcom/bumptech/glide/load/d/a/q$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/load/d/a/l$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/d/a/q;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "a"
.end annotation


# instance fields
.field private final a:Lcom/bumptech/glide/load/d/a/p;

.field private final b:Lcom/bumptech/glide/util/c;


# direct methods
.method public constructor <init>(Lcom/bumptech/glide/load/d/a/p;Lcom/bumptech/glide/util/c;)V
    .locals 0

    .prologue
    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/bumptech/glide/load/d/a/q$a;->a:Lcom/bumptech/glide/load/d/a/p;

    .line 80
    iput-object p2, p0, Lcom/bumptech/glide/load/d/a/q$a;->b:Lcom/bumptech/glide/util/c;

    .line 81
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/q$a;->a:Lcom/bumptech/glide/load/d/a/p;

    invoke-virtual {v0}, Lcom/bumptech/glide/load/d/a/p;->a()V

    .line 89
    return-void
.end method

.method public a(Lcom/bumptech/glide/load/b/a/e;Landroid/graphics/Bitmap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 97
    iget-object v0, p0, Lcom/bumptech/glide/load/d/a/q$a;->b:Lcom/bumptech/glide/util/c;

    invoke-virtual {v0}, Lcom/bumptech/glide/util/c;->a()Ljava/io/IOException;

    move-result-object v0

    .line 98
    if-eqz v0, :cond_1

    .line 99
    if-eqz p2, :cond_0

    .line 100
    invoke-interface {p1, p2}, Lcom/bumptech/glide/load/b/a/e;->a(Landroid/graphics/Bitmap;)V

    .line 102
    :cond_0
    throw v0

    .line 104
    :cond_1
    return-void
.end method
