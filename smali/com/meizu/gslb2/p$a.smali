.class public final enum Lcom/meizu/gslb2/p$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/gslb2/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/meizu/gslb2/p$a;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum ERROR:Lcom/meizu/gslb2/p$a;

.field public static final enum ERROR_WEAK:Lcom/meizu/gslb2/p$a;

.field public static final enum SUCCESS:Lcom/meizu/gslb2/p$a;

.field public static final enum SUCCESS_WEAK:Lcom/meizu/gslb2/p$a;

.field private static final synthetic a:[Lcom/meizu/gslb2/p$a;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 9
    new-instance v0, Lcom/meizu/gslb2/p$a;

    const-string v1, "SUCCESS"

    invoke-direct {v0, v1, v2}, Lcom/meizu/gslb2/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/gslb2/p$a;->SUCCESS:Lcom/meizu/gslb2/p$a;

    .line 10
    new-instance v0, Lcom/meizu/gslb2/p$a;

    const-string v1, "SUCCESS_WEAK"

    invoke-direct {v0, v1, v3}, Lcom/meizu/gslb2/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/gslb2/p$a;->SUCCESS_WEAK:Lcom/meizu/gslb2/p$a;

    .line 11
    new-instance v0, Lcom/meizu/gslb2/p$a;

    const-string v1, "ERROR"

    invoke-direct {v0, v1, v4}, Lcom/meizu/gslb2/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/gslb2/p$a;->ERROR:Lcom/meizu/gslb2/p$a;

    .line 12
    new-instance v0, Lcom/meizu/gslb2/p$a;

    const-string v1, "ERROR_WEAK"

    invoke-direct {v0, v1, v5}, Lcom/meizu/gslb2/p$a;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/meizu/gslb2/p$a;->ERROR_WEAK:Lcom/meizu/gslb2/p$a;

    .line 8
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/meizu/gslb2/p$a;

    sget-object v1, Lcom/meizu/gslb2/p$a;->SUCCESS:Lcom/meizu/gslb2/p$a;

    aput-object v1, v0, v2

    sget-object v1, Lcom/meizu/gslb2/p$a;->SUCCESS_WEAK:Lcom/meizu/gslb2/p$a;

    aput-object v1, v0, v3

    sget-object v1, Lcom/meizu/gslb2/p$a;->ERROR:Lcom/meizu/gslb2/p$a;

    aput-object v1, v0, v4

    sget-object v1, Lcom/meizu/gslb2/p$a;->ERROR_WEAK:Lcom/meizu/gslb2/p$a;

    aput-object v1, v0, v5

    sput-object v0, Lcom/meizu/gslb2/p$a;->a:[Lcom/meizu/gslb2/p$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 8
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/meizu/gslb2/p$a;
    .locals 1

    .prologue
    .line 8
    const-class v0, Lcom/meizu/gslb2/p$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/meizu/gslb2/p$a;

    return-object v0
.end method

.method public static values()[Lcom/meizu/gslb2/p$a;
    .locals 1

    .prologue
    .line 8
    sget-object v0, Lcom/meizu/gslb2/p$a;->a:[Lcom/meizu/gslb2/p$a;

    invoke-virtual {v0}, [Lcom/meizu/gslb2/p$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/meizu/gslb2/p$a;

    return-object v0
.end method
