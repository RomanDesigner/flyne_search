.class Lcom/inveno/se/volley/RequestQueue$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/RequestQueue$RequestFilter;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/volley/RequestQueue;

.field final synthetic val$tag:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/RequestQueue;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/RequestQueue$1;->this$0:Lcom/inveno/se/volley/RequestQueue;

    iput-object p2, p0, Lcom/inveno/se/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Lcom/inveno/se/volley/Request;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/inveno/se/volley/Request",
            "<*>;)Z"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/inveno/se/volley/Request;->getTag()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/inveno/se/volley/RequestQueue$1;->val$tag:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
