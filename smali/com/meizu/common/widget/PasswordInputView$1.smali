.class Lcom/meizu/common/widget/PasswordInputView$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/PasswordInputView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/widget/PasswordInputView;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/PasswordInputView;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/meizu/common/widget/PasswordInputView$1;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 67
    iget-object v0, p0, Lcom/meizu/common/widget/PasswordInputView$1;->this$0:Lcom/meizu/common/widget/PasswordInputView;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/widget/PasswordInputView;->handleCheckChange(Landroid/widget/CompoundButton;Z)V

    .line 68
    return-void
.end method
