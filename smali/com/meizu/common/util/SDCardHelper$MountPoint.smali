.class public Lcom/meizu/common/util/SDCardHelper$MountPoint;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/util/SDCardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MountPoint"
.end annotation


# instance fields
.field private mDescription:Ljava/lang/String;

.field private mIsExternal:Z

.field private mMountedState:Ljava/lang/String;

.field private mPath:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/common/util/SDCardHelper;


# direct methods
.method public constructor <init>(Lcom/meizu/common/util/SDCardHelper;)V
    .locals 0

    .prologue
    .line 219
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->this$0:Lcom/meizu/common/util/SDCardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z
    .locals 1

    .prologue
    .line 219
    iget-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mIsExternal:Z

    return v0
.end method

.method static synthetic access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 219
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->setDescription(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->setPath(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->setMountedState(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$600(Lcom/meizu/common/util/SDCardHelper$MountPoint;Z)V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0, p1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->setExternal(Z)V

    return-void
.end method

.method private setDescription(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 238
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mDescription:Ljava/lang/String;

    .line 239
    return-void
.end method

.method private setExternal(Z)V
    .locals 0

    .prologue
    .line 294
    iput-boolean p1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mIsExternal:Z

    .line 295
    return-void
.end method

.method private setMountedState(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 274
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mMountedState:Ljava/lang/String;

    .line 275
    return-void
.end method

.method private setPath(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 256
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;

    .line 257
    return-void
.end method


# virtual methods
.method public availableSpace()J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 310
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    const-wide/16 v0, 0x0

    .line 314
    :goto_0
    return-wide v0

    .line 313
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 314
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mDescription:Ljava/lang/String;

    return-object v0
.end method

.method public getMountedState()Ljava/lang/String;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mMountedState:Ljava/lang/String;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;

    return-object v0
.end method

.method public getTotalBlocks()J
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "NewApi"
        }
    .end annotation

    .prologue
    .line 300
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    const-wide/16 v0, 0x0

    .line 304
    :goto_0
    return-wide v0

    .line 303
    :cond_0
    new-instance v0, Landroid/os/StatFs;

    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mPath:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 304
    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v2

    invoke-virtual {v0}, Landroid/os/StatFs;->getBlockCountLong()J

    move-result-wide v0

    mul-long/2addr v0, v2

    goto :goto_0
.end method

.method public isExternal()Z
    .locals 1

    .prologue
    .line 290
    iget-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mIsExternal:Z

    return v0
.end method

.method public isMounted()Z
    .locals 2

    .prologue
    .line 283
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper$MountPoint;->mMountedState:Ljava/lang/String;

    const-string v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
