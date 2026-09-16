.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] restoreAssignedAgreements onFailure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;Ljava/util/List;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] restoreAssignedAgreements onsuccess inSetting :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "[CMP] restoreAssignedAgreements onsuccess agree :"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[CMP] restoreAssignedAgreements onsuccess disagree :"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p2

    if-eqz p2, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 7
    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object p2

    .line 8
    iget-object p3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p3

    invoke-virtual {p1}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;->getAgreementSigningFile()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementFile;->getAgreements()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, p2, v0}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;Ljava/util/List;)V

    .line 10
    :cond_0
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;

    iget-object p3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/sdk/misc/d;->d()Ljava/util/List;

    move-result-object p3

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$b;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->e()Ljava/util/List;

    move-result-object v0

    invoke-interface {p2, p1, p3, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;->onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningInSetting;Ljava/util/List;Ljava/util/List;)V

    return-void
.end method
