.class Lcom/meizu/common/widget/DayTimeDatePickerDialog$2$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;)V
    .locals 0

    .prologue
    .line 176
    iput-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;

    iget-object v0, v0, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/DayTimeDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePickerDialog;->access$200(Lcom/meizu/common/widget/DayTimeDatePickerDialog;)Lcom/meizu/common/widget/DayTimeDatePicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->setIsDrawFading(Z)V

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;

    iget-object v0, v0, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/DayTimeDatePickerDialog;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePickerDialog;->access$200(Lcom/meizu/common/widget/DayTimeDatePickerDialog;)Lcom/meizu/common/widget/DayTimeDatePicker;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2$1;->this$1:Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;

    iget-object v1, v1, Lcom/meizu/common/widget/DayTimeDatePickerDialog$2;->this$0:Lcom/meizu/common/widget/DayTimeDatePickerDialog;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePickerDialog;->access$000(Lcom/meizu/common/widget/DayTimeDatePickerDialog;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->setLunar(Z)V

    .line 181
    return-void
.end method
