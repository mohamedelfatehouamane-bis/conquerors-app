.class public Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->a:I

    return-void
.end method


# virtual methods
.method public getPopUp()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->a:I

    return v0
.end method

.method public getPopUpUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getPopUpUrlWithSSOToken()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->b:Ljava/lang/String;

    const-string v1, ""

    if-eqz v0, :cond_4

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->c:Ljava/lang/String;

    if-eqz v0, :cond_3

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->b:Ljava/lang/String;

    const-string v2, "?"

    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v2, "&"

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "sso_token="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->b:Ljava/lang/String;

    return-object v0

    :cond_4
    :goto_1
    return-object v1
.end method

.method public setPopUp(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->a:I

    return-void
.end method

.method public setPopUpUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->b:Ljava/lang/String;

    return-void
.end method

.method public setSSOToken(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCCOPPAStatus;->c:Ljava/lang/String;

    return-void
.end method
