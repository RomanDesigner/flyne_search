.class Lcom/inveno/se/adapi/http/AdAgreementImpl$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/inveno/se/volley/Response$Listener",
        "<",
        "Lorg/json/JSONObject;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/se/adapi/http/AdAgreementImpl;

.field final synthetic val$callback:Lcom/inveno/se/callback/DownloadCallback;


# direct methods
.method constructor <init>(Lcom/inveno/se/adapi/http/AdAgreementImpl;Lcom/inveno/se/callback/DownloadCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;->this$0:Lcom/inveno/se/adapi/http/AdAgreementImpl;

    iput-object p2, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;->val$callback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;->onResponse(Lorg/json/JSONObject;)V

    return-void
.end method

.method public onResponse(Lorg/json/JSONObject;)V
    .locals 1

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;->val$callback:Lcom/inveno/se/callback/DownloadCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/inveno/se/adapi/http/AdAgreementImpl$9;->val$callback:Lcom/inveno/se/callback/DownloadCallback;

    invoke-virtual {v0, p1}, Lcom/inveno/se/callback/DownloadCallback;->onSuccess(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method
