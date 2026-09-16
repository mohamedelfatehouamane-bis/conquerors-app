.class public Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GPCAgreementSigningTypeEU:I = 0x3

.field public static final GPCAgreementSigningTypeGeneral:I = 0x1

.field public static final GPCAgreementSigningTypeKR:I = 0x2


# instance fields
.field public a:I

.field public b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

.field public c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;",
            ">;"
        }
    .end annotation
.end field

.field public d:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

.field public e:I

.field public f:Ljava/lang/String;

.field public g:I

.field public h:Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 19
    iput v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->a:I

    .line 27
    iput v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->e:I

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 4
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 5
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v4}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getType()I

    move-result v6

    if-ne v5, v6, :cond_1

    .line 6
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_3
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;

    .line 13
    invoke-virtual {p0, v1, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->a(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;Ljava/util/List;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_4
    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;Ljava/util/List;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)Z"
        }
    .end annotation

    .line 15
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 16
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;->getType()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public getAgreementOptions()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->c:Ljava/util/List;

    return-object v0
.end method

.method public getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-object v0
.end method

.method public getAgreementSigningStatusValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->a:I

    return v0
.end method

.method public getConsents()Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->h:Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    return-object v0
.end method

.method public getGuardianVerification()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    return-object v0
.end method

.method public getPopUp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->g:I

    return v0
.end method

.method public getType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->e:I

    return v0
.end method

.method public getUserRegion()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->f:Ljava/lang/String;

    return-object v0
.end method

.method public prepareFileToBeSigned(Ljava/util/List;)Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "agreements size:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AgreementSigningStatus"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-virtual {p0, p1, v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->a(Ljava/util/List;Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    invoke-virtual {v1, p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->setAgreements(Ljava/util/List;)V

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-object p1
.end method

.method public setAgreementOptions(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningOption;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->c:Ljava/util/List;

    return-void
.end method

.method public setAgreementSigningFile(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    return-void
.end method

.method public setAgreementSigningStatusValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->a:I

    return-void
.end method

.method public setConsents(Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->h:Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    return-void
.end method

.method public setGuardianVerification(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    return-void
.end method

.method public setPopUp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->g:I

    return-void
.end method

.method public setType(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->e:I

    return-void
.end method

.method public setUserRegion(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->f:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCAgreementSigningStatus{value="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", agreementSigningFile="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->b:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", agreementOptions="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->c:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", guardianVerification="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->d:Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->e:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", userRegion=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->f:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', popUp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->g:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", consents="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->h:Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
