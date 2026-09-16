.class public Lcom/gpc/sdk/bean/GPCGameAnnouncements;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "GPCGameAnnouncements"


# instance fields
.field private mandatoryUpdate:Ljava/lang/String;

.field protected messageJsonObject:Lorg/json/JSONObject;

.field private onLogin:Ljava/lang/String;

.field private update:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->messageJsonObject:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public getCustomized(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    const-string v0, "GPCGameAnnouncements"

    const/4 v1, 0x0

    .line 1
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 2
    const-string v2, "\\."

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3
    array-length v3, v2

    if-lez v3, :cond_3

    .line 4
    iget-object v3, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->messageJsonObject:Lorg/json/JSONObject;

    const/4 v4, 0x0

    .line 5
    :goto_0
    array-length v5, v2

    if-ge v4, v5, :cond_2

    .line 6
    aget-object v5, v2, v4

    .line 7
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    add-int/lit8 v4, v4, 0x1

    .line 8
    array-length v6, v2

    if-lt v4, v6, :cond_0

    .line 9
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {v3, v5}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v3

    goto :goto_0

    .line 14
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unknow part:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", please check Customized rule:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return-object v1

    .line 19
    :cond_3
    iget-object v2, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->messageJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 20
    iget-object v2, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->messageJsonObject:Lorg/json/JSONObject;

    invoke-virtual {v2, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :cond_4
    return-object v1

    :catch_0
    move-exception p1

    .line 25
    const-string v2, ""

    invoke-static {v0, v2, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public getMandatoryUpdate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->mandatoryUpdate:Ljava/lang/String;

    return-object v0
.end method

.method public getOnLogin()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->onLogin:Ljava/lang/String;

    return-object v0
.end method

.method public getUpdate()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->update:Ljava/lang/String;

    return-object v0
.end method

.method public setMandatoryUpdate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->mandatoryUpdate:Ljava/lang/String;

    return-void
.end method

.method public setOnLogin(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->onLogin:Ljava/lang/String;

    return-void
.end method

.method public setUpdate(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/bean/GPCGameAnnouncements;->update:Ljava/lang/String;

    return-void
.end method
