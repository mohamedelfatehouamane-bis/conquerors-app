.class public Lcom/gpc/operations/migrate/bean/conf/Apis;
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

.method public static createApis(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/bean/conf/Apis;
    .locals 8

    const-string v0, "android"

    const-string v1, "secret_key"

    const-string v2, "prefixes"

    const-string v3, "apis"

    const-string v4, "Apis"

    .line 1
    new-instance v5, Lcom/gpc/operations/migrate/bean/conf/Apis;

    invoke-direct {v5}, Lcom/gpc/operations/migrate/bean/conf/Apis;-><init>()V

    const/4 v6, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 4
    const-string p0, "apis is null"

    invoke-static {v4, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 7
    :cond_0
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 8
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 9
    const-string p0, "prefixes is null"

    invoke-static {v4, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 12
    :cond_1
    invoke-static {p0, v2}, Lcom/gpc/operations/migrate/utils/JsonParserUtils;->getStringListFromJson(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v5, v2}, Lcom/gpc/operations/migrate/bean/conf/Apis;->setPrefixes(Ljava/util/List;)V

    .line 15
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 16
    const-string p0, "secret_key is null"

    invoke-static {v4, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 19
    :cond_2
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 20
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 21
    const-string p0, "secret_key android is null"

    invoke-static {v4, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v6

    .line 24
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v5, Lcom/gpc/operations/migrate/bean/conf/Apis;->secretKey:Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    :catch_0
    move-exception p0

    .line 27
    const-string v0, "createApis JSONException"

    invoke-static {v4, v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v6
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
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/Apis;->prefixes:Ljava/util/List;

    return-object v0
.end method

.method public getSecretKey()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/Apis;->secretKey:Ljava/lang/String;

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
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/Apis;->prefixes:Ljava/util/List;

    return-void
.end method

.method public setSecretKey(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/Apis;->secretKey:Ljava/lang/String;

    return-void
.end method
