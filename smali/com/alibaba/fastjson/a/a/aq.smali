.class public Lcom/alibaba/fastjson/a/a/aq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/a/a/am;


# static fields
.field public static final a:Lcom/alibaba/fastjson/a/a/aq;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    new-instance v0, Lcom/alibaba/fastjson/a/a/aq;

    invoke-direct {v0}, Lcom/alibaba/fastjson/a/a/aq;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/a/a/aq;->a:Lcom/alibaba/fastjson/a/a/aq;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            ")TT;"
        }
    .end annotation

    .prologue
    const/16 v3, 0x10

    .line 20
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->k()Lcom/alibaba/fastjson/a/e;

    move-result-object v1

    .line 21
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x4

    if-ne v0, v2, :cond_0

    .line 22
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->w()Ljava/lang/String;

    move-result-object v0

    .line 23
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    .line 39
    :goto_0
    return-object v0

    .line 27
    :cond_0
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->d()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 28
    invoke-virtual {v1}, Lcom/alibaba/fastjson/a/e;->B()Ljava/lang/String;

    move-result-object v0

    .line 29
    invoke-virtual {v1, v3}, Lcom/alibaba/fastjson/a/e;->b(I)V

    goto :goto_0

    .line 33
    :cond_1
    invoke-virtual {p0}, Lcom/alibaba/fastjson/a/c;->j()Ljava/lang/Object;

    move-result-object v0

    .line 35
    if-nez v0, :cond_2

    .line 36
    const/4 v0, 0x0

    goto :goto_0

    .line 39
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public a()I
    .locals 1

    .prologue
    .line 43
    const/4 v0, 0x4

    return v0
.end method

.method public a(Lcom/alibaba/fastjson/a/c;Ljava/lang/reflect/Type;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/alibaba/fastjson/a/c;",
            "Ljava/lang/reflect/Type;",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .prologue
    .line 15
    invoke-static {p1}, Lcom/alibaba/fastjson/a/a/aq;->a(Lcom/alibaba/fastjson/a/c;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
