.class Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/CustomTimePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TimeAdapter"
.end annotation


# static fields
.field static final SET_AMPM:I = 0x3

.field static final SET_DAY:I = 0x5

.field static final SET_HOUR:I = 0x1

.field static final SET_MIN:I = 0x2


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/CustomTimePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/CustomTimePicker;I)V
    .locals 1

    .prologue
    .line 120
    iput-object p1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    .line 121
    iput p2, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    .line 122
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 180
    :cond_0
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 151
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-virtual {v0}, Lcom/meizu/common/widget/CustomTimePicker;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 154
    :cond_1
    if-nez p1, :cond_2

    const/16 p1, 0xc

    .line 155
    :cond_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_2
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 162
    :pswitch_3
    if-nez p1, :cond_3

    .line 163
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$400(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 164
    :cond_3
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$500(Lcom/meizu/common/widget/CustomTimePicker;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 170
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$600(Lcom/meizu/common/widget/CustomTimePicker;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/CustomTimePicker;->access$700(Lcom/meizu/common/widget/CustomTimePicker;I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 173
    :cond_4
    add-int/lit8 v0, p1, 0x1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 2

    .prologue
    .line 125
    iget v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 145
    :goto_0
    :pswitch_0
    return-void

    .line 127
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$002(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/CustomTimePicker;->access$102(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 135
    :pswitch_3
    iget-object v1, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_1
    invoke-static {v1, v0}, Lcom/meizu/common/widget/CustomTimePicker;->access$202(Lcom/meizu/common/widget/CustomTimePicker;Z)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 139
    :pswitch_4
    iget-object v0, p0, Lcom/meizu/common/widget/CustomTimePicker$TimeAdapter;->this$0:Lcom/meizu/common/widget/CustomTimePicker;

    add-int/lit8 v1, p3, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/CustomTimePicker;->access$302(Lcom/meizu/common/widget/CustomTimePicker;I)I

    goto :goto_0

    .line 125
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
