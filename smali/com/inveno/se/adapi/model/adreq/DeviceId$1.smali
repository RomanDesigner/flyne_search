.class final Lcom/inveno/se/adapi/model/adreq/DeviceId$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/inveno/se/adapi/model/adreq/DeviceId;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/inveno/se/adapi/model/adreq/DeviceId;
    .locals 1

    new-instance v0, Lcom/inveno/se/adapi/model/adreq/DeviceId;

    invoke-direct {v0, p1}, Lcom/inveno/se/adapi/model/adreq/DeviceId;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/model/adreq/DeviceId$1;->createFromParcel(Landroid/os/Parcel;)Lcom/inveno/se/adapi/model/adreq/DeviceId;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/inveno/se/adapi/model/adreq/DeviceId;
    .locals 1

    new-array v0, p1, [Lcom/inveno/se/adapi/model/adreq/DeviceId;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/inveno/se/adapi/model/adreq/DeviceId$1;->newArray(I)[Lcom/inveno/se/adapi/model/adreq/DeviceId;

    move-result-object v0

    return-object v0
.end method
