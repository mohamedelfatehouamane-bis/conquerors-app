.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->a(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V
    .locals 4

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    .line 3
    const-string v1, "320104"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    .line 9
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getBaseErrorCode()Ljava/lang/String;

    move-result-object v1

    .line 10
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    .line 11
    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodeCheckApi(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    if-eqz p2, :cond_1

    .line 16
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 17
    sget-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$Companion;->getTAG()Ljava/lang/String;

    move-result-object v0

    const-string v1, "[CMP] requestStatus update lastsigining time."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->access$getStorage$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/util/LocalStorage;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->access$getProxy$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    move-result-object v1

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->lastSigningTimestampKey(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/gpc/util/LocalStorage;->writeLong(Ljava/lang/String;Ljava/lang/Long;)V

    :cond_1
    if-eqz p2, :cond_2

    .line 21
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->access$getAgreementSigningStateRecord$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getUserRegion()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/misc/d;->f(Ljava/lang/String;)V

    :cond_2
    if-eqz p2, :cond_3

    .line 23
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getGuardianVerification()Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningGuardianVerification;->getChildhood()Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;->access$getGuardianVerification$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController;)Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/agreementsigning/bean/GPCGuardianVerificationChildhood;->setGuardianVerification(Lcom/gpc/sdk/agreementsigning/auth/GuardianVerification;)V

    .line 24
    :cond_3
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningController$requestStatus$1;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;->onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V

    return-void
.end method
