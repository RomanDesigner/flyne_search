.class public interface abstract Lcom/bumptech/glide/load/c/h;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lcom/bumptech/glide/load/c/h;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final b:Lcom/bumptech/glide/load/c/h;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 19
    new-instance v0, Lcom/bumptech/glide/load/c/h$1;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/h$1;-><init>()V

    sput-object v0, Lcom/bumptech/glide/load/c/h;->a:Lcom/bumptech/glide/load/c/h;

    .line 30
    new-instance v0, Lcom/bumptech/glide/load/c/j$a;

    invoke-direct {v0}, Lcom/bumptech/glide/load/c/j$a;-><init>()V

    invoke-virtual {v0}, Lcom/bumptech/glide/load/c/j$a;->a()Lcom/bumptech/glide/load/c/j;

    move-result-object v0

    sput-object v0, Lcom/bumptech/glide/load/c/h;->b:Lcom/bumptech/glide/load/c/h;

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
