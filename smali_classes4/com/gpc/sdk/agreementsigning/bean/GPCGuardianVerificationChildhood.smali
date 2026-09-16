.class public Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final GPCGuardianVerificationStatusUnverified:I = 0x0

.field public static final GPCGuardianVerificationStatusVerified:I = 0x1

.field public static final f:Ljava/lang/String; = "GPCGuardianVerificationChildhood"


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:I

.field public e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLabel()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->c:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->a:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->b:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->d:I

    return v0
.end method

.method public setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    return-void
.end method

.method public setLabel(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->c:Ljava/lang/String;

    return-void
.end method

.method public setStatus(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->a:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->b:Ljava/lang/String;

    return-void
.end method

.method public setValue(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->d:I

    return-void
.end method

.method public showGuardianVerificationPanel(Landroid/content/Context;Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "showGuardianVerificationPanel :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCGuardianVerificationChildhood"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;

    invoke-direct {v0}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;-><init>()V

    .line 3
    const-string v1, "#EEEEEE"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->setHeaderBackgroundColor(Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->setUrl(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;->setListener(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationPanelListener;)V

    .line 6
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    invoke-interface {p2, v0}, Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;->setParams(Lcom/gpc/sdk/agreementsigning/auth/GPCGuardianVerificationParams;)V

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->e:Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;->showPanel(Landroid/content/Context;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCGuardianVerificationChildhood{status="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", url=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', label=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
