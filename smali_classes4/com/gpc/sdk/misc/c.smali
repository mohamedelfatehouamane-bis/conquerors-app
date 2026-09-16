.class public Lcom/gpc/sdk/misc/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;


# static fields
.field public static final e:Ljava/lang/String; = "AgreementSigningServiceImplV2"


# instance fields
.field public a:Lcom/gpc/sdk/service/request/client/IServiceClient;

.field public b:Lcom/gpc/sdk/service/request/client/IServiceClient;

.field public c:Lcom/gpc/sdk/misc/a;

.field public d:I


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/misc/a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x1388

    .line 2
    iput v0, p0, Lcom/gpc/sdk/misc/c;->d:I

    .line 5
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getApiGatewayCacheClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/c;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    .line 6
    iput-object p1, p0, Lcom/gpc/sdk/misc/c;->c:Lcom/gpc/sdk/misc/a;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/misc/c;)I
    .locals 0

    .line 1
    iget p0, p0, Lcom/gpc/sdk/misc/c;->d:I

    return p0
.end method

.method public static synthetic a(Lcom/gpc/sdk/misc/c;Lcom/gpc/sdk/service/request/client/IServiceClient;)Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/misc/c;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-object p1
.end method

.method public static synthetic b(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/misc/c;->b:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-object p0
.end method

.method public static synthetic c(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/misc/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/misc/c;->c:Lcom/gpc/sdk/misc/a;

    return-object p0
.end method

.method public static synthetic d(Lcom/gpc/sdk/misc/c;)Lcom/gpc/sdk/service/request/client/IServiceClient;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/misc/c;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    return-object p0
.end method


# virtual methods
.method public a(J)V
    .locals 3

    const-wide/16 v0, 0x2710

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    move-wide p1, v0

    :cond_0
    long-to-int p2, p1

    .line 5
    div-int/lit8 p2, p2, 0x2

    iput p2, p0, Lcom/gpc/sdk/misc/c;->d:I

    return-void
.end method

.method public final a(Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;",
            ")V"
        }
    .end annotation

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[CMP] signv2 network params:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AgreementSigningServiceImplV2"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v0, Lcom/gpc/sdk/misc/c$b;

    invoke-direct {v0, p0, p1, p2}, Lcom/gpc/sdk/misc/c$b;-><init>(Lcom/gpc/sdk/misc/c;Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkAgreementsPendingSigning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V
    .locals 6

    .line 1
    new-instance v0, Lcom/gpc/sdk/misc/c$a;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/gpc/sdk/misc/c$a;-><init>(Lcom/gpc/sdk/misc/c;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCStatusRequestListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public checkCOPPAStatus(Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/misc/c;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    if-nez v0, :cond_0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->serviceFactory()Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/ServiceFactoryModule;->getServiceClient()Lcom/gpc/sdk/service/request/client/IServiceClient;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/c;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    .line 4
    :cond_0
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 5
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/misc/c;->a:Lcom/gpc/sdk/service/request/client/IServiceClient;

    new-instance v2, Lcom/gpc/sdk/misc/c$e;

    invoke-direct {v2, p0, p1, p2}, Lcom/gpc/sdk/misc/c$e;-><init>(Lcom/gpc/sdk/misc/c;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCCheckCOPPAStatusListener;)V

    const-string p1, "/ums/policy/coppa/check"

    const/4 p2, 0x0

    invoke-interface {v1, p1, v0, p2, v2}, Lcom/gpc/sdk/service/request/client/IServiceClient;->get(Ljava/lang/String;Ljava/util/HashMap;Lcom/gpc/sdk/service/network/http/request/HTTPRequestHeadersDelegate;Lcom/gpc/sdk/service/request/client/ServiceClientResponseListener;)V

    return-void
.end method

.method public restoreAllAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/misc/c$d;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/misc/c$d;-><init>(Lcom/gpc/sdk/misc/c;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAllAgreementsListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public restoreAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/misc/c$c;

    invoke-direct {v0, p0, p1}, Lcom/gpc/sdk/misc/c$c;-><init>(Lcom/gpc/sdk/misc/c;Lcom/gpc/sdk/agreementsigning/listener/GPCRestoreAssignedAgreementsListener;)V

    invoke-static {v0}, Lcom/gpc/sdk/service/network/NetworkExcutor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public signEU(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "policies"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    const-string p1, "ad_sdk_list"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, p4}, Lcom/gpc/sdk/misc/c;->a(Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method

.method public signKO(Ljava/lang/String;Ljava/lang/String;ILcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "policies"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "guardian_verification"

    invoke-virtual {v0, p2, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, p4}, Lcom/gpc/sdk/misc/c;->a(Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method

.method public signNormal(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "policies"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    invoke-virtual {p0, v0, p3}, Lcom/gpc/sdk/misc/c;->a(Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method

.method public updateCMP(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 2
    const-string v1, "sso_token"

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 4
    const-string p1, "policies"

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    :cond_0
    const-string p1, "ad_sdk_list"

    invoke-virtual {v0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    invoke-virtual {p0, v0, p4}, Lcom/gpc/sdk/misc/c;->a(Ljava/util/HashMap;Lcom/gpc/sdk/agreementsigning/listener/GPCSigningListener;)V

    return-void
.end method
