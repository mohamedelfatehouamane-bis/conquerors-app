.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p2, :cond_1

    .line 2
    :cond_0
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getSituation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodeCheckResult(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 4
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 5
    const-string v0, "GPCAgreementSigning"

    const-string v1, "[CMP] request status update lastsining time"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->b(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/util/LocalStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getGuardianVerification()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getGuardianVerification()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->getChildhood()Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 9
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getGuardianVerification()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->getChildhood()Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->d(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i$a;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$i;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method
