.class Lcom/inveno/se/volley/toolbox/ImageLoader$2;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/inveno/se/volley/Response$Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/inveno/se/volley/Response$Listener",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

.field final synthetic val$cacheKey:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$2;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    iput-object p2, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Landroid/graphics/Bitmap;)V
    .locals 2

    iget-object v0, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$2;->this$0:Lcom/inveno/se/volley/toolbox/ImageLoader;

    iget-object v1, p0, Lcom/inveno/se/volley/toolbox/ImageLoader$2;->val$cacheKey:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/inveno/se/volley/toolbox/ImageLoader;->access$000(Lcom/inveno/se/volley/toolbox/ImageLoader;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    return-void
.end method

.method public bridge synthetic onResponse(Ljava/lang/Object;)V
    .locals 0

    check-cast p1, Landroid/graphics/Bitmap;

    invoke-virtual {p0, p1}, Lcom/inveno/se/volley/toolbox/ImageLoader$2;->onResponse(Landroid/graphics/Bitmap;)V

    return-void
.end method
