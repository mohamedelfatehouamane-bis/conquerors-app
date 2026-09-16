.class public Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/account/GPCSession;

.field public final synthetic b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;Lcom/gpc/sdk/account/GPCSession;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iput-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GPCAgreementSigning"

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "[CMP] sign v2:onSigned for the condition 2."

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "320205"

    invoke-static {p2, v2, v2, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 5
    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object p2, p2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 9
    :cond_0
    new-instance p1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;

    invoke-direct {p1, p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a$a;-><init>(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;)V

    .line 26
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/misc/d;->c()I

    move-result v0

    .line 27
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "[CMP] sign v2:getAgreeType "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v3, v3, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/misc/d;->b()Ljava/util/List;

    move-result-object v3

    .line 34
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "[CMP] sign v2:getAgreePoliciesState "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 35
    iget-object v4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v4, v4, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v4}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Lcom/gpc/sdk/misc/d;->d(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 36
    const-string v4, "[CMP] agreementSigningStateRecord.IsPresigned"

    invoke-static {v1, v4}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object v4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v4, v4, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v4}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v4

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;Z)V

    .line 39
    iget-object v4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v4, v4, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v4}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v4

    iget-object v5, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v5}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v6}, Lcom/gpc/sdk/misc/d;->a(Ljava/lang/String;Z)V

    .line 41
    :cond_1
    iget-object v4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v4, v4, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v4}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v4

    iget-object v5, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v5}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/gpc/sdk/misc/d;->d(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "[CMP] !agreementSigningStateRecord.IsPresigned():"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object p2, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {p2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object p1, p1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->a:Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;->onSigned(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 47
    :cond_2
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->f(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/a;

    move-result-object v1

    iget-object v4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->a:Lcom/gpc/sdk/account/GPCSession;

    invoke-virtual {v4}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/gpc/sdk/misc/a;->c(Ljava/lang/String;)V

    .line 48
    iget-object v1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v1, v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v1, v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x2

    if-ne v0, v3, :cond_3

    .line 50
    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v3, v3, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/misc/d;->a()I

    move-result v3

    .line 51
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v0, v1, v2, v5}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodeSigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v3, p1}, Lcom/gpc/sdk/misc/c;->signKO(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void

    :cond_3
    const/4 v3, 0x3

    if-ne v0, v3, :cond_4

    .line 54
    iget-object v3, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v3, v3, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v3}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/misc/d;->d()Ljava/util/List;

    move-result-object v3

    .line 55
    iget-object v4, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v4, v4, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v4}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->e(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/d;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gpc/sdk/misc/d;->e()Ljava/util/List;

    move-result-object v4

    .line 56
    iget-object v5, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v5, v5, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v5, v3, v4}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->a(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;Ljava/util/List;Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    .line 57
    sget-object v4, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {v4, v0, v1, v3, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodeSigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;

    move-result-object v0

    invoke-virtual {v0, p2, v1, v3, p1}, Lcom/gpc/sdk/misc/c;->signEU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void

    .line 60
    :cond_4
    sget-object v3, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper;->Companion:Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;

    invoke-virtual {v3, v0, v1, v2, v2}, Lcom/gpc/sdk/utils/common/eventcollection/SDKEventHelper$Companion;->logAgreementsigningConsentmodeSigned(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m$a;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;

    iget-object v0, v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl$m;->b:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;

    invoke-static {v0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->c(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;)Lcom/gpc/sdk/misc/c;

    move-result-object v0

    invoke-virtual {v0, p2, v1, p1}, Lcom/gpc/sdk/misc/c;->signNormal(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method
