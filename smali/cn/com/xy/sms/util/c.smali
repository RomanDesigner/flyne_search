.class final Lcn/com/xy/sms/util/c;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic a:Lcn/com/xy/sms/sdk/util/D;

.field private final synthetic b:Ljava/lang/String;

.field private final synthetic c:Ljava/lang/String;

.field private final synthetic d:Ljava/lang/String;

.field private final synthetic e:J

.field private final synthetic f:Lcn/com/xy/sms/util/SdkCallBack;

.field private final synthetic g:Ljava/lang/String;

.field private final synthetic h:Ljava/util/Map;

.field private final synthetic i:I


# direct methods
.method constructor <init>(Lcn/com/xy/sms/sdk/util/D;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLcn/com/xy/sms/util/SdkCallBack;Ljava/lang/String;Ljava/util/Map;I)V
    .locals 1

    iput-object p1, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iput-object p2, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    iput-object p3, p0, Lcn/com/xy/sms/util/c;->c:Ljava/lang/String;

    iput-object p4, p0, Lcn/com/xy/sms/util/c;->d:Ljava/lang/String;

    iput-wide p5, p0, Lcn/com/xy/sms/util/c;->e:J

    iput-object p7, p0, Lcn/com/xy/sms/util/c;->f:Lcn/com/xy/sms/util/SdkCallBack;

    iput-object p8, p0, Lcn/com/xy/sms/util/c;->g:Ljava/lang/String;

    iput-object p9, p0, Lcn/com/xy/sms/util/c;->h:Ljava/util/Map;

    iput p10, p0, Lcn/com/xy/sms/util/c;->i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 7

    :try_start_0
    const-string v0, "xy_richpool_1"

    const/16 v1, 0xa

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/a/a;->a(Ljava/lang/String;I)V

    const/16 v0, -0x10

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/c;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/util/c;->e:J

    invoke-static {v0, v1, v2, v4, v5}, Lcn/com/xy/sms/util/ParseRichBubbleManager;->queryBubbleDataFromDb(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_1

    const-string v1, "need_parse_simple"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    const-string v1, "session_reuslt"

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/JsonUtil;->getValueFromJsonObject(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->c:Ljava/util/Map;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    :try_start_1
    iget-object v2, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v2, v2, Lcn/com/xy/sms/sdk/util/D;->c:Ljava/util/Map;

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    iget-object v1, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->d:Ljava/util/HashSet;

    iget-object v2, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->e:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    :goto_0
    return-void

    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1

    throw v0
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/Throwable;->getLocalizedMessage()Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, -0x3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "result is null: error: "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->e:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    :try_start_5
    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->d:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, " invalid data need_parse_simple"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->e:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    :try_start_6
    iget-object v0, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->c:Ljava/lang/String;

    iget-object v2, p0, Lcn/com/xy/sms/util/c;->g:Ljava/lang/String;

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->d:Ljava/lang/String;

    iget-wide v4, p0, Lcn/com/xy/sms/util/c;->e:J

    iget-object v6, p0, Lcn/com/xy/sms/util/c;->h:Ljava/util/Map;

    invoke-static/range {v0 .. v6}, Lcn/com/xy/sms/util/ParseBubbleManager;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/util/Map;)Lorg/json/JSONArray;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->c:Ljava/util/Map;

    monitor-enter v1
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    :try_start_7
    iget-object v2, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v2, v2, Lcn/com/xy/sms/sdk/util/D;->c:Ljava/util/Map;

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    iget-object v1, p0, Lcn/com/xy/sms/util/c;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v0, v2, v3

    const/4 v0, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v0

    invoke-static {v1, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    :goto_1
    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->e:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    :try_start_9
    monitor-exit v1

    throw v0
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    :catchall_2
    move-exception v0

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v1, v1, Lcn/com/xy/sms/sdk/util/D;->e:Ljava/util/HashSet;

    iget-object v2, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    throw v0

    :cond_2
    :try_start_a
    iget-object v0, p0, Lcn/com/xy/sms/util/c;->a:Lcn/com/xy/sms/sdk/util/D;

    iget-object v0, v0, Lcn/com/xy/sms/sdk/util/D;->d:Ljava/util/HashSet;

    iget-object v1, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcn/com/xy/sms/util/c;->f:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, -0x3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "$$$$$$$$$$ dataType: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v4, p0, Lcn/com/xy/sms/util/c;->i:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcn/com/xy/sms/util/c;->b:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_1
.end method
