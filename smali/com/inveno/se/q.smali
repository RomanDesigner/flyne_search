.class Lcom/inveno/se/q;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/reportsdk/q;


# instance fields
.field final synthetic a:Lcom/inveno/se/callback/ZZReuqestListener;

.field final synthetic b:Lcom/inveno/se/a;


# direct methods
.method constructor <init>(Lcom/inveno/se/a;Lcom/inveno/se/callback/ZZReuqestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/q;->b:Lcom/inveno/se/a;

    iput-object p2, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual {v0, p1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    return-void
.end method

.method public a(Lorg/json/JSONObject;)V
    .locals 4

    :try_start_0
    invoke-static {p1}, Lcom/inveno/se/model/ZZNews;->parse(Lorg/json/JSONObject;)Lcom/inveno/se/model/ZZNews;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    const-string v1, "relevant is null"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNews;->getCode()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    const-string v1, "relevant\'s code is null"

    invoke-virtual {v0, v1}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v1, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    const-string v1, "200"

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNews;->getCode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "relevant\'s code "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/inveno/se/model/ZZNews;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/inveno/se/callback/ZZReuqestListener;->onFailure(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/inveno/se/q;->a:Lcom/inveno/se/callback/ZZReuqestListener;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/inveno/se/callback/ZZReuqestListener;->onSuccess(Ljava/lang/Object;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
