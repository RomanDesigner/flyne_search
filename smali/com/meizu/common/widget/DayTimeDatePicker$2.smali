.class Lcom/meizu/common/widget/DayTimeDatePicker$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$OnScrollTextViewScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DayTimeDatePicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/DayTimeDatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DayTimeDatePicker;)V
    .locals 0

    .prologue
    .line 600
    iput-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$2;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollingFinished(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 1

    .prologue
    .line 607
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/meizu/common/widget/ScrollTextView;->setIsDrawFading(Z)V

    .line 608
    return-void
.end method

.method public onScrollingStarted(Lcom/meizu/common/widget/ScrollTextView;)V
    .locals 0

    .prologue
    .line 603
    return-void
.end method
