.class public Lc/i;
.super Lc/t;
.source "SourceFile"


# instance fields
.field private a:Lc/t;


# direct methods
.method public constructor <init>(Lc/t;)V
    .locals 2

    .prologue
    .line 25
    invoke-direct {p0}, Lc/t;-><init>()V

    .line 26
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 27
    :cond_0
    iput-object p1, p0, Lc/i;->a:Lc/t;

    .line 28
    return-void
.end method


# virtual methods
.method public final a(Lc/t;)Lc/i;
    .locals 2

    .prologue
    .line 36
    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "delegate == null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lc/i;->a:Lc/t;

    .line 38
    return-object p0
.end method

.method public final a()Lc/t;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lc/i;->a:Lc/t;

    return-object v0
.end method

.method public a(J)Lc/t;
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0, p1, p2}, Lc/t;->a(J)Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public a(JLjava/util/concurrent/TimeUnit;)Lc/t;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0, p1, p2, p3}, Lc/t;->a(JLjava/util/concurrent/TimeUnit;)Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public c_()J
    .locals 2

    .prologue
    .line 46
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->c_()J

    move-result-wide v0

    return-wide v0
.end method

.method public d()J
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->d()J

    move-result-wide v0

    return-wide v0
.end method

.method public d_()Z
    .locals 1

    .prologue
    .line 50
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->d_()Z

    move-result v0

    return v0
.end method

.method public e_()Lc/t;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->e_()Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public f()Lc/t;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->f()Lc/t;

    move-result-object v0

    return-object v0
.end method

.method public g()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 70
    iget-object v0, p0, Lc/i;->a:Lc/t;

    invoke-virtual {v0}, Lc/t;->g()V

    .line 71
    return-void
.end method
