.class public final Lcn/com/xy/sms/sdk/db/entity/n;
.super Ljava/lang/Object;


# static fields
.field private static a:Ljava/lang/String; = "tb_operator_cmd_info"

.field private static b:Ljava/lang/String; = "id"

.field private static c:Ljava/lang/String; = "phone"

.field private static d:Ljava/lang/String; = "iccid"

.field private static e:Ljava/lang/String; = "actions"

.field private static f:Ljava/lang/String; = "updateInfoTime"

.field private static g:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "updateInfoTime"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "actions"

    aput-object v2, v0, v1

    sput-object v0, Lcn/com/xy/sms/sdk/db/entity/n;->g:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 8

    const-wide/16 v0, -0x1

    const/4 v2, 0x0

    const/16 v3, 0x8

    :try_start_0
    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    const-string v5, "phone"

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aput-object p0, v3, v4

    const/4 v4, 0x2

    const-string v5, "iccid"

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object p1, v3, v4

    const/4 v4, 0x4

    const-string v5, "actions"

    aput-object v5, v3, v4

    const/4 v4, 0x5

    aput-object p2, v3, v4

    const/4 v4, 0x6

    const-string v5, "updateInfoTime"

    aput-object v5, v3, v4

    const/4 v4, 0x7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->getContentValues(Landroid/content/ContentValues;[Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v2

    const-string v3, "tb_operator_cmd_info"

    const-string v4, "phone = ? or iccid = ?"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/String;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    aput-object p1, v5, v6

    invoke-static {v3, v2, v4, v5}, Lcn/com/xy/sms/sdk/db/DBManager;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    if-gtz v3, :cond_0

    const-string v3, "tb_operator_cmd_info"

    invoke-static {v3, v2}, Lcn/com/xy/sms/sdk/db/DBManager;->insert(Ljava/lang/String;Landroid/content/ContentValues;)J
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0

    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static a()Ljava/lang/String;
    .locals 1

    const-string v0, " create table  if not exists tb_operator_cmd_info (id  INTEGER PRIMARY KEY,phone  TEXT,iccid  TEXT,actions TEXT,updateInfoTime  long DEFAULT \'0\')"

    return-object v0
.end method

.method public static a(Ljava/lang/String;)Lorg/json/JSONObject;
    .locals 10

    const/4 v9, 0x1

    const/4 v8, 0x0

    :try_start_0
    const-string v0, "tb_operator_cmd_info"

    sget-object v1, Lcn/com/xy/sms/sdk/db/entity/n;->g:[Ljava/lang/String;

    const-string v2, "phone = ?"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcn/com/xy/sms/sdk/db/DBManager;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcn/com/xy/sms/sdk/db/XyCursor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    :try_start_1
    sget-object v0, Lcn/com/xy/sms/sdk/db/entity/n;->g:[Ljava/lang/String;

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/db/base/BaseManager;->loadSingleDataFromCursor([Ljava/lang/String;Lcn/com/xy/sms/sdk/db/XyCursor;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    invoke-static {v1, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    move-object v0, v8

    :goto_1
    invoke-static {v0, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    move-object v0, v8

    goto :goto_0

    :catchall_0
    move-exception v0

    :goto_2
    invoke-static {v8, v9}, Lcn/com/xy/sms/sdk/db/XyCursor;->closeCursor(Lcn/com/xy/sms/sdk/db/XyCursor;Z)V

    throw v0

    :catchall_1
    move-exception v0

    move-object v8, v1

    goto :goto_2

    :catch_1
    move-exception v0

    move-object v0, v1

    goto :goto_1
.end method
