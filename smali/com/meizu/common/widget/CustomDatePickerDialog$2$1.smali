.class Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/CustomDatePickerDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$2;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomDatePickerDialog$2;)V
    .locals 0

    .prologue
    .line 231
    iput-object p1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 234
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    iget-object v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setIsDrawFading(Z)V

    .line 235
    iget-object v0, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    iget-object v0, v0, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$200(Lcom/meizu/common/widget/CustomDatePickerDialog;)Lcom/meizu/common/widget/DatePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/CustomDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/CustomDatePickerDialog$2;

    iget-object v1, v1, Lcom/meizu/common/widget/CustomDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/CustomDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/CustomDatePickerDialog;->access$000(Lcom/meizu/common/widget/CustomDatePickerDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DatePicker;->setLunar(Z)V

    .line 236
    return-void
.end method
