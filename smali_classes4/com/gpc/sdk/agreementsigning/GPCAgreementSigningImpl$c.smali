.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] restoreAllAgreements onFailure "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void
.end method

.method public onSuccess(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/agreementsigning/bean/GPCAgreement;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] restoreAssignedAgreements onsuccess :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCAgreementSigning"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$c;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;->onSuccess(Ljava/util/List;)V

    return-void
.end method
