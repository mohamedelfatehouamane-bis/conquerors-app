.class public Lcom/gpc/operations/migrate/bean/conf/FamilyConf;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "FamilyConf"

.field private static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private apis:Lcom/gpc/operations/migrate/bean/conf/Apis;

.field private family:Lcom/gpc/operations/migrate/bean/conf/Family;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    const-string v0, "system"

    const-string v1, "family"

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-string v3, "FamilyConf"

    if-nez v2, :cond_3

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "create FamilyConf ,json is : "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-direct {p0, v2}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->verifyVersion(Lorg/json/JSONObject;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 10
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 11
    invoke-static {p1}, Lcom/gpc/operations/migrate/bean/conf/Family;->createFamily(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/bean/conf/Family;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->family:Lcom/gpc/operations/migrate/bean/conf/Family;

    .line 13
    :cond_1
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 14
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 15
    invoke-static {p1}, Lcom/gpc/operations/migrate/bean/conf/Apis;->createApis(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/bean/conf/Apis;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->apis:Lcom/gpc/operations/migrate/bean/conf/Apis;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 18
    const-string v0, "JSONException"

    invoke-static {v3, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_2
    :goto_0
    return-void

    .line 21
    :cond_3
    const-string p1, "json is null."

    invoke-static {v3, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private verifyVersion(Lorg/json/JSONObject;)Z
    .locals 7

    const-string v0, "version"

    const-string v1, "_"

    const-string v2, "FamilyConf"

    const-string v3, "verifyVersion error;parse version:"

    const-string v4, "VERSION1 ;parse version: "

    const/4 v5, 0x0

    .line 1
    :try_start_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    return v5

    .line 4
    :cond_0
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    .line 5
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v5

    .line 8
    :cond_1
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    const-string v0, "1"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x1

    return p1

    .line 13
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return v5

    :catch_0
    move-exception p1

    .line 17
    const-string v0, "verifyVersion JSONException"

    invoke-static {v2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v5
.end method


# virtual methods
.method public getApis()Lcom/gpc/operations/migrate/bean/conf/Apis;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->apis:Lcom/gpc/operations/migrate/bean/conf/Apis;

    return-object v0
.end method

.method public getFamily()Lcom/gpc/operations/migrate/bean/conf/Family;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->family:Lcom/gpc/operations/migrate/bean/conf/Family;

    return-object v0
.end method

.method public isFamilyConfDataError()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getFamily()Lcom/gpc/operations/migrate/bean/conf/Family;

    move-result-object v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->getApis()Lcom/gpc/operations/migrate/bean/conf/Apis;

    move-result-object v0

    if-nez v0, :cond_1

    return v1

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public setApis(Lcom/gpc/operations/migrate/bean/conf/Apis;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->apis:Lcom/gpc/operations/migrate/bean/conf/Apis;

    return-void
.end method

.method public setFamily(Lcom/gpc/operations/migrate/bean/conf/Family;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/bean/conf/FamilyConf;->family:Lcom/gpc/operations/migrate/bean/conf/Family;

    return-void
.end method
