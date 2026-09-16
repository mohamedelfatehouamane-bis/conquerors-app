.class public Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final c:Ljava/lang/String; = "GPCAgreementSigningGuardianVerification"


# instance fields
.field public a:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

.field public b:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJsonObject(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;
    .locals 15

    const-string v0, "childhood"

    const-string v1, "aboveAdolescence"

    const-string v2, "GPCAgreementSigningGuardianVerification"

    const-string v3, "createGuardianVerification childhood.status is:"

    const-string v4, "createGuardianVerification childhood.url is:"

    const-string v5, "createGuardianVerification childhood.value is:"

    const-string v6, "createGuardianVerification aboveAdolescence.value is:"

    const-string v7, "createGuardianVerification childhood.label is:"

    const-string v8, "createGuardianVerification aboveAdolescence.label is:"

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    new-instance v9, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    invoke-direct {v9}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;-><init>()V

    .line 3
    :try_start_0
    new-instance v10, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

    invoke-direct {v10}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;-><init>()V

    .line 4
    new-instance v11, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    invoke-direct {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;-><init>()V

    .line 5
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v12
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v13, "value"

    const-string v14, "label"

    if-eqz v12, :cond_1

    .line 6
    :try_start_1
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 7
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v10, v12}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->setLabel(Ljava/lang/String;)V

    .line 8
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v2, v8}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v1, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v10, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->setValue(I)V

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;->getValue()I

    move-result v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    :cond_1
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 14
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    .line 15
    invoke-virtual {p0, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setLabel(Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {p0, v13}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v11, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setValue(I)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getValue()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v0, "url"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setUrl(Ljava/lang/String;)V

    .line 20
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    const-string v0, "status"

    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {v11, p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setStatus(I)V

    .line 22
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->getStatus()I

    move-result v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :cond_2
    iput-object v10, v9, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

    .line 26
    iput-object v11, v9, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return-object v9

    :catch_0
    move-exception p0

    .line 28
    const-string v0, ""

    invoke-static {v2, v0, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v9
.end method


# virtual methods
.method public getAboveAdolescence()Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

    return-object v0
.end method

.method public getChildhood()Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    return-object v0
.end method

.method public setAboveAdolescence(Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

    return-void
.end method

.method public setChildhood(Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCAgreementSigningGuardianVerification{aboveAdolescence="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->a:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationAboveAdolescence;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", childhood="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
