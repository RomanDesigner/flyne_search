.class public Landroid/arch/persistence/room/f$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/arch/persistence/room/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/arch/persistence/room/f;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:Ljava/lang/String;

.field private final c:Landroid/content/Context;

.field private d:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/arch/persistence/room/f$b;",
            ">;"
        }
    .end annotation
.end field

.field private e:Landroid/arch/persistence/a/c$c;

.field private f:Z

.field private g:Landroid/arch/persistence/room/f$c;

.field private h:Z

.field private final i:Landroid/arch/persistence/room/f$d;

.field private j:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private k:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/Class;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/Class",
            "<TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 424
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 425
    iput-object p1, p0, Landroid/arch/persistence/room/f$a;->c:Landroid/content/Context;

    .line 426
    iput-object p2, p0, Landroid/arch/persistence/room/f$a;->a:Ljava/lang/Class;

    .line 427
    iput-object p3, p0, Landroid/arch/persistence/room/f$a;->b:Ljava/lang/String;

    .line 428
    sget-object v0, Landroid/arch/persistence/room/f$c;->AUTOMATIC:Landroid/arch/persistence/room/f$c;

    iput-object v0, p0, Landroid/arch/persistence/room/f$a;->g:Landroid/arch/persistence/room/f$c;

    .line 429
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/arch/persistence/room/f$a;->h:Z

    .line 430
    new-instance v0, Landroid/arch/persistence/room/f$d;

    invoke-direct {v0}, Landroid/arch/persistence/room/f$d;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/f$a;->i:Landroid/arch/persistence/room/f$d;

    .line 431
    return-void
.end method


# virtual methods
.method public a()Landroid/arch/persistence/room/f$a;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/arch/persistence/room/f$a",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 537
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/arch/persistence/room/f$a;->h:Z

    .line 538
    return-object p0
.end method

.method public b()Landroid/arch/persistence/room/f;
    .locals 10
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 599
    iget-object v0, p0, Landroid/arch/persistence/room/f$a;->c:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 600
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot provide null context for the database."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 603
    :cond_0
    iget-object v0, p0, Landroid/arch/persistence/room/f$a;->a:Ljava/lang/Class;

    if-nez v0, :cond_1

    .line 604
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Must provide an abstract class that extends RoomDatabase"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 608
    :cond_1
    iget-object v0, p0, Landroid/arch/persistence/room/f$a;->k:Ljava/util/Set;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/arch/persistence/room/f$a;->j:Ljava/util/Set;

    if-eqz v0, :cond_3

    .line 609
    iget-object v0, p0, Landroid/arch/persistence/room/f$a;->k:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 610
    iget-object v2, p0, Landroid/arch/persistence/room/f$a;->j:Ljava/util/Set;

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 611
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Inconsistency detected. A Migration was supplied to addMigration(Migration... migrations) that has a start or end version equal to a start version supplied to fallbackToDestructiveMigrationFrom(int... startVersions). Start version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 622
    :cond_3
    iget-object v0, p0, Landroid/arch/persistence/room/f$a;->e:Landroid/arch/persistence/a/c$c;

    if-nez v0, :cond_4

    .line 623
    new-instance v0, Landroid/arch/persistence/a/a/c;

    invoke-direct {v0}, Landroid/arch/persistence/a/a/c;-><init>()V

    iput-object v0, p0, Landroid/arch/persistence/room/f$a;->e:Landroid/arch/persistence/a/c$c;

    .line 625
    :cond_4
    new-instance v0, Landroid/arch/persistence/room/a;

    iget-object v1, p0, Landroid/arch/persistence/room/f$a;->c:Landroid/content/Context;

    iget-object v2, p0, Landroid/arch/persistence/room/f$a;->b:Ljava/lang/String;

    iget-object v3, p0, Landroid/arch/persistence/room/f$a;->e:Landroid/arch/persistence/a/c$c;

    iget-object v4, p0, Landroid/arch/persistence/room/f$a;->i:Landroid/arch/persistence/room/f$d;

    iget-object v5, p0, Landroid/arch/persistence/room/f$a;->d:Ljava/util/ArrayList;

    iget-boolean v6, p0, Landroid/arch/persistence/room/f$a;->f:Z

    iget-object v7, p0, Landroid/arch/persistence/room/f$a;->g:Landroid/arch/persistence/room/f$c;

    iget-object v8, p0, Landroid/arch/persistence/room/f$a;->c:Landroid/content/Context;

    .line 628
    invoke-virtual {v7, v8}, Landroid/arch/persistence/room/f$c;->a(Landroid/content/Context;)Landroid/arch/persistence/room/f$c;

    move-result-object v7

    iget-boolean v8, p0, Landroid/arch/persistence/room/f$a;->h:Z

    iget-object v9, p0, Landroid/arch/persistence/room/f$a;->j:Ljava/util/Set;

    invoke-direct/range {v0 .. v9}, Landroid/arch/persistence/room/a;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/arch/persistence/a/c$c;Landroid/arch/persistence/room/f$d;Ljava/util/List;ZLandroid/arch/persistence/room/f$c;ZLjava/util/Set;)V

    .line 630
    iget-object v1, p0, Landroid/arch/persistence/room/f$a;->a:Ljava/lang/Class;

    const-string v2, "_Impl"

    invoke-static {v1, v2}, Landroid/arch/persistence/room/e;->a(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/arch/persistence/room/f;

    .line 631
    invoke-virtual {v1, v0}, Landroid/arch/persistence/room/f;->init(Landroid/arch/persistence/room/a;)V

    .line 632
    return-object v1
.end method
