.class public final Lcn/com/xy/sms/sdk/queue/b;
.super Ljava/lang/Thread;


# static fields
.field private static a:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method

.method public static declared-synchronized a()V
    .locals 2

    const-class v1, Lcn/com/xy/sms/sdk/queue/b;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    sput-boolean v0, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    new-instance v0, Lcn/com/xy/sms/sdk/queue/b;

    invoke-direct {v0}, Lcn/com/xy/sms/sdk/queue/b;-><init>()V

    invoke-virtual {v0}, Lcn/com/xy/sms/sdk/queue/b;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private a(Lorg/json/JSONObject;)V
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    :try_start_0
    const-string v0, "emContent"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/net/util/g;->a(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez p1, :cond_0

    :goto_0
    const-wide/16 v0, 0x7d0

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/queue/b;->a(Lorg/json/JSONObject;)V

    :goto_2
    return-void

    :cond_0
    :try_start_2
    const-string v0, "emVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v0, ""

    :cond_1
    const-string v1, "tb_emergency_queue"

    const-string v2, "emVersion = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcn/com/xy/sms/sdk/db/DBManager;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception v0

    const-wide/16 v0, 0x7d0

    :try_start_3
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/queue/b;->a(Lorg/json/JSONObject;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    const-wide/16 v2, 0x7d0

    :try_start_4
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :goto_4
    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/e;->b()Lorg/json/JSONObject;

    move-result-object v1

    invoke-direct {p0, v1}, Lcn/com/xy/sms/sdk/queue/b;->a(Lorg/json/JSONObject;)V

    throw v0

    :cond_2
    sput-boolean v0, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v1

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_1
.end method


# virtual methods
.method public final run()V
    .locals 3

    const/4 v2, 0x0

    :try_start_0
    const-string v0, "xiaoyuan_EmergencyQueue"

    invoke-virtual {p0, v0}, Lcn/com/xy/sms/sdk/queue/b;->setName(Ljava/lang/String;)V

    sget v0, Lcn/com/xy/sms/sdk/queue/i;->b:I

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x3e8

    :try_start_1
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V

    invoke-static {}, Lcn/com/xy/sms/sdk/db/entity/e;->b()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {p0, v0}, Lcn/com/xy/sms/sdk/queue/b;->a(Lorg/json/JSONObject;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    const/4 v0, 0x0

    :try_start_2
    sput-boolean v0, Lcn/com/xy/sms/sdk/queue/b;->a:Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    sput-boolean v2, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sput-boolean v2, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    goto :goto_1

    :catchall_0
    move-exception v0

    sput-boolean v2, Lcn/com/xy/sms/sdk/queue/b;->a:Z

    throw v0

    :catch_1
    move-exception v0

    goto :goto_0
.end method
