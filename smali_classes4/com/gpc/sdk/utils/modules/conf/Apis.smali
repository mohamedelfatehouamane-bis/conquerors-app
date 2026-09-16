.class public Lcom/gpc/sdk/utils/modules/conf/Apis;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Apis"


# instance fields
.field private prefixes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private secretKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createApis(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/Apis;
    .locals 7

    const-string v0, "android"

    const-string v1, "secret_key"

    const-string v2, "prefixes"

    const-string v3, "Apis"

    .line 1
    new-instance v4, Lcom/gpc/sdk/utils/modules/conf/Apis;

    invoke-direct {v4}, Lcom/gpc/sdk/utils/modules/conf/Apis;-><init>()V

    const/4 v5, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 4
    const-string p0, "prefixes is null"

    invoke-static {v3, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 7
    :cond_0
    invoke-static {p0, v2}, Lcom/gpc/util/JsonParserUtils;->getStringListFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/utils/modules/conf/Apis;->setPrefixes(Ljava/util/List;)V

    .line 8
    iget-object v2, v4, Lcom/gpc/sdk/utils/modules/conf/Apis;->prefixes:Ljava/util/List;

    if-nez v2, :cond_1

    return-object v5

    .line 12
    :cond_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 13
    const-string p0, "secret_key is null"

    invoke-static {v3, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 16
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 17
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 18
    const-string p0, "secret_key android is null"

    invoke-static {v3, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v5

    .line 21
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v4, Lcom/gpc/sdk/utils/modules/conf/Apis;->secretKey:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v4

    :catch_0
    move-exception p0

    .line 23
    const-string v0, "createApis JSONException"

    invoke-static {v3, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v5
.end method


# virtual methods
.method public getPrefixes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/Apis;->prefixes:Ljava/util/List;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/Apis;->secretKey:Ljava/lang/String;

    return-object v0
.end method

.method public setPrefixes(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/Apis;->prefixes:Ljava/util/List;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/Apis;->secretKey:Ljava/lang/String;

    return-void
.end method
