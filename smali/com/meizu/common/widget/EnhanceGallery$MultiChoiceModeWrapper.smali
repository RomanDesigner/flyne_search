.class Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/widget/EnhanceGallery;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MultiChoiceModeWrapper"
.end annotation


# instance fields
.field private mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

.field final synthetic this$0:Lcom/meizu/common/widget/EnhanceGallery;


# direct methods
.method constructor <init>(Lcom/meizu/common/widget/EnhanceGallery;)V
    .locals 0

    .prologue
    .line 2208
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public hasWrappedCallback()Z
    .locals 1

    .prologue
    .line 2216
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .prologue
    .line 2248
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 2220
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {v2, p1, p2}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2222
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-static {v2}, Lcom/meizu/common/widget/EnhanceGallery;->access$1200(Lcom/meizu/common/widget/EnhanceGallery;)I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_0

    .line 2224
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v1, v0}, Lcom/meizu/common/widget/EnhanceGallery;->setLongClickable(Z)V

    .line 2240
    :goto_0
    return v0

    .line 2226
    :cond_0
    iget-object v2, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v2, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setLongClickable(Z)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2240
    goto :goto_0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .prologue
    .line 2252
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {v0, p1}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 2254
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->access$602(Lcom/meizu/common/widget/EnhanceGallery;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    .line 2257
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->clearChoices()V

    .line 2259
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->invalidateViews()V

    .line 2261
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/meizu/common/widget/EnhanceGallery;->setLongClickable(Z)V

    .line 2262
    return-void
.end method

.method public onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .locals 7

    .prologue
    .line 2266
    iget-object v1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move v6, p5

    invoke-interface/range {v1 .. v6}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;->onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V

    .line 2269
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->this$0:Lcom/meizu/common/widget/EnhanceGallery;

    invoke-virtual {v0}, Lcom/meizu/common/widget/EnhanceGallery;->getCheckedItemCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 2270
    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    .line 2272
    :cond_0
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .prologue
    .line 2244
    iget-object v0, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    invoke-interface {v0, p1, p2}, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;->onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public setWrapped(Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;)V
    .locals 0

    .prologue
    .line 2212
    iput-object p1, p0, Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeWrapper;->mWrapped:Lcom/meizu/common/widget/EnhanceGallery$MultiChoiceModeListener;

    .line 2213
    return-void
.end method
