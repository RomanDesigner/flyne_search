.class Landroid/support/v7/util/DiffUtil$Range;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v7/util/DiffUtil;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Range"
.end annotation


# instance fields
.field newListEnd:I

.field newListStart:I

.field oldListEnd:I

.field oldListStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 465
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 466
    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 0

    .prologue
    .line 468
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 469
    iput p1, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListStart:I

    .line 470
    iput p2, p0, Landroid/support/v7/util/DiffUtil$Range;->oldListEnd:I

    .line 471
    iput p3, p0, Landroid/support/v7/util/DiffUtil$Range;->newListStart:I

    .line 472
    iput p4, p0, Landroid/support/v7/util/DiffUtil$Range;->newListEnd:I

    .line 473
    return-void
.end method
