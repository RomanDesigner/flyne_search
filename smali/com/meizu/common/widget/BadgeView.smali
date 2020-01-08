.class public Lcom/meizu/common/widget/BadgeView;
.super Landroid/widget/TextView;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/widget/BadgeView$Stage;
    }
.end annotation


# static fields
.field private static final MAXCOUNT:I = 0x3e7


# instance fields
.field private final ONENUMWIDTH:I

.field private final SPACE:F

.field private final TWONUMWIDTH:I

.field private mBadgeColor:I

.field private mBadgeContainer:Landroid/widget/FrameLayout;

.field private mBgPaint:Landroid/graphics/Paint;

.field private mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

.field private mDrawable:Landroid/graphics/drawable/Drawable;

.field private mHideNumRadius:I

.field private mIsHide:Z

.field private mParentContainer:Landroid/view/ViewGroup;

.field private mParentHeight:I

.field private mParentWidth:I

.field private mRadius:I

.field private mTextColor:I

.field private mTextSize:I

.field private mTwoNumWidth:I

.field private mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 52
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    .line 38
    const/16 v0, 0x1c

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->ONENUMWIDTH:I

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->TWONUMWIDTH:I

    .line 40
    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->SPACE:F

    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/meizu/common/widget/BadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    .line 38
    const/16 v0, 0x1c

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->ONENUMWIDTH:I

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->TWONUMWIDTH:I

    .line 40
    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->SPACE:F

    .line 58
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    .line 38
    const/16 v0, 0x1c

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->ONENUMWIDTH:I

    .line 39
    const/16 v0, 0x32

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->TWONUMWIDTH:I

    .line 40
    const/high16 v0, 0x40900000    # 4.5f

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->SPACE:F

    .line 63
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BadgeView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 64
    return-void
.end method

.method private dp2px(F)F
    .locals 2

    .prologue
    .line 353
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, p1, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    return v0
.end method

