.class Lcom/meizu/common/widget/CollectingView$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CollectingView$1;->onAnimationEnd(Landroid/view/animation/Animation;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/CollectingView$1;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CollectingView$1;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/meizu/common/widget/CollectingView$1$1;->this$1:Lcom/meizu/common/widget/CollectingView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1$1;->this$1:Lcom/meizu/common/widget/CollectingView$1;

    iget-object v0, v0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$300(Lcom/meizu/common/widget/CollectingView;)Landroid/widget/PopupWindow;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/meizu/common/widget/CollectingView$1$1;->this$1:Lcom/meizu/common/widget/CollectingView$1;

    iget-object v0, v0, Lcom/meizu/common/widget/CollectingView$1;->this$0:Lcom/meizu/common/widget/CollectingView;

    invoke-static {v0}, Lcom/meizu/common/widget/CollectingView;->access$300(Lcom/meizu/common/widget/CollectingView;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 265
    :cond_0
    return-void
.end method
