.class public final enum Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field public static final enum DefaultGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field public static final enum HeavyGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

.field public static final enum Single:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;


# instance fields
.field private code:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 24
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    const-string v1, "Single"

    invoke-direct {v0, v1, v4, v3}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->Single:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 30
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    const-string v1, "DefaultGroup"

    invoke-direct {v0, v1, v3, v6}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->DefaultGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 36
    new-instance v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    const-string v1, "HeavyGroup"

    const/16 v2, 0x19

    invoke-direct {v0, v1, v5, v2}, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->HeavyGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    .line 19
    new-array v0, v6, [Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->Single:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->DefaultGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->HeavyGroup:Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->$VALUES:[Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 41
    iput p3, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->code:I

    .line 42
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;
    .locals 1

    .prologue
    .line 19
    const-class v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    return-object v0
.end method

.method public static values()[Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;
    .locals 1

    .prologue
    .line 19
    sget-object v0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->$VALUES:[Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    invoke-virtual {v0}, [Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .prologue
    .line 45
    iget v0, p0, Lcom/meizu/cloud/pushsdk/pushtracer/emitter/BufferOption;->code:I

    return v0
.end method
