.class public Lcom/inveno/se/volley/lrucache/RecyclingImageView;
.super Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method private static notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V
    .locals 3

    instance-of v0, p0, Lcom/inveno/se/volley/lrucache/RecyclingBitmapDrawable;

    if-eqz v0, :cond_1

    check-cast p0, Lcom/inveno/se/volley/lrucache/RecyclingBitmapDrawable;

    invoke-virtual {p0, p1}, Lcom/inveno/se/volley/lrucache/RecyclingBitmapDrawable;->setIsDisplayed(Z)V

    :cond_0
    return-void

    :cond_1
    instance-of v0, p0, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    check-cast p0, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x0

    invoke-virtual {p0}, Landroid/graphics/drawable/LayerDrawable;->getNumberOfLayers()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_0

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-static {v2, p1}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method protected onDetachedFromWindow()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-super {p0}, Landroid/widget/ImageView;->onDetachedFromWindow()V

    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    invoke-virtual {p0}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method

.method public setImageResource(I)V
    .locals 2

    invoke-virtual {p0}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/inveno/se/volley/lrucache/RecyclingImageView;->notifyDrawable(Landroid/graphics/drawable/Drawable;Z)V

    return-void
.end method
