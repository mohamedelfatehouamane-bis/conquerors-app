.class public Lcom/gpc/operations/migrate/bean/conf/Family;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "Family"


# instance fields
.field private generalDomain:Ljava/lang/String;

.field private idAlias:Ljava/lang/String;

.field private staticsDomain:Ljava/lang/String;

.field private webDomain:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFamily(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/bean/conf/Family;
    .locals 9

    const-string v0, "statics"

    const-string v1, "general"

    const-string v2, "web"

    const-string v3, "domain"

    const-string v4, "id_alias"

    const-string v5, "Family"

    .line 1
    new-instance v6, Lcom/gpc/operations/migrate/bean/conf/Family;

    invoke-direct {v6}, Lcom/gpc/operations/migrate/bean/conf/Family;-><init>()V

    const/4 v7, 0x0

    .line 3
    :try_start_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 4
    const-string p0, "prefixes is null"

    invoke-static {v5, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 7
    :cond_0
    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v6, v4}, Lcom/gpc/operations/migrate/bean/conf/Family;->setIdAlias(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 10
    const-string p0, "domain is null"

    invoke-static {v5, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v7

    .line 13
    :cond_1
    invoke-virtual {p0, v3}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 14
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 15
    invoke-virtual {p0, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/gpc/operations/migrate/bean/conf/Family;->setWebDomain(Ljava/lang/String;)V

    goto :goto_0

    .line 17
    :cond_2
    const-string v2, "web is null"

    invoke-static {v5, v2}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    :goto_0
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 20
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Lcom/gpc/operations/migrate/bean/conf/Family;->setGeneralDomain(Ljava/lang/String;)V

    .line 22
    :cond_3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 23
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v6, p0}, Lcom/gpc/operations/migrate/bean/conf/Family;->setStaticsDomain(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object v6

    :catch_0
    move-exception p0

    .line 27
    const-string v0, "createFamily JSONException"

    invoke-static {v5, v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v7
.end method


# virtual methods
.method public getGeneralDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->generalDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getIdAlias()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->idAlias:Ljava/lang/String;

    return-object v0
.end method

.method public getStaticsDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->staticsDomain:Ljava/lang/String;

    return-object v0
.end method

.method public getWebDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->webDomain:Ljava/lang/String;

    return-object v0
.end method

.method public setGeneralDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->generalDomain:Ljava/lang/String;

    return-void
.end method

.method public setIdAlias(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->idAlias:Ljava/lang/String;

    return-void
.end method

.method public setStaticsDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->staticsDomain:Ljava/lang/String;

    return-void
.end method

.method public setWebDomain(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/Family;->webDomain:Ljava/lang/String;

    return-void
.end method
