.class public Lcom/gpc/sdk/utils/modules/conf/SystemItem;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SystemItem"


# instance fields
.field private apis:Lcom/gpc/sdk/utils/modules/conf/Apis;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/SystemItem;
    .locals 5

    const-string v0, "SystemItem"

    const-string v1, "apis"

    .line 1
    new-instance v2, Lcom/gpc/sdk/utils/modules/conf/SystemItem;

    invoke-direct {v2}, Lcom/gpc/sdk/utils/modules/conf/SystemItem;-><init>()V

    const/4 v3, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4
    const-string p0, "apis is null"

    invoke-static {v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v3

    .line 7
    :cond_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/sdk/utils/modules/conf/Apis;->createApis(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/Apis;

    move-result-object p0

    iput-object p0, v2, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->apis:Lcom/gpc/sdk/utils/modules/conf/Apis;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez p0, :cond_1

    return-object v3

    :cond_1
    return-object v2

    :catch_0
    move-exception p0

    .line 12
    const-string v1, "SystemItem createFromJson"

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v3
.end method


# virtual methods
.method public getApis()Lcom/gpc/sdk/utils/modules/conf/Apis;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->apis:Lcom/gpc/sdk/utils/modules/conf/Apis;

    return-object v0
.end method

.method public setApis(Lcom/gpc/sdk/utils/modules/conf/Apis;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/SystemItem;->apis:Lcom/gpc/sdk/utils/modules/conf/Apis;

    return-void
.end method
