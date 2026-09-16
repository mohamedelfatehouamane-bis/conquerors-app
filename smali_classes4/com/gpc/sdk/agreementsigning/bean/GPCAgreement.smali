.class public Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "GPCAgreement"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:I

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Z

.field public i:Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->a:I

    .line 7
    const-string v1, ""

    iput-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->b:Ljava/lang/String;

    .line 9
    iput v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->c:I

    .line 11
    iput-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->d:Ljava/lang/String;

    .line 13
    iput-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->e:Ljava/lang/String;

    .line 15
    iput-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->f:Ljava/lang/String;

    .line 17
    iput v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->g:I

    .line 19
    iput-boolean v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->h:Z

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;
    .locals 7

    const-string v0, "style"

    const-string v1, "GPCAgreement"

    const/4 v2, 0x0

    if-nez p0, :cond_0

    return-object v2

    .line 1
    :cond_0
    new-instance v3, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    invoke-direct {v3}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;-><init>()V

    .line 3
    :try_start_0
    const-string v4, "id"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setId(I)V

    .line 4
    const-string v4, "title"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setTitle(Ljava/lang/String;)V

    .line 5
    const-string v4, "type"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setType(I)V

    .line 6
    const-string v4, "typeLabel"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setLocalizedName(Ljava/lang/String;)V

    .line 7
    const-string v4, "version"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setVersion(Ljava/lang/String;)V

    .line 8
    const-string v4, "showInSettingPage"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-ne v4, v6, :cond_1

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    const/4 v4, 0x0

    :goto_0
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setShowInSettingPage(Z)V

    .line 9
    const-string v4, "innerVersion"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setInnerVersion(I)V

    .line 10
    const-string v4, "url"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setUrl(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_3

    .line 15
    :try_start_1
    const-string v0, "bold"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-lt v0, v6, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v0, 0x0

    goto :goto_2

    .line 17
    :catch_0
    :try_start_2
    const-string v0, "createAgreement remote bold is error."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_1

    .line 21
    :goto_2
    :try_start_3
    const-string v4, "italic"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    if-lt v4, v6, :cond_3

    const/4 v5, 0x1

    goto :goto_3

    .line 23
    :catch_1
    :try_start_4
    const-string v4, "createAgreement remote italic is error."

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/json/JSONException; {:try_start_4 .. :try_end_4} :catch_3

    .line 27
    :cond_3
    :goto_3
    :try_start_5
    const-string v4, "color"

    invoke-virtual {p0, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 29
    :catch_2
    :try_start_6
    const-string p0, "createAgreement remote color is error."

    invoke-static {v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    :goto_4
    new-instance p0, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;

    invoke-direct {p0, v0, v5, v2}, Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;-><init>(ZZLjava/lang/String;)V

    .line 32
    invoke-virtual {v3, p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->setPolicyTextStyle(Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;)V
    :try_end_6
    .catch Lorg/json/JSONException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_5

    :catch_3
    move-exception p0

    .line 35
    const-string v0, ""

    invoke-static {v1, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_4
    :goto_5
    return-object v3
.end method


# virtual methods
.method public getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->a:I

    return v0
.end method

.method public getInnerVersion()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->g:I

    return v0
.end method

.method public getLocalizedName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getPolicyTextStyle()Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->i:Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;

    return-object v0
.end method

.method public getShowInSettingPage()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->h:Z

    return v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->c:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->e:Ljava/lang/String;

    return-object v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->d:Ljava/lang/String;

    return-object v0
.end method

.method public setId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->a:I

    return-void
.end method

.method public setInnerVersion(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->g:I

    return-void
.end method

.method public setLocalizedName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->f:Ljava/lang/String;

    return-void
.end method

.method public setPolicyTextStyle(Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->i:Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;

    return-void
.end method

.method public setShowInSettingPage(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->h:Z

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->b:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->c:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->e:Ljava/lang/String;

    return-void
.end method

.method public setVersion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->d:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCAgreement{id="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", title=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", version=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->e:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', localizedName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', innerVersion="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", showInSettingPage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", policyTextStyle="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->i:Lcom/gpc/sdk/agreementsigning/bean/GPCPolicyTextStyle;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
