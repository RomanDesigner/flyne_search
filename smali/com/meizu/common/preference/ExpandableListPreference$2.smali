.class Lcom/meizu/common/preference/ExpandableListPreference$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/meizu/common/preference/ExpandableListPreference;


# direct methods
.method constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference;)V
    .locals 0

    .prologue
    .line 501
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$2;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Lcom/meizu/common/preference/ExpandableListPreference$2;->this$0:Lcom/meizu/common/preference/ExpandableListPreference;

    invoke-virtual {v0}, Lcom/meizu/common/preference/ExpandableListPreference;->performCollapseAnim()V

    .line 506
    return-void
.end method
