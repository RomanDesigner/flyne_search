.class final Lcom/meizu/common/alphame/Args$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/alphame/Args;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/meizu/common/alphame/Args;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/alphame/Args;
    .locals 4

    .prologue
    .line 424
    :try_start_0
    new-instance v0, Lcom/meizu/common/alphame/Args;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct {v0, v1}, Lcom/meizu/common/alphame/Args;-><init>([Ljava/lang/Object;)V

    .line 425
    invoke-virtual {v0, p1}, Lcom/meizu/common/alphame/Args;->readFromParcel(Landroid/os/Parcel;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 430
    :goto_0
    return-object v0

    .line 427
    :catch_0
    move-exception v0

    .line 428
    const-string v1, "AlphaMe"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when create Args from parcel : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/meizu/common/alphame/Args$1;->createFromParcel(Landroid/os/Parcel;)Lcom/meizu/common/alphame/Args;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/meizu/common/alphame/Args;
    .locals 1

    .prologue
    .line 434
    new-array v0, p1, [Lcom/meizu/common/alphame/Args;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 421
    invoke-virtual {p0, p1}, Lcom/meizu/common/alphame/Args$1;->newArray(I)[Lcom/meizu/common/alphame/Args;

    move-result-object v0

    return-object v0
.end method
