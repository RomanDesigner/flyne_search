.class public final Lcn/com/xy/sms/sdk/net/util/b;
.super Ljava/lang/Object;


# static fields
.field private static final a:Z = true

.field private static final b:[C

.field private static final c:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v1, 0x0

    const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    sput-object v0, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    const/16 v0, 0x100

    new-array v0, v0, [I

    sput-object v0, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    const/4 v2, -0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->fill([II)V

    sget-object v0, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    array-length v2, v0

    move v0, v1

    :goto_0
    if-lt v0, v2, :cond_0

    sget-object v0, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    const/16 v2, 0x3d

    aput v1, v0, v2

    return-void

    :cond_0
    sget-object v3, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    sget-object v4, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    aget-char v4, v4, v0

    aput v0, v3, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Ljava/lang/String;)[B
    .locals 9

    const/4 v3, 0x0

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    if-nez v2, :cond_1

    new-array v0, v3, [B

    :goto_1
    return-object v0

    :cond_0
    move v2, v3

    goto :goto_0

    :cond_1
    move v1, v3

    move v0, v3

    :goto_2
    if-lt v1, v2, :cond_2

    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_4

    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    sget-object v4, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    aget v4, v4, v5

    if-gez v4, :cond_3

    add-int/lit8 v0, v0, 0x1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move v1, v2

    move v4, v3

    :cond_5
    :goto_3
    const/4 v5, 0x1

    if-le v1, v5, :cond_6

    sget-object v5, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    aget v5, v5, v6

    if-lez v5, :cond_7

    :cond_6
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v4

    new-array v2, v7, [B

    move v6, v3

    move v0, v3

    :goto_4
    if-lt v6, v7, :cond_8

    move-object v0, v2

    goto :goto_1

    :cond_7
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_5

    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    :cond_8
    move v1, v3

    move v4, v0

    move v0, v3

    :goto_5
    const/4 v5, 0x4

    if-lt v0, v5, :cond_a

    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    if-ge v0, v7, :cond_9

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    if-ge v5, v7, :cond_c

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_9
    move v6, v0

    move v0, v4

    goto :goto_4

    :cond_a
    sget-object v8, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    add-int/lit8 v5, v4, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    aget v4, v8, v4

    if-ltz v4, :cond_b

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    :goto_6
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_5

    :cond_b
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    :cond_c
    move v6, v5

    move v0, v4

    goto :goto_4
.end method

.method public static final a([B)[B
    .locals 14

    const/16 v1, 0x3d

    const/4 v13, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    move v6, v2

    :goto_0
    if-nez v6, :cond_1

    new-array v0, v0, [B

    :goto_1
    return-object v0

    :cond_0
    move v6, v0

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v2, v6, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x4c

    shl-int/lit8 v3, v3, 0x1

    add-int v8, v2, v3

    new-array v2, v8, [B

    move v3, v0

    move v4, v0

    move v5, v0

    :cond_2
    :goto_2
    if-lt v5, v7, :cond_5

    sub-int v3, v6, v7

    if-lez v3, :cond_4

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-ne v3, v13, :cond_3

    add-int/lit8 v0, v6, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_3
    or-int/2addr v0, v4

    add-int/lit8 v4, v8, -0x4

    sget-object v5, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v6, v0, 0xc

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v8, -0x3

    sget-object v5, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v8, -0x2

    if-ne v3, v13, :cond_6

    sget-object v3, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0

    int-to-byte v0, v0

    :goto_3
    aput-byte v0, v2, v4

    add-int/lit8 v0, v8, -0x1

    aput-byte v1, v2, v0

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x13

    if-ne v3, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v4, v9, :cond_2

    add-int/lit8 v9, v4, 0x1

    const/16 v3, 0xd

    aput-byte v3, v2, v4

    add-int/lit8 v3, v9, 0x1

    const/16 v4, 0xa

    aput-byte v4, v2, v9

    move v4, v3

    move v3, v0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method private static a([BZ)[B
    .locals 14

    const/16 v1, 0x3d

    const/4 v13, 0x2

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    array-length v2, p0

    move v6, v2

    :goto_0
    if-nez v6, :cond_1

    new-array v0, v0, [B

    :goto_1
    return-object v0

    :cond_0
    move v6, v0

    goto :goto_0

    :cond_1
    div-int/lit8 v2, v6, 0x3

    mul-int/lit8 v7, v2, 0x3

    add-int/lit8 v2, v6, -0x1

    div-int/lit8 v2, v2, 0x3

    add-int/lit8 v2, v2, 0x1

    shl-int/lit8 v2, v2, 0x2

    add-int/lit8 v3, v2, -0x1

    div-int/lit8 v3, v3, 0x4c

    shl-int/lit8 v3, v3, 0x1

    add-int v8, v2, v3

    new-array v2, v8, [B

    move v3, v0

    move v4, v0

    move v5, v0

    :cond_2
    :goto_2
    if-lt v5, v7, :cond_5

    sub-int v3, v6, v7

    if-lez v3, :cond_4

    aget-byte v4, p0, v7

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0xa

    if-ne v3, v13, :cond_3

    add-int/lit8 v0, v6, -0x1

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x2

    :cond_3
    or-int/2addr v0, v4

    add-int/lit8 v4, v8, -0x4

    sget-object v5, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v6, v0, 0xc

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v8, -0x3

    sget-object v5, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v6, v0, 0x6

    and-int/lit8 v6, v6, 0x3f

    aget-char v5, v5, v6

    int-to-byte v5, v5

    aput-byte v5, v2, v4

    add-int/lit8 v4, v8, -0x2

    if-ne v3, v13, :cond_6

    sget-object v3, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v3, v0

    int-to-byte v0, v0

    :goto_3
    aput-byte v0, v2, v4

    add-int/lit8 v0, v8, -0x1

    aput-byte v1, v2, v0

    :cond_4
    move-object v0, v2

    goto :goto_1

    :cond_5
    add-int/lit8 v9, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    add-int/lit8 v10, v9, 0x1

    aget-byte v9, p0, v9

    and-int/lit16 v9, v9, 0xff

    shl-int/lit8 v9, v9, 0x8

    or-int/2addr v9, v5

    add-int/lit8 v5, v10, 0x1

    aget-byte v10, p0, v10

    and-int/lit16 v10, v10, 0xff

    or-int/2addr v9, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v12, v9, 0x12

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v12, v9, 0xc

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v10

    add-int/lit8 v10, v4, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    ushr-int/lit8 v12, v9, 0x6

    and-int/lit8 v12, v12, 0x3f

    aget-char v11, v11, v12

    int-to-byte v11, v11

    aput-byte v11, v2, v4

    add-int/lit8 v4, v10, 0x1

    sget-object v11, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    and-int/lit8 v9, v9, 0x3f

    aget-char v9, v11, v9

    int-to-byte v9, v9

    aput-byte v9, v2, v10

    add-int/lit8 v3, v3, 0x1

    const/16 v9, 0x13

    if-ne v3, v9, :cond_2

    add-int/lit8 v9, v8, -0x2

    if-ge v4, v9, :cond_2

    add-int/lit8 v9, v4, 0x1

    const/16 v3, 0xd

    aput-byte v3, v2, v4

    add-int/lit8 v3, v9, 0x1

    const/16 v4, 0xa

    aput-byte v4, v2, v9

    move v4, v3

    move v3, v0

    goto/16 :goto_2

    :cond_6
    move v0, v1

    goto :goto_3
.end method

.method public static final b([B)[B
    .locals 9

    const/4 v3, 0x0

    array-length v2, p0

    move v1, v3

    move v0, v3

    :goto_0
    if-lt v1, v2, :cond_0

    sub-int v1, v2, v0

    rem-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_2

    const/4 v0, 0x0

    :goto_1
    return-object v0

    :cond_0
    sget-object v4, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    aget-byte v5, p0, v1

    and-int/lit16 v5, v5, 0xff

    aget v4, v4, v5

    if-gez v4, :cond_1

    add-int/lit8 v0, v0, 0x1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    move v1, v2

    move v4, v3

    :cond_3
    :goto_2
    const/4 v5, 0x1

    if-le v1, v5, :cond_4

    sget-object v5, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    add-int/lit8 v1, v1, -0x1

    aget-byte v6, p0, v1

    and-int/lit16 v6, v6, 0xff

    aget v5, v5, v6

    if-lez v5, :cond_5

    :cond_4
    sub-int v0, v2, v0

    mul-int/lit8 v0, v0, 0x6

    shr-int/lit8 v0, v0, 0x3

    sub-int v7, v0, v4

    new-array v2, v7, [B

    move v6, v3

    move v0, v3

    :goto_3
    if-lt v6, v7, :cond_6

    move-object v0, v2

    goto :goto_1

    :cond_5
    aget-byte v5, p0, v1

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_3

    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    :cond_6
    move v1, v3

    move v4, v0

    move v0, v3

    :goto_4
    const/4 v5, 0x4

    if-lt v0, v5, :cond_8

    add-int/lit8 v0, v6, 0x1

    shr-int/lit8 v5, v1, 0x10

    int-to-byte v5, v5

    aput-byte v5, v2, v6

    if-ge v0, v7, :cond_7

    add-int/lit8 v5, v0, 0x1

    shr-int/lit8 v6, v1, 0x8

    int-to-byte v6, v6

    aput-byte v6, v2, v0

    if-ge v5, v7, :cond_a

    add-int/lit8 v0, v5, 0x1

    int-to-byte v1, v1

    aput-byte v1, v2, v5

    :cond_7
    move v6, v0

    move v0, v4

    goto :goto_3

    :cond_8
    sget-object v8, Lcn/com/xy/sms/sdk/net/util/b;->c:[I

    add-int/lit8 v5, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    aget v4, v8, v4

    if-ltz v4, :cond_9

    mul-int/lit8 v8, v0, 0x6

    rsub-int/lit8 v8, v8, 0x12

    shl-int/2addr v4, v8

    or-int/2addr v1, v4

    :goto_5
    add-int/lit8 v0, v0, 0x1

    move v4, v5

    goto :goto_4

    :cond_9
    add-int/lit8 v0, v0, -0x1

    goto :goto_5

    :cond_a
    move v6, v5

    move v0, v4

    goto :goto_3
.end method

.method public static c([B)Ljava/lang/String;
    .locals 9

    const/4 v1, 0x0

    array-length v4, p0

    new-instance v5, Ljava/lang/StringBuffer;

    array-length v0, p0

    mul-int/lit8 v0, v0, 0x3

    div-int/lit8 v0, v0, 0x2

    invoke-direct {v5, v0}, Ljava/lang/StringBuffer;-><init>(I)V

    add-int/lit8 v6, v4, -0x3

    move v0, v1

    move v2, v1

    :goto_0
    if-le v2, v6, :cond_1

    add-int/lit8 v0, v4, 0x0

    add-int/lit8 v0, v0, -0x2

    if-ne v2, v0, :cond_2

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    add-int/lit8 v1, v2, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    sget-object v1, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v2, v0, 0xc

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v0, v0, 0x6

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :cond_0
    :goto_1
    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    aget-byte v3, p0, v2

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    add-int/lit8 v7, v2, 0x1

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    shl-int/lit8 v7, v7, 0x8

    or-int/2addr v3, v7

    add-int/lit8 v7, v2, 0x2

    aget-byte v7, p0, v7

    and-int/lit16 v7, v7, 0xff

    or-int/2addr v3, v7

    sget-object v7, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v8, v3, 0x12

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v8, v3, 0xc

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v8, v3, 0x6

    and-int/lit8 v8, v8, 0x3f

    aget-char v7, v7, v8

    invoke-virtual {v5, v7}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v7, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    and-int/lit8 v3, v3, 0x3f

    aget-char v3, v7, v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v3, v2, 0x3

    add-int/lit8 v2, v0, 0x1

    const/16 v7, 0xe

    if-lt v0, v7, :cond_3

    const-string v0, " "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move v0, v1

    move v2, v3

    goto/16 :goto_0

    :cond_2
    add-int/lit8 v0, v4, 0x0

    add-int/lit8 v0, v0, -0x1

    if-ne v2, v0, :cond_0

    aget-byte v0, p0, v2

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x10

    sget-object v1, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v2, v0, 0x12

    and-int/lit8 v2, v2, 0x3f

    aget-char v1, v1, v2

    invoke-virtual {v5, v1}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    sget-object v1, Lcn/com/xy/sms/sdk/net/util/b;->b:[C

    shr-int/lit8 v0, v0, 0xc

    and-int/lit8 v0, v0, 0x3f

    aget-char v0, v1, v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    const-string v0, "=="

    invoke-virtual {v5, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_1

    :cond_3
    move v0, v2

    move v2, v3

    goto/16 :goto_0
.end method
