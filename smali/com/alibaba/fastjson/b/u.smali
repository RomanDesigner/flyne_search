.class public Lcom/alibaba/fastjson/b/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/alibaba/fastjson/b/aj;


# static fields
.field public static a:Lcom/alibaba/fastjson/b/u;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lcom/alibaba/fastjson/b/u;

    invoke-direct {v0}, Lcom/alibaba/fastjson/b/u;-><init>()V

    sput-object v0, Lcom/alibaba/fastjson/b/u;->a:Lcom/alibaba/fastjson/b/u;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/b/z;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/reflect/Type;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/alibaba/fastjson/b/z;->i()Lcom/alibaba/fastjson/b/ao;

    move-result-object v1

    .line 31
    if-nez p2, :cond_2

    .line 32
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteNullNumberAsZero:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 33
    const/16 v0, 0x30

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    .line 57
    :cond_0
    :goto_0
    return-void

    .line 35
    :cond_1
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 40
    :cond_2
    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 42
    invoke-static {v0}, Ljava/lang/Float;->isNaN(F)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 43
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 44
    :cond_3
    invoke-static {v0}, Ljava/lang/Float;->isInfinite(F)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 45
    invoke-virtual {v1}, Lcom/alibaba/fastjson/b/ao;->a()V

    goto :goto_0

    .line 47
    :cond_4
    invoke-static {v0}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    .line 48
    const-string v2, ".0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 49
    const/4 v2, 0x0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x2

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 51
    :cond_5
    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->write(Ljava/lang/String;)V

    .line 53
    sget-object v0, Lcom/alibaba/fastjson/b/ap;->WriteClassName:Lcom/alibaba/fastjson/b/ap;

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/b/z;->a(Lcom/alibaba/fastjson/b/ap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const/16 v0, 0x46

    invoke-virtual {v1, v0}, Lcom/alibaba/fastjson/b/ao;->a(C)V

    goto :goto_0
.end method
