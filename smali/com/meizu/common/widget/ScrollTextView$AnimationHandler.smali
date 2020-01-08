.class Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/ScrollTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AnimationHandler"
.end annotation


# instance fields
.field private final mScrollTextViewScroller:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V
    .locals 1

    .prologue
    .line 1730
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 1731
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;->mScrollTextViewScroller:Ljava/lang/ref/WeakReference;

    .line 1732
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1735
    iget-object v0, p0, Lcom/meizu/common/widget/ScrollTextView$AnimationHandler;->mScrollTextViewScroller:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;

    .line 1736
    if-eqz v0, :cond_1

    .line 1737
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1738
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v1

    .line 1739
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1000(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)I

    move-result v2

    sub-int/2addr v2, v1

    .line 1740
    invoke-static {v0, v1}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1002(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;I)I

    .line 1743
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1700(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/meizu/common/widget/ScrollTextView$ScrollingListener;->onScroll(I)V

    .line 1747
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Scroller;->getFinalY()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v1, v4, :cond_0

    .line 1748
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->getFinalY()I

    .line 1749
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 1751
    :cond_0
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1300(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/widget/Scroller;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1752
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1800(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)Landroid/os/Handler;

    move-result-object v0

    iget v1, p1, Landroid/os/Message;->what:I

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1759
    :cond_1
    :goto_0
    return-void

    .line 1753
    :cond_2
    iget v1, p1, Landroid/os/Message;->what:I

    if-nez v1, :cond_3

    .line 1754
    invoke-static {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->access$1900(Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;)V

    goto :goto_0

    .line 1756
    :cond_3
    invoke-virtual {v0}, Lcom/meizu/common/widget/ScrollTextView$ScrollTextViewScroller;->finishScrolling()V

    goto :goto_0
.end method
