.class public abstract Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;
    }
.end annotation


# static fields
.field private static sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static checkFinalImageBounds(Landroid/graphics/Bitmap;IIII)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 755
    add-int v0, p1, p3

    .line 756
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    if-gt v0, v3, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "x + width must be <= bitmap.width()"

    .line 755
    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 758
    add-int v0, p2, p4

    .line 759
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v3

    if-gt v0, v3, :cond_1

    :goto_1
    const-string v0, "y + height must be <= bitmap.height()"

    .line 758
    invoke-static {v1, v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 761
    return-void

    :cond_0
    move v0, v2

    .line 756
    goto :goto_0

    :cond_1
    move v1, v2

    .line 759
    goto :goto_1
.end method

.method private static checkWidthHeight(II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 730
    if-lez p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "width must be > 0"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 731
    if-lez p1, :cond_1

    :goto_1
    const-string v0, "height must be > 0"

    invoke-static {v1, v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 732
    return-void

    :cond_0
    move v0, v2

    .line 730
    goto :goto_0

    :cond_1
    move v1, v2

    .line 731
    goto :goto_1
.end method

.method private static checkXYSign(II)V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 741
    if-ltz p0, :cond_0

    move v0, v1

    :goto_0
    const-string v3, "x must be >= 0"

    invoke-static {v0, v3}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 742
    if-ltz p1, :cond_1

    :goto_1
    const-string v0, "y must be >= 0"

    invoke-static {v1, v0}, Lcom/facebook/common/internal/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 743
    return-void

    :cond_0
    move v0, v2

    .line 741
    goto :goto_0

    :cond_1
    move v1, v2

    .line 742
    goto :goto_1
.end method

.method private createBitmap(IILandroid/graphics/Bitmap$Config;Z)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            "Z)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 441
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method private createBitmap(IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            "Z",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 465
    const/4 v1, 0x0

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    move v5, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method private createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Z)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Z)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 489
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move v5, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method private createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 4
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Z",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 515
    invoke-static {p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->checkWidthHeight(II)V

    .line 516
    invoke-virtual {p0, p2, p3, p4}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 518
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 519
    if-eqz p1, :cond_0

    .line 520
    iget v2, p1, Landroid/util/DisplayMetrics;->densityDpi:I

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 523
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0xc

    if-lt v2, v3, :cond_1

    .line 524
    invoke-virtual {v0, p5}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 527
    :cond_1
    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    if-ne p4, v2, :cond_2

    if-nez p5, :cond_2

    .line 528
    const/high16 v2, -0x1000000

    invoke-virtual {v0, v2}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 531
    :cond_2
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->addBitmapReference(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 532
    return-object v1
.end method

.method private static getSuitableBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;
    .locals 2

    .prologue
    .line 701
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 702
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getConfig()Landroid/graphics/Bitmap$Config;

    move-result-object v1

    .line 705
    if-eqz v1, :cond_0

    .line 706
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$1;->$SwitchMap$android$graphics$Bitmap$Config:[I

    invoke-virtual {v1}, Landroid/graphics/Bitmap$Config;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 716
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 720
    :cond_0
    :goto_0
    return-object v0

    .line 708
    :pswitch_0
    sget-object v0, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 711
    :pswitch_1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    goto :goto_0

    .line 706
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public addBitmapReference(Landroid/graphics/Bitmap;Ljava/lang/Object;)V
    .locals 1
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 790
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    if-eqz v0, :cond_0

    .line 791
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    invoke-interface {v0, p1, p2}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;->onBitmapCreated(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 793
    :cond_0
    return-void
.end method

.method public createBitmap(II)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 60
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 2
    .param p4    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0, p1, p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v1

    .line 80
    invoke-virtual {v1}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p4}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->addBitmapReference(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 81
    return-object v1
.end method

.method public createBitmap(IILjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .param p3    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 99
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/Bitmap;)Lcom/facebook/common/references/CloseableReference;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/Bitmap;IIII)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIII)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 157
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .param p6    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIII",
            "Landroid/graphics/Matrix;",
            "Z)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 216
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    move/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 12
    .param p6    # Landroid/graphics/Matrix;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIII",
            "Landroid/graphics/Matrix;",
            "Z",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 311
    const-string v1, "Source bitmap cannot be null"

    invoke-static {p1, v1}, Lcom/facebook/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    invoke-static {p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->checkXYSign(II)V

    .line 313
    invoke-static/range {p4 .. p5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->checkWidthHeight(II)V

    .line 314
    invoke-static/range {p1 .. p5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->checkFinalImageBounds(Landroid/graphics/Bitmap;IIII)V

    .line 320
    new-instance v8, Landroid/graphics/Canvas;

    invoke-direct {v8}, Landroid/graphics/Canvas;-><init>()V

    .line 324
    new-instance v9, Landroid/graphics/Rect;

    add-int v1, p2, p4

    add-int v2, p3, p5

    invoke-direct {v9, p2, p3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 325
    new-instance v10, Landroid/graphics/RectF;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move/from16 v0, p4

    int-to-float v3, v0

    move/from16 v0, p5

    int-to-float v4, v0

    invoke-direct {v10, v1, v2, v3, v4}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 326
    invoke-static {p1}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->getSuitableBitmapConfig(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap$Config;

    move-result-object v4

    .line 328
    if-eqz p6, :cond_0

    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Matrix;->isIdentity()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 329
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v5

    move-object v1, p0

    move/from16 v2, p4

    move/from16 v3, p5

    move-object/from16 v6, p8

    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    .line 330
    const/4 v1, 0x0

    move-object v3, v2

    move-object v2, v1

    .line 358
    :goto_0
    invoke-virtual {v3}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getDensity()I

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setDensity(I)V

    .line 361
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xc

    if-lt v4, v5, :cond_1

    .line 362
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 365
    :cond_1
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0x13

    if-lt v4, v5, :cond_2

    .line 366
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->isPremultiplied()Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/graphics/Bitmap;->setPremultiplied(Z)V

    .line 369
    :cond_2
    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 370
    invoke-virtual {v8, p1, v9, v10, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 371
    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    return-object v3

    .line 332
    :cond_3
    invoke-virtual/range {p6 .. p6}, Landroid/graphics/Matrix;->rectStaysRect()Z

    move-result v1

    if-nez v1, :cond_7

    const/4 v1, 0x1

    move v7, v1

    .line 333
    :goto_1
    new-instance v11, Landroid/graphics/RectF;

    invoke-direct {v11}, Landroid/graphics/RectF;-><init>()V

    .line 334
    move-object/from16 v0, p6

    invoke-virtual {v0, v11, v10}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    .line 336
    invoke-virtual {v11}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v2

    .line 337
    invoke-virtual {v11}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 338
    if-eqz v7, :cond_4

    sget-object v4, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    :cond_4
    if-nez v7, :cond_5

    .line 343
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->hasAlpha()Z

    move-result v1

    if-eqz v1, :cond_8

    :cond_5
    const/4 v5, 0x1

    :goto_2
    move-object v1, p0

    move-object/from16 v6, p8

    .line 339
    invoke-direct/range {v1 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v2

    .line 346
    iget v1, v11, Landroid/graphics/RectF;->left:F

    neg-float v1, v1

    iget v3, v11, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    invoke-virtual {v8, v1, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 347
    move-object/from16 v0, p6

    invoke-virtual {v8, v0}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 349
    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    .line 350
    move/from16 v0, p7

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 351
    if-eqz v7, :cond_6

    .line 352
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    :cond_6
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_0

    .line 332
    :cond_7
    const/4 v1, 0x0

    move v7, v1

    goto :goto_1

    .line 343
    :cond_8
    const/4 v5, 0x0

    goto :goto_2
.end method

.method public createBitmap(Landroid/graphics/Bitmap;IIIILjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIII",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 184
    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/graphics/Bitmap;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .param p2    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 132
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move-object v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 395
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "II",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 419
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "[IIIII",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 654
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .param p8    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "[IIIII",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 683
    move-object v0, p0

    move-object v1, p1

    move v2, p5

    move v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;IILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    .line 689
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 690
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v1, p2

    move v2, p3

    move v3, p4

    move v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 691
    return-object v8
.end method

.method public createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "[III",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 601
    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap(Landroid/util/DisplayMetrics;[IIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .param p6    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/DisplayMetrics;",
            "[III",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v4, p3

    move v5, p3

    move v6, p4

    move-object v7, p5

    move-object v8, p6

    invoke-virtual/range {v0 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/util/DisplayMetrics;[IIIIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap([IIILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 552
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap([IIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createBitmap([IIILandroid/graphics/Bitmap$Config;Ljava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([III",
            "Landroid/graphics/Bitmap$Config;",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 574
    invoke-virtual {p0, p2, p3, p4}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v8

    .line 575
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    move-object v1, p1

    move v3, p2

    move v4, v2

    move v5, v2

    move v6, p2

    move v7, p3

    .line 576
    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->setPixels([IIIIIII)V

    .line 577
    invoke-virtual {v8}, Lcom/facebook/common/references/CloseableReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0, p5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->addBitmapReference(Landroid/graphics/Bitmap;Ljava/lang/Object;)V

    .line 578
    return-object v8
.end method

.method public abstract createBitmapInternal(IILandroid/graphics/Bitmap$Config;)Lcom/facebook/common/references/CloseableReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/graphics/Bitmap$Config;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end method

.method public createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Lcom/facebook/common/references/CloseableReference;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIZ)",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    .line 245
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createScaledBitmap(Landroid/graphics/Bitmap;IIZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public createScaledBitmap(Landroid/graphics/Bitmap;IIZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;
    .locals 9
    .param p5    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/graphics/Bitmap;",
            "IIZ",
            "Ljava/lang/Object;",
            ")",
            "Lcom/facebook/common/references/CloseableReference",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 268
    invoke-static {p2, p3}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->checkWidthHeight(II)V

    .line 270
    new-instance v6, Landroid/graphics/Matrix;

    invoke-direct {v6}, Landroid/graphics/Matrix;-><init>()V

    .line 271
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    .line 272
    invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    .line 273
    int-to-float v0, p2

    int-to-float v1, v4

    div-float/2addr v0, v1

    .line 274
    int-to-float v1, p3

    int-to-float v3, v5

    div-float/2addr v1, v3

    .line 275
    invoke-virtual {v6, v0, v1}, Landroid/graphics/Matrix;->setScale(FF)V

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    move v7, p4

    move-object v8, p5

    .line 277
    invoke-virtual/range {v0 .. v8}, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;ZLjava/lang/Object;)Lcom/facebook/common/references/CloseableReference;

    move-result-object v0

    return-object v0
.end method

.method public setCreationListener(Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;)V
    .locals 1

    .prologue
    .line 782
    sget-object v0, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    if-nez v0, :cond_0

    .line 783
    sput-object p1, Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory;->sBitmapCreationObserver:Lcom/facebook/imagepipeline/bitmaps/PlatformBitmapFactory$BitmapCreationObserver;

    .line 785
    :cond_0
    return-void
.end method
