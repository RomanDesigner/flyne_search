.class final Lcom/google/gson/a/a/c$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/gson/u;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/gson/a/a/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/google/gson/e;Lcom/google/gson/b/a;)Lcom/google/gson/t;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/google/gson/e;",
            "Lcom/google/gson/b/a",
            "<TT;>;)",
            "Lcom/google/gson/t",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 45
    invoke-virtual {p2}, Lcom/google/gson/b/a;->a()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/util/Date;

    if-ne v0, v1, :cond_0

    new-instance v0, Lcom/google/gson/a/a/c;

    invoke-direct {v0}, Lcom/google/gson/a/a/c;-><init>()V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
