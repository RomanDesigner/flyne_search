.class Lcom/inveno/se/volley/toolbox/ImageLoader$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

.field final synthetic val$error:Lcom/inveno/se/volley/VolleyError;


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Lcom/inveno/se/volley/VolleyError;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->val$error:Lcom/inveno/se/volley/VolleyError;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$500(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->access$600(Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;)Ljava/util/LinkedList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;

    invoke-static {v1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->access$700(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->val$error:Lcom/inveno/se/volley/VolleyError;

    if-nez v4, :cond_2

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;->access$300(Lcom/inveno/se/volley/toolbox/ImageLoader$BatchedImageRequest;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->access$802(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    invoke-static {v1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->access$700(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface {v4, v1, v5}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;->onResponse(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;Z)V

    goto :goto_0

    :cond_2
    invoke-static {v1}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;->access$700(Lcom/inveno/se/volley/toolbox/ImageLoader$ImageContainer;)Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;

    move-result-object v1

    iget-object v4, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->val$error:Lcom/inveno/se/volley/VolleyError;

    invoke-interface {v1, v4}, Lcom/inveno/se/volley/toolbox/ImageLoader$ImageListener;->onErrorResponse(Lcom/inveno/se/volley/VolleyError;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    invoke-static {v0}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$500(Lcom/inveno/se/volley/toolbox/ImageLoader;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$5;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$902(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    return-void
.end method
