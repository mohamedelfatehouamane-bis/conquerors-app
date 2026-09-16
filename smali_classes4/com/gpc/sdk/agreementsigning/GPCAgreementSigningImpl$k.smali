.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->checkAgreementsPendingSigning(Ljava/util/Map;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCSession;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;

.field public final synthetic c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/account/GPCSession;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->a:Lcom/gpc/sdk/account/GPCSession;

    iput-object p3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResponse(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const-string v1, "GPCAgreementSigning"

    if-nez v0, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 13
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "[CMP] checkAgreementsPendingSigning status:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getConsents()Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p1

    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getConsents()Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;->getAgrees()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/d;->b(Ljava/util/List;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p1

    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getConsents()Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/agreementsigning/bean/GPCCacheConsents;->getDisagrees()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/misc/d;->c(Ljava/util/List;)V

    .line 21
    :cond_1
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 22
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->g()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->h()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 24
    const-string p1, "[CMP] checkAgreementsPendingSigning hasCMPAgreeItems && hasCMPDisagreeItems"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/misc/d;->d()Ljava/util/List;

    move-result-object p1

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->e()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 30
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getUserRegion()Ljava/lang/String;

    move-result-object v0

    const-string v2, "EU"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 p1, 0x0

    move-object v0, p1

    goto :goto_0

    .line 35
    :cond_3
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getDps()Ljava/util/List;

    move-result-object v0

    move-object v4, v0

    move-object v0, p1

    move-object p1, v4

    .line 44
    :goto_0
    invoke-virtual {p2}, Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;->getAgreementSigningStatusValue()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_4

    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->a:Lcom/gpc/sdk/account/GPCSession;

    if-eqz v2, :cond_4

    .line 45
    iget-object v2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/a;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v3}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/sdk/misc/a;->c(Ljava/lang/String;)V

    .line 47
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CMP] checkAgreementsPendingSigning agrees:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "[CMP] checkAgreementsPendingSigning disagrees:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;

    invoke-interface {v1, p2, p1, v0}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;->onSuccess(Lcom/gpc/sdk/agreementsigning/bean/GPCAgreementSigningStatus;Ljava/util/List;Ljava/util/List;)V

    return-void

    .line 50
    :cond_5
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "[CMP] checkAgreementsPendingSigning:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p2, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getSuggestion()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodeCheckResult(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/misc/d;->i()Z

    move-result p2

    if-nez p2, :cond_7

    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object p2

    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v0}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/misc/d;->c(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_6

    goto :goto_2

    .line 56
    :cond_6
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;->onFailure(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 57
    :cond_7
    :goto_2
    const-string p1, "[CMP] checkAgreementsPendingSigning:The user hasSyncDevice || hasSyncUser"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->c:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$k;->b:Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;

    invoke-static {p1, p2}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckAgreementsPendingSigningListener;)V

    return-void
.end method
