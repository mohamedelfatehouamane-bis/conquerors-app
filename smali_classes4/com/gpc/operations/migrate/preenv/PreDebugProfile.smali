.class public Lcom/gpc/operations/migrate/preenv/PreDebugProfile;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "PreDebugProfile"

.field private static final VERSION:Ljava/lang/String; = "1"


# instance fields
.field private GCID:Ljava/lang/String;

.field private cypherString:Ljava/lang/String;

.field private enableDebug:Z

.field private httpRules:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/preenv/HttpRule;",
            ">;"
        }
    .end annotation
.end field

.field private version:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Ljava/lang/String;)Lcom/gpc/operations/migrate/preenv/PreDebugProfile;
    .locals 5

    .line 1
    const-string v0, "PreDebugProfile"

    new-instance v1, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;

    invoke-direct {v1}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;-><init>()V

    .line 3
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 5
    :try_start_0
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    const-string v3, "createFromJson"

    invoke-static {v0, v3, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 10
    :goto_0
    const-string p0, "version"

    const-string v3, ""

    invoke-virtual {v2, p0, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 11
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Version:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v1, p0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->setVersion(Ljava/lang/String;)V

    .line 14
    const-string v0, "1"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    invoke-static {v2, v1}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->parseVersionOne(Lorg/json/JSONObject;Lcom/gpc/operations/migrate/preenv/PreDebugProfile;)V

    return-object v1

    .line 17
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Invalid family configuration version: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static parseVersionOne(Lorg/json/JSONObject;Lcom/gpc/operations/migrate/preenv/PreDebugProfile;)V
    .locals 3

    .line 1
    const-string v0, "gc_id"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->setGCID(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GCID:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->getGCID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PreDebugProfile"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "debug"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "1"

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->setEnableDebug(Z)V

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "EnableDebug:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->isEnableDebug()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-virtual {p1, v0}, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->setHttpRules(Ljava/util/List;)V

    .line 9
    const-string p1, "http_rules"

    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 11
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-lez p1, :cond_0

    const/4 p1, 0x0

    .line 12
    :goto_0
    invoke-virtual {p0}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge p1, v1, :cond_0

    .line 13
    invoke-virtual {p0, p1}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;

    move-result-object v1

    .line 14
    invoke-static {v1}, Lcom/gpc/operations/migrate/preenv/HttpRule;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/operations/migrate/preenv/HttpRule;

    move-result-object v1

    .line 15
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getCypherString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->cypherString:Ljava/lang/String;

    return-object v0
.end method

.method public getGCID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->GCID:Ljava/lang/String;

    return-object v0
.end method

.method public getHttpRules()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/preenv/HttpRule;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->httpRules:Ljava/util/List;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->version:Ljava/lang/String;

    return-object v0
.end method

.method public isEnableDebug()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->enableDebug:Z

    return v0
.end method

.method public setCypherString(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->cypherString:Ljava/lang/String;

    return-void
.end method

.method public setEnableDebug(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->enableDebug:Z

    return-void
.end method

.method public setGCID(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->GCID:Ljava/lang/String;

    return-void
.end method

.method public setHttpRules(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/operations/migrate/preenv/HttpRule;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->httpRules:Ljava/util/List;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/preenv/PreDebugProfile;->version:Ljava/lang/String;

    return-void
.end method
