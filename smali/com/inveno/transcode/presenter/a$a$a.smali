.class Lcom/inveno/transcode/presenter/a$a$a;
.super Ljava/io/FilterOutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/transcode/presenter/a$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "a"
.end annotation


# instance fields
.field final synthetic a:Lcom/inveno/transcode/presenter/a$a;


# direct methods
.method private constructor <init>(Lcom/inveno/transcode/presenter/a$a;Ljava/io/OutputStream;)V
    .locals 0

    .prologue
    .line 843
    iput-object p1, p0, Lcom/inveno/transcode/presenter/a$a$a;->a:Lcom/inveno/transcode/presenter/a$a;

    .line 844
    invoke-direct {p0, p2}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 845
    return-void
.end method

.method synthetic constructor <init>(Lcom/inveno/transcode/presenter/a$a;Ljava/io/OutputStream;Lcom/inveno/transcode/presenter/b;)V
    .locals 0

    .prologue
    .line 842
    invoke-direct {p0, p1, p2}, Lcom/inveno/transcode/presenter/a$a$a;-><init>(Lcom/inveno/transcode/presenter/a$a;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 865
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 869
    :goto_0
    return-void

    .line 866
    :catch_0
    move-exception v0

    .line 867
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->a:Lcom/inveno/transcode/presenter/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/transcode/presenter/a$a;->a(Lcom/inveno/transcode/presenter/a$a;Z)Z

    goto :goto_0
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 873
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 877
    :goto_0
    return-void

    .line 874
    :catch_0
    move-exception v0

    .line 875
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->a:Lcom/inveno/transcode/presenter/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/transcode/presenter/a$a;->a(Lcom/inveno/transcode/presenter/a$a;Z)Z

    goto :goto_0
.end method

.method public write(I)V
    .locals 2

    .prologue
    .line 849
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :goto_0
    return-void

    .line 850
    :catch_0
    move-exception v0

    .line 851
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->a:Lcom/inveno/transcode/presenter/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/transcode/presenter/a$a;->a(Lcom/inveno/transcode/presenter/a$a;Z)Z

    goto :goto_0
.end method

.method public write([BII)V
    .locals 2

    .prologue
    .line 857
    :try_start_0
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 861
    :goto_0
    return-void

    .line 858
    :catch_0
    move-exception v0

    .line 859
    iget-object v0, p0, Lcom/inveno/transcode/presenter/a$a$a;->a:Lcom/inveno/transcode/presenter/a$a;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/inveno/transcode/presenter/a$a;->a(Lcom/inveno/transcode/presenter/a$a;Z)Z

    goto :goto_0
.end method