.method private getPxSize(Landroid/content/Context;I)I
    .locals 1

    .prologue
    .line 97
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I
    .locals 1

    .prologue
    .line 124
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getTransformationMethod()Landroid/text/method/TransformationMethod;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_0

    .line 126
    invoke-interface {v0, p2, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 128
    :cond_0
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 83
    sget-object v0, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    .line 84
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$drawable;->mc_badge_view:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 85
    invoke-direct {p0, p1, p2}, Lcom/meizu/common/widget/BadgeView;->initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 86
    invoke-direct {p0}, Lcom/meizu/common/widget/BadgeView;->initPaint()V

    .line 87
    const/16 v0, 0x11

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setGravity(I)V

    .line 88
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mTextColor:I

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTextColor(I)V

    .line 89
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 90
    iget v0, p0, Lcom/meizu/common/widget/BadgeView;->mTextSize:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTextSize(F)V

    .line 91
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setHide(Z)V

    .line 92
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setBadgeNum(I)V

    .line 93
    invoke-direct {p0}, Lcom/meizu/common/widget/BadgeView;->initParentLayout()V

    .line 94
    return-void
.end method

.method private initAttributes(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    .line 132
    sget-object v0, Lcom/meizu/common/R$styleable;->BadgeView:[I

    invoke-virtual {p0, p1, p2, v0}, Lcom/meizu/common/widget/BadgeView;->getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 133
    if-nez v0, :cond_0

    .line 143
    :goto_0
    return-void

    .line 136
    :cond_0
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeTextColor:I

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mTextColor:I

    .line 137
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeTextSize:I

    const/16 v2, 0xa

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mTextSize:I

    .line 139
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_badge_view_radius_show_count:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mRadius:I

    .line 140
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeRadius:I

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/meizu/common/R$dimen;->mc_badge_view_radius:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    float-to-int v1, v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mHideNumRadius:I

    .line 141
    sget v1, Lcom/meizu/common/R$styleable;->BadgeView_mcBadgeColor:I

    const/high16 v2, -0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeColor:I

    .line 142
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method

.method private initPaint()V
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 118
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 119
    const-string v0, "SFPRO-medium"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 120
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 121
    return-void
.end method

.method private initParentLayout()V
    .locals 4

    .prologue
    .line 101
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_view_layout_params_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mParentWidth:I

    .line 102
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_view_layout_params_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mParentHeight:I

    .line 103
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/meizu/common/R$dimen;->mc_badge_view_two_num_width:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mTwoNumWidth:I

    .line 105
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/meizu/common/widget/BadgeView;->mParentWidth:I

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentHeight:I

    const/16 v3, 0x35

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 110
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 112
    :cond_0
    return-void
.end method


# virtual methods
.method public getBadgeGravity()I
    .locals 1

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 326
    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    return v0
.end method

.method public getBadgeMargin()[I
    .locals 4

    .prologue
    .line 347
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 348
    const/4 v1, 0x4

    new-array v1, v1, [I

    const/4 v2, 0x0

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    aput v3, v1, v2

    const/4 v2, 0x3

    iget v0, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    aput v0, v1, v2

    return-object v1
.end method

.method public getBadgeNum()Ljava/lang/Integer;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 267
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 268
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 274
    :goto_0
    return-object v0

    .line 270
    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 273
    :catch_0
    move-exception v0

    .line 274
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0
.end method

.method public getState()Lcom/meizu/common/widget/BadgeView$Stage;
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    return-object v0
.end method

.method protected getTypedArray(Landroid/content/Context;Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 146
    invoke-virtual {p1, p2, p3, v0, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    return-object v0
.end method

.method public isHide()Z
    .locals 1

    .prologue
    .line 231
    iget-boolean v0, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .prologue
    .line 68
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-ne v0, v1, :cond_1

    .line 70
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getPaint()Landroid/text/TextPaint;

    move-result-object v1

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/meizu/common/widget/BadgeView;->getTextWidth(Landroid/graphics/Paint;Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mWidth:I

    .line 71
    const/high16 v0, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/meizu/common/R$dimen;->mc_badge_view_space:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 72
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget v3, p0, Lcom/meizu/common/widget/BadgeView;->mWidth:I

    add-int/2addr v0, v3

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 73
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v2

    sub-int/2addr v2, v0

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v5

    sub-int v0, v5, v0

    div-int/lit8 v0, v0, 0x2

    sub-int v0, v4, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    iget-object v5, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    invoke-virtual {v1, v2, v3, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 74
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 79
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/TextView;->onDraw(Landroid/graphics/Canvas;)V

    .line 80
    return-void

    .line 76
    :cond_1
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getWidth()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, p0, Lcom/meizu/common/widget/BadgeView;->mHideNumRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    goto :goto_0
.end method

.method public setBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .prologue
    .line 305
    iput-object p1, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 306
    return-void
.end method

.method public setBackgroundColor(I)V
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBgPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 286
    return-void
.end method

.method public setBackgroundResource(I)V
    .locals 1

    .prologue
    .line 295
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mDrawable:Landroid/graphics/drawable/Drawable;

    .line 296
    return-void
.end method

.method public setBadgeGravity(I)V
    .locals 1

    .prologue
    .line 314
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 315
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 316
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 317
    return-void
.end method

.method public setBadgeMargin(IIII)V
    .locals 2

    .prologue
    .line 338
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 339
    int-to-float v1, p1

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 340
    int-to-float v1, p2

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 341
    int-to-float v1, p3

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    .line 342
    int-to-float v1, p4

    invoke-direct {p0, v1}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 343
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 344
    return-void
.end method

.method public setBadgeNum(I)V
    .locals 3

    .prologue
    const/16 v0, 0x3e7

    .line 251
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v2, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-ne v1, v2, :cond_1

    .line 252
    if-lt p1, v0, :cond_0

    move p1, v0

    .line 255
    :cond_0
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setBadgeRadius(I)V
    .locals 3

    .prologue
    .line 363
    int-to-float v0, p1

    invoke-direct {p0, v0}, Lcom/meizu/common/widget/BadgeView;->dp2px(F)F

    move-result v0

    float-to-int v0, v0

    .line 364
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v2, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-ne v1, v2, :cond_1

    .line 365
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mRadius:I

    .line 369
    :cond_0
    :goto_0
    return-void

    .line 366
    :cond_1
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v2, Lcom/meizu/common/widget/BadgeView$Stage;->HIDENUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-ne v1, v2, :cond_0

    .line 367
    iput v0, p0, Lcom/meizu/common/widget/BadgeView;->mHideNumRadius:I

    goto :goto_0
.end method

.method public setHide(Z)V
    .locals 2

    .prologue
    .line 222
    iput-boolean p1, p0, Lcom/meizu/common/widget/BadgeView;->mIsHide:Z

    .line 223
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    sget-object v1, Lcom/meizu/common/widget/BadgeView$Stage;->SHOWNUM:Lcom/meizu/common/widget/BadgeView$Stage;

    if-ne v0, v1, :cond_0

    .line 224
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_0
    return-void

    .line 226
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setState(Lcom/meizu/common/widget/BadgeView$Stage;)V
    .locals 0

    .prologue
    .line 193
    iput-object p1, p0, Lcom/meizu/common/widget/BadgeView;->mCurrentStage:Lcom/meizu/common/widget/BadgeView$Stage;

    .line 194
    return-void
.end method

.method public setTargetView(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, -0x1

    .line 155
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 159
    :cond_0
    if-nez p1, :cond_2

    .line 185
    :cond_1
    :goto_0
    return-void

    .line 163
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/widget/FrameLayout;

    if-eqz v0, :cond_3

    .line 164
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 166
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    instance-of v0, v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_4

    .line 167
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    .line 168
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 169
    iget-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 171
    new-instance v1, Landroid/widget/FrameLayout;

    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    .line 172
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 173
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 177
    iget-object v2, p0, Lcom/meizu/common/widget/BadgeView;->mParentContainer:Landroid/view/ViewGroup;

    iget-object v3, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 180
    iget-object v0, p0, Lcom/meizu/common/widget/BadgeView;->mBadgeContainer:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 182
    :cond_4
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_1

    .line 183
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ParentView cannot be empty"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setTargetView(Landroid/widget/TabWidget;I)V
    .locals 1

    .prologue
    .line 212
    invoke-virtual {p1, p2}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 213
    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setTargetView(Landroid/view/View;)V

    .line 214
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 2

    .prologue
    .line 237
    invoke-virtual {p0}, Lcom/meizu/common/widget/BadgeView;->isHide()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 238
    :cond_0
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setVisibility(I)V

    .line 242
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 243
    return-void

    .line 240
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/meizu/common/widget/BadgeView;->setVisibility(I)V

    goto :goto_0
.end method
