.class Lcom/meizu/common/widget/FoldableTextView$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/FoldableTextView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/FoldableTextView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/FoldableTextView;)V
    .locals 0

    .prologue
    .line 616
    iput-object p1, p0, Lcom/meizu/common/widget/FoldableTextView$3;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2

    .prologue
    .line 619
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$3;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/FoldableTextView;->access$1602(Lcom/meizu/common/widget/FoldableTextView;Ljava/lang/Float;)Ljava/lang/Float;

    .line 620
    iget-object v0, p0, Lcom/meizu/common/widget/FoldableTextView$3;->this$0:Lcom/meizu/common/widget/FoldableTextView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/FoldableTextView;->requestLayout()V

    .line 621
    return-void
.end method
