.class public Lcom/inveno/basics/main/a/a$f;
.super Lflyme/support/v7/widget/RecyclerView$ViewHolder;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/inveno/basics/main/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "f"
.end annotation


# instance fields
.field public a:Landroid/widget/RelativeLayout;

.field public b:Landroid/widget/TextView;

.field public c:Landroid/widget/TextView;

.field public d:Landroid/widget/TextView;

.field final synthetic e:Lcom/inveno/basics/main/a/a;


# direct methods
.method public constructor <init>(Lcom/inveno/basics/main/a/a;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 268
    iput-object p1, p0, Lcom/inveno/basics/main/a/a$f;->e:Lcom/inveno/basics/main/a/a;

    .line 269
    invoke-direct {p0, p2}, Lflyme/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 270
    sget v0, Lcom/inveno/basics/R$id;->item_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$f;->a:Landroid/widget/RelativeLayout;

    .line 271
    sget v0, Lcom/inveno/basics/R$id;->item_title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$f;->b:Landroid/widget/TextView;

    .line 272
    sget v0, Lcom/inveno/basics/R$id;->item_label:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$f;->d:Landroid/widget/TextView;

    .line 273
    sget v0, Lcom/inveno/basics/R$id;->item_source:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/inveno/basics/main/a/a$f;->c:Landroid/widget/TextView;

    .line 274
    return-void
.end method
