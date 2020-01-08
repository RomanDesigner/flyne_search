.class public Lcom/meizu/common/util/StrokeDrawableUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;
    }
.end annotation


# static fields
.field private static final DEF_STROKE_RADIUS:I = 0x1

.field private static final EFFECTIVE_COLOR:I = -0x1000000

.field private static final MAX_LENGTH:I = 0x3e8

.field private static final STROKE_ALPHA_VALUE:I = 0x4e

.field private static final STROKE_RECT_ALPHA_VALUE:I = 0x1a

.field private static final syncStroke:Ljava/lang/Object;

.field private static final syncStrokeRect:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/util/StrokeDrawableUtils;->syncStroke:Ljava/lang/Object;

    .line 39
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/meizu/common/util/StrokeDrawableUtils;->syncStrokeRect:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createRectStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 8

    .prologue
    .line 148
    sget-object v6, Lcom/meizu/common/util/StrokeDrawableUtils;->syncStrokeRect:Ljava/lang/Object;

    monitor-enter v6

    .line 149
    const/4 v0, 0x0

    .line 150
    :try_start_0
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    .line 151
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 152
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v4, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 154
    if-eqz v7, :cond_0

    .line 155
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 156
    invoke-static {}, Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 157
    invoke-virtual {v0, v7}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 158
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 159
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 160
    invoke-virtual {v0}, Landroid/graphics/Canvas;->save()I

    .line 161
    invoke-static {}, Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v5

    .line 162
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 163
    const/high16 v1, -0x1000000

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 164
    const/16 v1, 0x1a

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 165
    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v5, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 166
    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, 0x3f800000    # 1.0f

    add-int/lit8 v3, v3, -0x1

    int-to-float v3, v3

    add-int/lit8 v4, v4, -0x1

    int-to-float v4, v4

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 169
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v7}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 171
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    monitor-exit v6

    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0

    .line 172
    :catchall_0
    move-exception v0

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 92
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/meizu/common/util/StrokeDrawableUtils;->createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public static createStrokeDrawable(Landroid/graphics/drawable/Drawable;Landroid/content/res/Resources;Ljava/lang/Boolean;)Landroid/graphics/drawable/Drawable;
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 51
    sget-object v1, Lcom/meizu/common/util/StrokeDrawableUtils;->syncStroke:Ljava/lang/Object;

    monitor-enter v1

    .line 55
    :try_start_0
    invoke-static {p0}, Lcom/meizu/common/util/StrokeDrawableUtils;->drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 56
    if-eqz v2, :cond_0

    .line 57
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    .line 58
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    add-int/lit8 v4, v4, 0x2

    .line 59
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v3, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 61
    if-eqz v5, :cond_0

    .line 62
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 63
    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/graphics/Bitmap;->eraseColor(I)V

    .line 64
    invoke-static {}, Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v6

    .line 65
    invoke-virtual {v6, v5}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 66
    invoke-static {}, Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;->obtainStokePaint()Landroid/graphics/Paint;

    move-result-object v7

    .line 67
    invoke-static {v4, v3, v0, v2}, Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;->getExtraAlphaBitmap(IIILandroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 69
    invoke-virtual {v7}, Landroid/graphics/Paint;->reset()V

    .line 70
    const/16 v8, 0x4e

    invoke-virtual {v7, v8}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 71
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    sub-int v8, v4, v8

    shr-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    .line 72
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v9

    sub-int v9, v3, v9

    shr-int/lit8 v9, v9, 0x1

    int-to-float v9, v9

    .line 71
    invoke-virtual {v6, v0, v8, v9, v7}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 73
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    sub-int v0, v4, v0

    shr-int/lit8 v0, v0, 0x1

    int-to-float v0, v0

    .line 74
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    sub-int v7, v3, v7

    shr-int/lit8 v7, v7, 0x1

    int-to-float v7, v7

    const/4 v8, 0x0

    .line 73
    invoke-virtual {v6, v2, v0, v7, v8}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 75
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1, v5}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    .line 76
    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v2, v5, v4, v3}, Landroid/graphics/drawable/BitmapDrawable;->setBounds(IIII)V

    .line 79
    :cond_0
    if-nez v0, :cond_1

    :goto_0
    monitor-exit v1

    return-object p0

    :cond_1
    move-object p0, v0

    goto :goto_0

    .line 80
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static drawable2Bitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 5

    .prologue
    const/16 v2, 0x3e8

    const/4 v4, 0x0

    const/4 v0, 0x0

    .line 102
    if-nez p0, :cond_1

    .line 137
    :cond_0
    :goto_0
    return-object v0

    .line 105
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-gt v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-gt v1, v2, :cond_0

    .line 108
    instance-of v1, p0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_2

    .line 109
    check-cast p0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 110
    :cond_2
    instance-of v1, p0, Landroid/graphics/drawable/NinePatchDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/StateListDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/GradientDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/InsetDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/LayerDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/LevelListDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/PaintDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/PictureDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/RotateDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/ScaleDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/ShapeDrawable;

    if-nez v1, :cond_3

    instance-of v1, p0, Landroid/graphics/drawable/ClipDrawable;

    if-eqz v1, :cond_0

    .line 122
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    if-lez v1, :cond_0

    .line 126
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 125
    invoke-static {v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 128
    if-eqz v1, :cond_0

    .line 129
    invoke-static {}, Lcom/meizu/common/util/StrokeDrawableUtils$StrokeLruCache;->obtainStrokeCanvas()Landroid/graphics/Canvas;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 131
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 132
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 131
    invoke-virtual {p0, v4, v4, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    move-object v0, v1

    .line 134
    goto :goto_0
.end method
