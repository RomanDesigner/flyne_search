.class public Lcom/meizu/flyme/palette/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/graphics/Palette$Filter;


# static fields
.field public static final a:Lcom/meizu/flyme/palette/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    new-instance v0, Lcom/meizu/flyme/palette/a;

    invoke-direct {v0}, Lcom/meizu/flyme/palette/a;-><init>()V

    sput-object v0, Lcom/meizu/flyme/palette/a;->a:Lcom/meizu/flyme/palette/a;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private a([F)Z
    .locals 2

    .prologue
    .line 48
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3d4ccccd    # 0.05f

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private b([F)Z
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x2

    aget v0, p1, v0

    const v1, 0x3f733333    # 0.95f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private c([F)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 61
    aget v2, p1, v1

    const/high16 v3, 0x41200000    # 10.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    aget v2, p1, v1

    const/high16 v3, 0x42140000    # 37.0f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    aget v2, p1, v0

    const v3, 0x3e99999a    # 0.3f

    cmpg-float v2, v2, v3

    if-gtz v2, :cond_0

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method


# virtual methods
.method public isAllowed(I[F)Z
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0, p2}, Lcom/meizu/flyme/palette/a;->b([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/meizu/flyme/palette/a;->a([F)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/meizu/flyme/palette/a;->c([F)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
