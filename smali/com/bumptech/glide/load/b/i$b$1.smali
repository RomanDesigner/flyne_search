.class Lcom/bumptech/glide/load/b/i$b$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/bumptech/glide/util/a/a$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/bumptech/glide/load/b/i$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/bumptech/glide/util/a/a$a",
        "<",
        "Lcom/bumptech/glide/load/b/j",
        "<*>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bumptech/glide/load/b/i$b;


# direct methods
.method constructor <init>(Lcom/bumptech/glide/load/b/i$b;)V
    .locals 0

    .prologue
    .line 458
    iput-object p1, p0, Lcom/bumptech/glide/load/b/i$b$1;->a:Lcom/bumptech/glide/load/b/i$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lcom/bumptech/glide/load/b/j;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/bumptech/glide/load/b/j",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 461
    new-instance v0, Lcom/bumptech/glide/load/b/j;

    iget-object v1, p0, Lcom/bumptech/glide/load/b/i$b$1;->a:Lcom/bumptech/glide/load/b/i$b;

    iget-object v1, v1, Lcom/bumptech/glide/load/b/i$b;->a:Lcom/bumptech/glide/load/b/c/a;

    iget-object v2, p0, Lcom/bumptech/glide/load/b/i$b$1;->a:Lcom/bumptech/glide/load/b/i$b;

    iget-object v2, v2, Lcom/bumptech/glide/load/b/i$b;->b:Lcom/bumptech/glide/load/b/c/a;

    iget-object v3, p0, Lcom/bumptech/glide/load/b/i$b$1;->a:Lcom/bumptech/glide/load/b/i$b;

    iget-object v3, v3, Lcom/bumptech/glide/load/b/i$b;->c:Lcom/bumptech/glide/load/b/c/a;

    iget-object v4, p0, Lcom/bumptech/glide/load/b/i$b$1;->a:Lcom/bumptech/glide/load/b/i$b;

    iget-object v4, v4, Lcom/bumptech/glide/load/b/i$b;->d:Lcom/bumptech/glide/load/b/k;

    iget-object v5, p0, Lcom/bumptech/glide/load/b/i$b$1;->a:Lcom/bumptech/glide/load/b/i$b;

    iget-object v5, v5, Lcom/bumptech/glide/load/b/i$b;->e:Landroid/support/v4/util/Pools$Pool;

    invoke-direct/range {v0 .. v5}, Lcom/bumptech/glide/load/b/j;-><init>(Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/c/a;Lcom/bumptech/glide/load/b/k;Landroid/support/v4/util/Pools$Pool;)V

    return-object v0
.end method

.method public synthetic b()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 458
    invoke-virtual {p0}, Lcom/bumptech/glide/load/b/i$b$1;->a()Lcom/bumptech/glide/load/b/j;

    move-result-object v0

    return-object v0
.end method
