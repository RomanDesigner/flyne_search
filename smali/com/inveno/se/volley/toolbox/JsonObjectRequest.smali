.class public Lcom/inveno/se/volley/toolbox/JsonObjectRequest;
.super Lcom/inveno/se/volley/toolbox/JsonRequest;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/inveno/se/volley/toolbox/JsonRequest",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/JsonRequest;-><init>(ILjava/lang/String;Ljava/lang/String;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V

    return-void

    :cond_0
    invoke-virtual {p3}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Lorg/json/JSONObject;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lorg/json/JSONObject;",
            "Lcom/inveno/se/volley/Response$Listener",
            "<",
            "Lorg/json/JSONObject;",
            ">;",
            "Lcom/inveno/se/volley/Response$ErrorListener;",
            ")V"
        }
    .end annotation

    if-nez p2, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/inveno/se/volley/toolbox/JsonObjectRequest;-><init>(ILjava/lang/String;Lorg/json/JSONObject;Lcom/inveno/se/volley/Response$Listener;Lcom/inveno/se/volley/Response$ErrorListener;)V

    return-void

    :cond_0
    const/4 v1, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected parseNetworkResponse(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Response;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/NetworkResponse;",
            ")",
            "Lcom/inveno/se/volley/Response",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    :try_start_0
    new-instance v0, Ljava/lang/String;

    iget-object v1, p1, Lcom/inveno/se/volley/NetworkResponse;->data:[B

    iget-object v2, p1, Lcom/inveno/se/volley/NetworkResponse;->headers:Ljava/util/Map;

    invoke-static {v2}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCharset(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Lcom/inveno/se/volley/toolbox/HttpHeaderParser;->parseCacheHeaders(Lcom/inveno/se/volley/NetworkResponse;)Lcom/inveno/se/volley/Cache$Entry;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/inveno/se/volley/Response;->success(Ljava/lang/Object;Lcom/inveno/se/volley/Cache$Entry;)Lcom/inveno/se/volley/Response;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lcom/inveno/se/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/inveno/se/volley/Response;->error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    goto :goto_0

    :catch_1
    move-exception v0

    new-instance v1, Lcom/inveno/se/volley/ParseError;

    invoke-direct {v1, v0}, Lcom/inveno/se/volley/ParseError;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v1}, Lcom/inveno/se/volley/Response;->error(Lcom/inveno/se/volley/VolleyError;)Lcom/inveno/se/volley/Response;

    move-result-object v0

    goto :goto_0
.end method
