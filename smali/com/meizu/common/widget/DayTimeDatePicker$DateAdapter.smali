.class Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/ScrollTextView$IDataAdapter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/DayTimeDatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DateAdapter"
.end annotation


# static fields
.field static final SET_HOUR:I = 0x4

.field static final SET_MIN:I = 0x5

.field static final SET_MOUNT_DAY:I = 0x6


# instance fields
.field mType:I

.field final synthetic this$0:Lcom/meizu/common/widget/DayTimeDatePicker;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/DayTimeDatePicker;I)V
    .locals 1

    .prologue
    .line 148
    iput-object p1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 146
    const/4 v0, 0x0

    iput v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->mType:I

    .line 149
    iput p2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->mType:I

    .line 150
    return-void
.end method


# virtual methods
.method public getItemText(I)Ljava/lang/String;
    .locals 5

    .prologue
    .line 154
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 212
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 157
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/DayTimeDatePicker;->mHourTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 160
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v0, v0, Lcom/meizu/common/widget/DayTimeDatePicker;->mMinTexts:[Ljava/lang/String;

    aget-object v0, v0, p1

    goto :goto_0

    .line 164
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$000(Lcom/meizu/common/widget/DayTimeDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    .line 167
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$200(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v0

    .line 168
    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-le v0, v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    sub-int/2addr v0, v2

    .line 171
    add-int/lit8 v1, v1, 0x1

    .line 178
    :cond_0
    :goto_1
    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    add-int/lit8 v0, v0, 0x1

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v3, v3, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    invoke-static {v2, v1, v0, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$400(Lcom/meizu/common/widget/DayTimeDatePicker;II[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v1

    .line 181
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$600(Lcom/meizu/common/widget/DayTimeDatePicker;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$700(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->getLunarDays(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 172
    :cond_1
    if-gez v0, :cond_0

    .line 174
    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    add-int/lit8 v3, v1, -0x1

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    add-int/2addr v0, v2

    .line 175
    add-int/lit8 v1, v1, -0x1

    goto :goto_1

    .line 181
    :cond_2
    const-string v0, " "

    goto :goto_2

    .line 184
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$200(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_5

    .line 187
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v1

    sub-int/2addr v0, v1

    .line 193
    :cond_4
    :goto_3
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$600(Lcom/meizu/common/widget/DayTimeDatePicker;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 195
    add-int/lit8 v0, v0, 0x1

    .line 197
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_6

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    if-ne v1, v2, :cond_6

    .line 198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$700(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v3

    const/4 v4, 0x5

    invoke-virtual {v3, v4}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/2addr v2, v3

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1000(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 188
    :cond_5
    if-gez v0, :cond_4

    .line 190
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v1

    add-int/2addr v0, v1

    goto/16 :goto_3

    .line 200
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$700(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1000(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 204
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v2, v2, Lcom/meizu/common/widget/DayTimeDatePicker;->mLunarMouths:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, v1, Lcom/meizu/common/widget/DayTimeDatePicker;->mGregorianDays:[Ljava/lang/String;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2, p1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_0

    .line 154
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onChanged(Landroid/view/View;II)V
    .locals 6

    .prologue
    .line 218
    iget v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->mType:I

    packed-switch v0, :pswitch_data_0

    .line 261
    :goto_0
    return-void

    .line 221
    :pswitch_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 255
    :goto_1
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1500(Lcom/meizu/common/widget/DayTimeDatePicker;)Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1500(Lcom/meizu/common/widget/DayTimeDatePicker;)Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1300(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v3

    iget-object v4, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    .line 257
    invoke-static {v4}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v4

    iget-object v5, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v5}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1200(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v5

    .line 256
    invoke-interface/range {v0 .. v5}, Lcom/meizu/common/widget/DayTimeDatePicker$OnTimeChangedListener;->onTimeChanged(IIIII)V

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->mType:I

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1600(Lcom/meizu/common/widget/DayTimeDatePicker;I)V

    goto :goto_0

    .line 225
    :pswitch_1
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1202(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    goto :goto_1

    .line 230
    :pswitch_2
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 231
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$800(Lcom/meizu/common/widget/DayTimeDatePicker;)Ljava/util/Calendar;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    add-int/2addr v1, p3

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1302(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 234
    :cond_1
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0, p3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$200(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v0

    .line 235
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2, p3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$500(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1302(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 236
    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1, v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$902(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 238
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v0

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v2

    invoke-static {v1, v2}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-le v0, v1, :cond_3

    .line 240
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v3

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$902(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 241
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 248
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$1400(Lcom/meizu/common/widget/DayTimeDatePicker;)V

    goto/16 :goto_1

    .line 242
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v0}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v0

    if-gez v0, :cond_2

    .line 244
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$900(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v3, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v2, v3}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$300(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$902(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    .line 245
    iget-object v0, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    iget-object v1, p0, Lcom/meizu/common/widget/DayTimeDatePicker$DateAdapter;->this$0:Lcom/meizu/common/widget/DayTimeDatePicker;

    invoke-static {v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$100(Lcom/meizu/common/widget/DayTimeDatePicker;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/meizu/common/widget/DayTimeDatePicker;->access$102(Lcom/meizu/common/widget/DayTimeDatePicker;I)I

    goto :goto_2

    .line 218
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
