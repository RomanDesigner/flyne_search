.class public final enum Lcn/com/xy/sms/sdk/db/entity/G;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcn/com/xy/sms/sdk/db/entity/G;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcn/com/xy/sms/sdk/db/entity/G;

.field public static final enum b:Lcn/com/xy/sms/sdk/db/entity/G;

.field public static final enum c:Lcn/com/xy/sms/sdk/db/entity/G;

.field public static final enum d:Lcn/com/xy/sms/sdk/db/entity/G;

.field private static synthetic e:[I

.field private static final synthetic f:[Lcn/com/xy/sms/sdk/db/entity/G;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/G;

    const-string v1, "UPDATE_PUBINFO"

    invoke-direct {v0, v1, v2}, Lcn/com/xy/sms/sdk/db/entity/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/G;

    const-string v1, "UPLOAD_PUBINFO_SIGN"

    invoke-direct {v0, v1, v3}, Lcn/com/xy/sms/sdk/db/entity/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/G;

    const-string v1, "UPLOAD_PUBINFO_CMD"

    invoke-direct {v0, v1, v4}, Lcn/com/xy/sms/sdk/db/entity/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->c:Lcn/com/xy/sms/sdk/db/entity/G;

    new-instance v0, Lcn/com/xy/sms/sdk/db/entity/G;

    const-string v1, "UPLOAD_SHARD"

    invoke-direct {v0, v1, v5}, Lcn/com/xy/sms/sdk/db/entity/G;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->d:Lcn/com/xy/sms/sdk/db/entity/G;

    const/4 v0, 0x4

    new-array v0, v0, [Lcn/com/xy/sms/sdk/db/entity/G;

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    aput-object v1, v0, v2

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    aput-object v1, v0, v3

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->c:Lcn/com/xy/sms/sdk/db/entity/G;

    aput-object v1, v0, v4

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->d:Lcn/com/xy/sms/sdk/db/entity/G;

    aput-object v1, v0, v5

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->f:[Lcn/com/xy/sms/sdk/db/entity/G;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method private static synthetic a()[I
    .locals 3

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->e:[I

    if-eqz v0, :cond_0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/G;->values()[Lcn/com/xy/sms/sdk/db/entity/G;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->a:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/G;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_1
    :try_start_1
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->c:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/G;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_2
    :try_start_2
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->b:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/G;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_3
    :try_start_3
    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/G;->d:Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-virtual {v1}, Lcn/com/xy/sms/sdk/db/entity/G;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_4
    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->e:[I

    goto :goto_0

    :catch_0
    move-exception v1

    goto :goto_4

    :catch_1
    move-exception v1

    goto :goto_3

    :catch_2
    move-exception v1

    goto :goto_2

    :catch_3
    move-exception v1

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/entity/G;
    .locals 1

    const-class v0, Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcn/com/xy/sms/sdk/db/entity/G;

    return-object v0
.end method

.method public static values()[Lcn/com/xy/sms/sdk/db/entity/G;
    .locals 4

    const/4 v3, 0x4

    const/4 v2, 0x0

    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/G;->f:[Lcn/com/xy/sms/sdk/db/entity/G;

    new-array v1, v3, [Lcn/com/xy/sms/sdk/db/entity/G;

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 2

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/G;->a()[I

    move-result-object v0

    invoke-virtual {p0}, Lcn/com/xy/sms/sdk/db/entity/G;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    :pswitch_0
    const-string v0, "1"

    goto :goto_0

    :pswitch_1
    const-string v0, "2"

    goto :goto_0

    :pswitch_2
    const-string v0, "3"

    goto :goto_0

    :pswitch_3
    const-string v0, "4"

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
