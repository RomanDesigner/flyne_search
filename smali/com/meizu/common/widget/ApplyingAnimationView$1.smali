.class Lcom/meizu/common/widget/ApplyingAnimationView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/ApplyingAnimationView;->startAnimator()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/ApplyingAnimationView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/ApplyingAnimationView;)V
    .locals 0

    .prologue
    .line 253
    iput-object p1, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-virtual {v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "animator_duration_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 258
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$000(Lcom/meizu/common/widget/ApplyingAnimationView;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 259
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 265
    :cond_0
    :goto_0
    return-void

    .line 260
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {v0}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$100(Lcom/meizu/common/widget/ApplyingAnimationView;)Landroid/animation/AnimatorSet;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {v0, v3}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$002(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z

    .line 262
    iget-object v0, p0, Lcom/meizu/common/widget/ApplyingAnimationView$1;->this$0:Lcom/meizu/common/widget/ApplyingAnimationView;

    invoke-static {v0, v3}, Lcom/meizu/common/widget/ApplyingAnimationView;->access$202(Lcom/meizu/common/widget/ApplyingAnimationView;Z)Z

    goto :goto_0
.end method
