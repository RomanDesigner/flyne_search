.class Lcom/meizu/common/widget/DatePicker$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DatePicker;)V
    .locals 0

    .prologue
    .line 671
    iput-object p1, p0, Lcom/meizu/common/widget/DatePicker$3;->this$0:Lcom/meizu/common/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 2

    .prologue
    .line 678
    iget-object v0, p0, Lcom/meizu/common/widget/DatePicker$3;->this$0:Lcom/meizu/common/widget/DatePicker;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawFading(Z)V

    .line 679
    return-void
.end method

.method public onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0

    .prologue
    .line 674
    return-void
.end method
