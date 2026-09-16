.class public Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;
.super Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;
.source "SourceFile"


# static fields
.field public static final j:Ljava/lang/String; = "GPCAgreementSigningFile"


# instance fields
.field public f:Ljava/lang/String;

.field public g:Ljava/lang/String;

.field public h:Ljava/lang/String;

.field public i:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;
    .locals 3

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 3
    :cond_0
    new-instance v0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;-><init>()V

    .line 5
    :try_start_0
    const-string v1, "title"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedTitle(Ljava/lang/String;)V

    .line 6
    const-string v1, "content"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedCaption(Ljava/lang/String;)V

    .line 7
    const-string v1, "labelForSubmit"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedActionSign(Ljava/lang/String;)V

    .line 8
    const-string v1, "labelForAcceptAll"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->setLocalizedActionAcceptionAll(Ljava/lang/String;)V

    .line 10
    const-string v1, "labelForMoreInfo"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->setLocalizedActionMoreInfo(Ljava/lang/String;)V

    .line 11
    const-string v1, "labelForClose"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->setLocalizedActionClose(Ljava/lang/String;)V

    .line 12
    const-string v1, "labelForRejectAll"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->setLocalizedActionRefuse(Ljava/lang/String;)V

    .line 14
    const-string v1, "labelForCheckAllWithOneClick"

    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setLocalizedAgreeAllPolicies(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception p0

    .line 16
    const-string v1, "GPCAgreementSigningFile"

    const-string v2, ""

    invoke-static {v1, v2, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static createFromJson(Lorg/json/JSONObject;Ljava/util/List;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/json/JSONObject;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p0

    .line 2
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setAgreements(Ljava/util/List;)V

    return-object p0
.end method


# virtual methods
.method public getLocalizedActionAcceptionAll()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedActionClose()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->i:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedActionMoreInfo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalizedActionRefuse()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->h:Ljava/lang/String;

    return-object v0
.end method

.method public setLocalizedActionAcceptionAll(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->g:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedActionClose(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->i:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedActionMoreInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->f:Ljava/lang/String;

    return-void
.end method

.method public setLocalizedActionRefuse(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->h:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCAgreementSigningFile{localizedActionMoreInfo=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', localizedActionAcceptionAll=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', localizedActionRefuse=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->h:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', localizedActionClose=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;->i:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', super=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-super {p0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
