.class Lcom/google/gson/a/d$1;
.super Lcom/google/gson/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/gson/a/d;->a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/t;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/t",
        "<TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Z

.field final synthetic c:Lcom/google/gson/e;

.field final synthetic d:Lcom/google/gson/b/a;

.field final synthetic e:Lcom/google/gson/a/d;

.field private f:Lcom/google/gson/t;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/google/gson/a/d;ZZLcom/google/gson/e;Lcom/google/gson/b/a;)V
    .locals 0

    .prologue
    .line 120
    iput-object p1, p0, Lcom/google/gson/a/d$1;->e:Lcom/google/gson/a/d;

    iput-boolean p2, p0, Lcom/google/gson/a/d$1;->a:Z

    iput-boolean p3, p0, Lcom/google/gson/a/d$1;->b:Z

    iput-object p4, p0, Lcom/google/gson/a/d$1;->c:Lcom/google/gson/e;

    iput-object p5, p0, Lcom/google/gson/a/d$1;->d:Lcom/google/gson/b/a;

    invoke-direct {p0}, Lcom/google/gson/t;-><init>()V

    return-void
.end method

.method private b()Lcom/google/gson/t;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lcom/google/gson/a/d$1;->f:Lcom/google/gson/t;

    .line 142
    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/gson/a/d$1;->c:Lcom/google/gson/e;

    iget-object v1, p0, Lcom/google/gson/a/d$1;->e:Lcom/google/gson/a/d;

    iget-object v2, p0, Lcom/google/gson/a/d$1;->d:Lcom/google/gson/b/a;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/google/gson/e;->a(Lcom/google/gson/u;Lcom/google/gson/b/a;)Lcom/google/gson/t;

    move-result-object v0

    iput-object v0, p0, Lcom/google/gson/a/d$1;->f:Lcom/google/gson/t;

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/google/gson/c/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/c/c;",
            "TT;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 133
    iget-boolean v0, p0, Lcom/google/gson/a/d$1;->b:Z

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {p1}, Lcom/google/gson/c/c;->f()Lcom/google/gson/c/c;

    .line 138
    :goto_0
    return-void

    .line 137
    :cond_0
    invoke-direct {p0}, Lcom/google/gson/a/d$1;->b()Lcom/google/gson/t;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/gson/t;->a(Lcom/google/gson/c/c;Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public b(Lcom/google/gson/c/a;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/gson/c/a;",
            ")TT;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 125
    iget-boolean v0, p0, Lcom/google/gson/a/d$1;->a:Z

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p1}, Lcom/google/gson/c/a;->n()V

    .line 127
    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    :cond_0
    invoke-direct {p0}, Lcom/google/gson/a/d$1;->b()Lcom/google/gson/t;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/google/gson/t;->b(Lcom/google/gson/c/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method
