.class public Landroid/support/v4/view/PagerTitleStrip;
.super Landroid/view/ViewGroup;
.source "SourceFile"


# annotations
.annotation runtime Landroid/support/v4/view/ViewPager$DecorView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/PagerTitleStrip$PageListener;,
        Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;
    }
.end annotation


# static fields
.field private static final ATTRS:[I

.field private static final SIDE_ALPHA:F = 0.6f

.field private static final TEXT_ATTRS:[I

.field private static final TEXT_SPACING:I = 0x10


# instance fields
.field mCurrText:Landroid/widget/TextView;

.field private mGravity:I

.field private mLastKnownCurrentPage:I

.field mLastKnownPositionOffset:F

.field mNextText:Landroid/widget/TextView;

.field private mNonPrimaryAlpha:I

.field private final mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

.field mPager:Landroid/support/v4/view/ViewPager;

.field mPrevText:Landroid/widget/TextView;

.field private mScaledTextSpacing:I

.field mTextColor:I

.field private mUpdatingPositions:Z

.field private mUpdatingText:Z

.field private mWatchingAdapter:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/v4/view/PagerAdapter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 72
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    .line 79
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101038c

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    return-void

    .line 72
    :array_0
    .array-data 4
        0x1010034
        0x1010095
        0x1010098
        0x10100af
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/v4/view/PagerTitleStrip;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 109
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v4, 0x2

    const/4 v0, 0x0

    .line 112
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 60
    const/4 v1, -0x1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 61
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 68
    new-instance v1, Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-direct {v1, p0}, Landroid/support/v4/view/PagerTitleStrip$PageListener;-><init>(Landroid/support/v4/view/PagerTitleStrip;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    .line 114
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 115
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 116
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->addView(Landroid/view/View;)V

    .line 118
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->ATTRS:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 119
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v2

    .line 120
    if-eqz v2, :cond_0

    .line 121
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 122
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 123
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v3, v2}, Landroid/support/v4/widget/TextViewCompat;->setTextAppearance(Landroid/widget/TextView;I)V

    .line 125
    :cond_0
    const/4 v3, 0x1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    .line 126
    if-eqz v3, :cond_1

    .line 127
    int-to-float v3, v3

    invoke-virtual {p0, v0, v3}, Landroid/support/v4/view/PagerTitleStrip;->setTextSize(IF)V

    .line 129
    :cond_1
    invoke-virtual {v1, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 130
    invoke-virtual {v1, v4, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 131
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 132
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 135
    :cond_2
    const/4 v3, 0x3

    const/16 v4, 0x50

    invoke-virtual {v1, v3, v4}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v3

    iput v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 136
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 138
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    iput v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 139
    const v1, 0x3f19999a    # 0.6f

    invoke-virtual {p0, v1}, Landroid/support/v4/view/PagerTitleStrip;->setNonPrimaryAlpha(F)V

    .line 141
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 142
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 143
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    sget-object v3, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 146
    if-eqz v2, :cond_3

    .line 147
    sget-object v1, Landroid/support/v4/view/PagerTitleStrip;->TEXT_ATTRS:[I

    invoke-virtual {p1, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v1

    .line 148
    invoke-virtual {v1, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v0

    .line 149
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 152
    :cond_3
    if-eqz v0, :cond_4

    .line 153
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 154
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 155
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-static {v0}, Landroid/support/v4/view/PagerTitleStrip;->setSingleLineAllCaps(Landroid/widget/TextView;)V

    .line 162
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 163
    const/high16 v1, 0x41800000    # 16.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 164
    return-void

    .line 157
    :cond_4
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 158
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    .line 159
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->setSingleLine()V

    goto :goto_0
.end method

.method private static setSingleLineAllCaps(Landroid/widget/TextView;)V
    .locals 2

    .prologue
    .line 104
    new-instance v0, Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;

    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v4/view/PagerTitleStrip$SingleLineAllCapsTransform;-><init>(Landroid/content/Context;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 105
    return-void
.end method


# virtual methods
.method getMinHeight()I
    .locals 2

    .prologue
    .line 462
    const/4 v0, 0x0

    .line 463
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 464
    if-eqz v1, :cond_0

    .line 465
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 467
    :cond_0
    return v0
.end method

.method public getTextSpacing()I
    .locals 1

    .prologue
    .line 180
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 3

    .prologue
    .line 238
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 240
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 241
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-nez v1, :cond_0

    .line 242
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "PagerTitleStrip must be a direct child of a ViewPager."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 246
    :cond_0
    check-cast v0, Landroid/support/v4/view/ViewPager;

    .line 247
    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v1

    .line 249
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 250
    iget-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->addOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 251
    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 252
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/PagerAdapter;

    :goto_0
    invoke-virtual {p0, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 253
    return-void

    .line 252
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-super {p0}, Landroid/view/ViewGroup;->onDetachedFromWindow()V

    .line 258
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v0

    invoke-virtual {p0, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V

    .line 260
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->setInternalPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)Landroid/support/v4/view/ViewPager$OnPageChangeListener;

    .line 261
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->removeOnAdapterChangeListener(Landroid/support/v4/view/ViewPager$OnAdapterChangeListener;)V

    .line 262
    iput-object v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    .line 264
    :cond_0
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 455
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_1

    .line 456
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v1, v1, v0

    if-ltz v1, :cond_0

    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 457
    :cond_0
    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 459
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 7

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v5, -0x2

    .line 419
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 420
    if-eq v0, v6, :cond_0

    .line 421
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Must measure with an exact width"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 424
    :cond_0
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v1

    add-int/2addr v0, v1

    .line 425
    invoke-static {p2, v0, v5}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v1

    .line 428
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 429
    int-to-float v3, v2

    const v4, 0x3e4ccccd    # 0.2f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 430
    invoke-static {p1, v3, v5}, Landroid/support/v4/view/PagerTitleStrip;->getChildMeasureSpec(III)I

    move-result v3

    .line 433
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 434
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 435
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v4, v3, v1}, Landroid/widget/TextView;->measure(II)V

    .line 438
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 439
    if-ne v1, v6, :cond_1

    .line 440
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 447
    :goto_0
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredState()I

    move-result v1

    .line 448
    shl-int/lit8 v1, v1, 0x10

    invoke-static {v0, p2, v1}, Landroid/view/View;->resolveSizeAndState(III)I

    move-result v0

    .line 450
    invoke-virtual {p0, v2, v0}, Landroid/support/v4/view/PagerTitleStrip;->setMeasuredDimension(II)V

    .line 451
    return-void

    .line 442
    :cond_1
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v1

    .line 443
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getMinHeight()I

    move-result v3

    .line 444
    add-int/2addr v0, v1

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0
.end method

.method public requestLayout()V
    .locals 1

    .prologue
    .line 307
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    if-nez v0, :cond_0

    .line 308
    invoke-super {p0}, Landroid/view/ViewGroup;->requestLayout()V

    .line 310
    :cond_0
    return-void
.end method

.method public setGravity(I)V
    .locals 0

    .prologue
    .line 232
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    .line 233
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 234
    return-void
.end method

.method public setNonPrimaryAlpha(F)V
    .locals 3
    .param p1    # F
        .annotation build Landroid/support/annotation/FloatRange;
            from = 0.0
            to = 1.0
        .end annotation
    .end param

    .prologue
    .line 189
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p1

    float-to-int v0, v0

    and-int/lit16 v0, v0, 0xff

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    .line 190
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 191
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 192
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 193
    return-void
.end method

.method public setTextColor(I)V
    .locals 3
    .param p1    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 202
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    .line 203
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 204
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNonPrimaryAlpha:I

    shl-int/lit8 v0, v0, 0x18

    iget v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mTextColor:I

    const v2, 0xffffff

    and-int/2addr v1, v2

    or-int/2addr v0, v1

    .line 205
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 206
    iget-object v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 207
    return-void
.end method

.method public setTextSize(IF)V
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 221
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 222
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 223
    return-void
.end method

.method public setTextSpacing(I)V
    .locals 0

    .prologue
    .line 172
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    .line 173
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 174
    return-void
.end method

.method updateAdapter(Landroid/support/v4/view/PagerAdapter;Landroid/support/v4/view/PagerAdapter;)V
    .locals 1

    .prologue
    .line 313
    if-eqz p1, :cond_0

    .line 314
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p1, v0}, Landroid/support/v4/view/PagerAdapter;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 317
    :cond_0
    if-eqz p2, :cond_1

    .line 318
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPageListener:Landroid/support/v4/view/PagerTitleStrip$PageListener;

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 319
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mWatchingAdapter:Ljava/lang/ref/WeakReference;

    .line 321
    :cond_1
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_2

    .line 322
    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 323
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 324
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->getCurrentItem()I

    move-result v0

    invoke-virtual {p0, v0, p2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 325
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->requestLayout()V

    .line 327
    :cond_2
    return-void
.end method

.method updateText(ILandroid/support/v4/view/PagerAdapter;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/high16 v5, -0x80000000

    const/4 v3, 0x0

    const/4 v1, 0x0

    .line 267
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Landroid/support/v4/view/PagerAdapter;->getCount()I

    move-result v0

    .line 268
    :goto_0
    iput-boolean v2, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 271
    if-lt p1, v2, :cond_4

    if-eqz p2, :cond_4

    .line 272
    add-int/lit8 v2, p1, -0x1

    invoke-virtual {p2, v2}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 274
    :goto_1
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 276
    iget-object v4, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    if-eqz p2, :cond_3

    if-ge p1, v0, :cond_3

    .line 277
    invoke-virtual {p2, p1}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 276
    :goto_2
    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    add-int/lit8 v2, p1, 0x1

    if-ge v2, v0, :cond_0

    if-eqz p2, :cond_0

    .line 281
    add-int/lit8 v0, p1, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v4/view/PagerAdapter;->getPageTitle(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 283
    :cond_0
    iget-object v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    .line 287
    int-to-float v0, v0

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 288
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 289
    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v3

    sub-int/2addr v2, v3

    .line 290
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 291
    invoke-static {v2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 292
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 293
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 294
    iget-object v3, p0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v3, v0, v2}, Landroid/widget/TextView;->measure(II)V

    .line 296
    iput p1, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    .line 298
    iget-boolean v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    if-nez v0, :cond_1

    .line 299
    iget v0, p0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v4/view/PagerTitleStrip;->updateTextPositions(IFZ)V

    .line 302
    :cond_1
    iput-boolean v1, p0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingText:Z

    .line 303
    return-void

    :cond_2
    move v0, v1

    .line 267
    goto :goto_0

    :cond_3
    move-object v2, v3

    .line 277
    goto :goto_2

    :cond_4
    move-object v2, v3

    goto :goto_1
.end method

.method updateTextPositions(IFZ)V
    .locals 18

    .prologue
    .line 330
    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownCurrentPage:I

    move/from16 v0, p1

    if-eq v0, v2, :cond_2

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPager:Landroid/support/v4/view/ViewPager;

    invoke-virtual {v2}, Landroid/support/v4/view/ViewPager;->getAdapter()Landroid/support/v4/view/PagerAdapter;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-virtual {v0, v1, v2}, Landroid/support/v4/view/PagerTitleStrip;->updateText(ILandroid/support/v4/view/PagerAdapter;)V

    .line 336
    :cond_0
    const/4 v2, 0x1

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 338
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v5

    .line 339
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v3

    .line 340
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getMeasuredWidth()I

    move-result v6

    .line 341
    div-int/lit8 v2, v3, 0x2

    .line 343
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getWidth()I

    move-result v7

    .line 344
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getHeight()I

    move-result v4

    .line 345
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingLeft()I

    move-result v8

    .line 346
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingRight()I

    move-result v9

    .line 347
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingTop()I

    move-result v10

    .line 348
    invoke-virtual/range {p0 .. p0}, Landroid/support/v4/view/PagerTitleStrip;->getPaddingBottom()I

    move-result v11

    .line 349
    add-int v12, v8, v2

    .line 350
    add-int v13, v9, v2

    .line 351
    sub-int v2, v7, v12

    sub-int v12, v2, v13

    .line 353
    const/high16 v2, 0x3f000000    # 0.5f

    add-float v2, v2, p2

    .line 354
    const/high16 v14, 0x3f800000    # 1.0f

    cmpl-float v14, v2, v14

    if-lez v14, :cond_1

    .line 355
    const/high16 v14, 0x3f800000    # 1.0f

    sub-float/2addr v2, v14

    .line 357
    :cond_1
    sub-int v13, v7, v13

    int-to-float v12, v12

    mul-float/2addr v2, v12

    float-to-int v2, v2

    sub-int v2, v13, v2

    .line 358
    div-int/lit8 v12, v3, 0x2

    sub-int v12, v2, v12

    .line 359
    add-int v13, v12, v3

    .line 361
    move-object/from16 v0, p0

    iget-object v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getBaseline()I

    move-result v2

    .line 362
    move-object/from16 v0, p0

    iget-object v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getBaseline()I

    move-result v3

    .line 363
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    invoke-virtual {v14}, Landroid/widget/TextView;->getBaseline()I

    move-result v14

    .line 364
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v15

    invoke-static {v15, v14}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 365
    sub-int v2, v15, v2

    .line 366
    sub-int v3, v15, v3

    .line 367
    sub-int v14, v15, v14

    .line 368
    move-object/from16 v0, p0

    iget-object v15, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    invoke-virtual {v15}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v15

    add-int/2addr v15, v2

    .line 369
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v16

    add-int v16, v16, v3

    .line 370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v17

    add-int v17, v17, v14

    .line 371
    invoke-static/range {v15 .. v16}, Ljava/lang/Math;->max(II)I

    move-result v15

    move/from16 v0, v17

    invoke-static {v15, v0}, Ljava/lang/Math;->max(II)I

    move-result v15

    .line 374
    move-object/from16 v0, p0

    iget v0, v0, Landroid/support/v4/view/PagerTitleStrip;->mGravity:I

    move/from16 v16, v0

    and-int/lit8 v16, v16, 0x70

    .line 379
    sparse-switch v16, :sswitch_data_0

    .line 382
    add-int v4, v10, v2

    .line 383
    add-int/2addr v3, v10

    .line 384
    add-int v2, v10, v14

    .line 401
    :goto_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/support/v4/view/PagerTitleStrip;->mCurrText:Landroid/widget/TextView;

    .line 402
    invoke-virtual {v11}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v11

    add-int/2addr v11, v3

    .line 401
    invoke-virtual {v10, v12, v3, v13, v11}, Landroid/widget/TextView;->layout(IIII)V

    .line 404
    move-object/from16 v0, p0

    iget v3, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    sub-int v3, v12, v3

    sub-int/2addr v3, v5

    invoke-static {v8, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 405
    move-object/from16 v0, p0

    iget-object v8, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    add-int/2addr v5, v3

    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/support/v4/view/PagerTitleStrip;->mPrevText:Landroid/widget/TextView;

    .line 406
    invoke-virtual {v10}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v10

    add-int/2addr v10, v4

    .line 405
    invoke-virtual {v8, v3, v4, v5, v10}, Landroid/widget/TextView;->layout(IIII)V

    .line 408
    sub-int v3, v7, v9

    sub-int/2addr v3, v6

    move-object/from16 v0, p0

    iget v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mScaledTextSpacing:I

    add-int/2addr v4, v13

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 410
    move-object/from16 v0, p0

    iget-object v4, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    add-int v5, v3, v6

    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/support/v4/view/PagerTitleStrip;->mNextText:Landroid/widget/TextView;

    .line 411
    invoke-virtual {v6}, Landroid/widget/TextView;->getMeasuredHeight()I

    move-result v6

    add-int/2addr v6, v2

    .line 410
    invoke-virtual {v4, v3, v2, v5, v6}, Landroid/widget/TextView;->layout(IIII)V

    .line 413
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    .line 414
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-boolean v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mUpdatingPositions:Z

    .line 415
    :goto_1
    return-void

    .line 332
    :cond_2
    if-nez p3, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Landroid/support/v4/view/PagerTitleStrip;->mLastKnownPositionOffset:F

    cmpl-float v2, p2, v2

    if-nez v2, :cond_0

    goto :goto_1

    .line 387
    :sswitch_0
    sub-int/2addr v4, v10

    sub-int/2addr v4, v11

    .line 388
    sub-int/2addr v4, v15

    div-int/lit8 v10, v4, 0x2

    .line 389
    add-int v4, v10, v2

    .line 390
    add-int/2addr v3, v10

    .line 391
    add-int v2, v10, v14

    .line 392
    goto :goto_0

    .line 394
    :sswitch_1
    sub-int/2addr v4, v11

    sub-int v10, v4, v15

    .line 395
    add-int v4, v10, v2

    .line 396
    add-int/2addr v3, v10

    .line 397
    add-int v2, v10, v14

    goto :goto_0

    .line 379
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
