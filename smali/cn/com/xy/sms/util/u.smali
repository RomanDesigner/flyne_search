.class final Lcn/com/xy/sms/util/u;
.super Ljava/lang/Object;

# interfaces
.implements Lcn/com/xy/sms/util/SdkCallBack;


# instance fields
.field private final synthetic a:I

.field private final synthetic b:Lcn/com/xy/sms/util/SdkCallBack;


# direct methods
.method constructor <init>(ILcn/com/xy/sms/util/SdkCallBack;)V
    .locals 0

    iput p1, p0, Lcn/com/xy/sms/util/u;->a:I

    iput-object p2, p0, Lcn/com/xy/sms/util/u;->b:Lcn/com/xy/sms/util/SdkCallBack;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final varargs execute([Ljava/lang/Object;)V
    .locals 7

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    aget-object v0, p1, v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcn/com/xy/sms/sdk/util/StringUtils;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iget v0, p0, Lcn/com/xy/sms/util/u;->a:I

    if-ne v0, v2, :cond_1

    iget-object v0, p0, Lcn/com/xy/sms/util/u;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "logoName"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "logo"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Lcn/com/xy/sms/util/u;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    const-string v6, "name"

    aput-object v6, v4, v5

    const/4 v5, 0x1

    const-string v6, "name"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x2

    const-string v6, "logoName"

    aput-object v6, v4, v5

    const/4 v5, 0x3

    const-string v6, "logoc"

    invoke-virtual {v1, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v5

    invoke-static {v4}, Lcn/com/xy/sms/util/PublicInfoParseManager;->getJSONObject([Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    aput-object v1, v2, v3

    invoke-static {v0, v2}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBackResult(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    iget-object v0, p0, Lcn/com/xy/sms/util/u;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    :try_start_1
    iget-object v0, p0, Lcn/com/xy/sms/util/u;->b:Lcn/com/xy/sms/util/SdkCallBack;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/com/xy/sms/sdk/util/XyUtil;->doXycallBack(Lcn/com/xy/sms/sdk/Iservice/XyCallBack;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
