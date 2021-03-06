.class public Lcom/meizu/common/util/SDCardHelper;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/meizu/common/util/SDCardHelper$MountPoint;,
        Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;,
        Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/meizu/common/util/SDCardHelper;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsMounted:Z

.field private mMountPathList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/util/SDCardHelper$MountPoint;",
            ">;"
        }
    .end annotation
.end field

.field private final mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

.field private sDescription:Ljava/lang/reflect/Method;

.field private sIsRemovable:Ljava/lang/reflect/Method;

.field private sPath:Ljava/lang/reflect/Method;

.field private sStorageVolumes:[Ljava/lang/Object;

.field private sVolumeState:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 60
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 30
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 31
    new-instance v0, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;-><init>(Lcom/meizu/common/util/SDCardHelper$1;)V

    iput-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {v0}, Ljava/util/Collections;->synchronizedList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    .line 61
    iput-object p1, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    .line 63
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 64
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 66
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    const-string v1, "file"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 68
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 69
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/SDCardHelper;->getMountPointList(Landroid/content/Context;)Ljava/util/List;

    .line 70
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->isSDCardMounted()Z

    move-result v0

    iput-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 71
    return-void
.end method

.method public static createInstance(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    if-nez v0, :cond_1

    .line 48
    const-class v1, Lcom/meizu/common/util/SDCardHelper;

    monitor-enter v1

    .line 49
    :try_start_0
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    if-nez v0, :cond_0

    .line 50
    new-instance v0, Lcom/meizu/common/util/SDCardHelper;

    invoke-direct {v0, p0}, Lcom/meizu/common/util/SDCardHelper;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    .line 52
    :cond_0
    monitor-exit v1

    .line 54
    :cond_1
    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public static getInstance()Lcom/meizu/common/util/SDCardHelper;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    return-object v0
.end method


# virtual methods
.method public getMountPointList(Landroid/content/Context;)Ljava/util/List;
    .locals 11
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/meizu/common/util/SDCardHelper$MountPoint;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string v0, "storage"

    .line 175
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/storage/StorageManager;

    .line 176
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 180
    :try_start_0
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 181
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v3, "getVolumeList"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    .line 182
    invoke-virtual {v1, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;

    .line 185
    :cond_0
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;

    if-eqz v1, :cond_3

    .line 186
    iget-object v4, p0, Lcom/meizu/common/util/SDCardHelper;->sStorageVolumes:[Ljava/lang/Object;

    array-length v5, v4

    move v3, v2

    :goto_0
    if-ge v3, v5, :cond_3

    aget-object v6, v4, v3

    .line 187
    new-instance v7, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    invoke-direct {v7, p0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;-><init>(Lcom/meizu/common/util/SDCardHelper;)V

    .line 188
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    if-nez v1, :cond_2

    .line 189
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getDescription"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/content/Context;

    aput-object v10, v8, v9

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    .line 190
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getPath"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    .line 191
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "isRemovable"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    .line 192
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "getVolumeState"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Ljava/lang/String;

    aput-object v10, v8, v9

    invoke-virtual {v1, v2, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    iput-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    .line 194
    :cond_2
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sPath:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 197
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->sDescription:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object p1, v8, v9

    invoke-virtual {v2, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-static {v7, v2}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$300(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 199
    invoke-static {v7, v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$400(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 202
    iget-object v2, p0, Lcom/meizu/common/util/SDCardHelper;->sVolumeState:Ljava/lang/reflect/Method;

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v1, v8, v9

    .line 203
    invoke-virtual {v2, v0, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 202
    invoke-static {v7, v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$500(Lcom/meizu/common/util/SDCardHelper$MountPoint;Ljava/lang/String;)V

    .line 206
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->sIsRemovable:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {v1, v6, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v7, v1}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$600(Lcom/meizu/common/util/SDCardHelper$MountPoint;Z)V

    .line 207
    iget-object v1, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1

    .line 186
    add-int/lit8 v1, v3, 0x1

    move v3, v1

    goto/16 :goto_0

    .line 210
    :catch_0
    move-exception v0

    .line 211
    :goto_1
    invoke-virtual {v0}, Ljava/lang/ReflectiveOperationException;->printStackTrace()V

    .line 213
    :cond_3
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    return-object v0

    .line 210
    :catch_1
    move-exception v0

    goto :goto_1

    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method public getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 141
    invoke-static {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "mnt"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 4

    .prologue
    .line 164
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 165
    invoke-static {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$200(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "storage"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 169
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getStorageMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mMountPathList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/meizu/common/util/SDCardHelper$MountPoint;

    .line 153
    invoke-static {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->access$100(Lcom/meizu/common/util/SDCardHelper$MountPoint;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :goto_0
    return-object v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isMounted()Z
    .locals 1

    .prologue
    .line 95
    iget-boolean v0, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    return v0
.end method

.method public isOtgMounted()Z
    .locals 1

    .prologue
    .line 130
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 131
    const/4 v0, 0x0

    .line 133
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getOtgMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    goto :goto_0
.end method

.method public isSDCardMounted()Z
    .locals 1

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 126
    :goto_0
    return v0

    :cond_0
    invoke-virtual {p0}, Lcom/meizu/common/util/SDCardHelper;->getSDCardMountPoint()Lcom/meizu/common/util/SDCardHelper$MountPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/meizu/common/util/SDCardHelper$MountPoint;->isMounted()Z

    move-result v0

    goto :goto_0
.end method

.method public notifyStateChanged(Landroid/content/Intent;Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1, p2}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->notifyStateChanged(Landroid/content/Intent;Z)V

    .line 108
    return-void
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 75
    const/4 v0, 0x0

    sput-object v0, Lcom/meizu/common/util/SDCardHelper;->sInstance:Lcom/meizu/common/util/SDCardHelper;

    .line 76
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 80
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 81
    invoke-virtual {p0, p1}, Lcom/meizu/common/util/SDCardHelper;->getMountPointList(Landroid/content/Context;)Ljava/util/List;

    .line 82
    const-string v1, "android.intent.action.MEDIA_MOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 83
    iput-boolean v3, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 84
    invoke-virtual {p0, p2, v3}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    .line 92
    :cond_0
    :goto_0
    return-void

    .line 85
    :cond_1
    const-string v1, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 86
    iput-boolean v2, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 87
    invoke-virtual {p0, p2, v2}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0

    .line 88
    :cond_2
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 89
    iput-boolean v2, p0, Lcom/meizu/common/util/SDCardHelper;->mIsMounted:Z

    .line 90
    invoke-virtual {p0, p2, v2}, Lcom/meizu/common/util/SDCardHelper;->notifyStateChanged(Landroid/content/Intent;Z)V

    goto :goto_0
.end method

.method public registerStateObserver(Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->registerObserver(Ljava/lang/Object;)V

    .line 100
    return-void
.end method

.method public unregisterStateObserver(Lcom/meizu/common/util/SDCardHelper$SDCardStateObserver;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/meizu/common/util/SDCardHelper;->mStateObservable:Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;

    invoke-virtual {v0, p1}, Lcom/meizu/common/util/SDCardHelper$SDCardStateObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 104
    return-void
.end method
