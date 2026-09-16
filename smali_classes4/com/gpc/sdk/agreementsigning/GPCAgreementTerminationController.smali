.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

.field public b:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

.field public c:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;

.field public final d:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    new-instance v0, Lcom/gpc/util/LocalStorage;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 8
    sget-object v2, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningImpl;->SIGNING_STATUS_PROFILE:Ljava/lang/String;

    .line 9
    invoke-direct {v0, v1, v2}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->d:Lcom/gpc/util/LocalStorage;

    return-void
.end method

.method public static final synthetic access$getProxy$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    return-object p0
.end method

.method public static final synthetic access$getService$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->b:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    return-object p0
.end method

.method public static final synthetic access$getStorage$p(Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)Lcom/gpc/util/LocalStorage;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->d:Lcom/gpc/util/LocalStorage;

    return-object p0
.end method


# virtual methods
.method public final requestAssignedAgreements(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->b:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$requestAssignedAgreements$1;

    invoke-direct {v1, p1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$requestAssignedAgreements$1;-><init>(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;->requestAssignedAgreementsForSigned(Lcom/gpc/sdk/agreementsigning/listener/GPCAssignedAgreementsRequestForTerminationListener;)V

    return-void
.end method

.method public final setAgreementSigningCompatProxy(Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    return-void
.end method

.method public final setAgreementSigningService(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->b:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningService;

    return-void
.end method

.method public final setAgreementSigningServiceV2(Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;)V
    .locals 1

    const-string v0, "service"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->c:Lcom/gpc/sdk/agreementsigning/service/AgreementSigningServiceV2;

    return-void
.end method

.method public final terminate(Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;)V
    .locals 2

    const-string v0, "listener"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;->a:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningCompatProxy;

    if-eqz v0, :cond_0

    new-instance v1, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;

    invoke-direct {v1, p1, p0}, Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController$terminate$1;-><init>(Lcom/gpc/sdk/agreementsigning/listener/GPCTerminateRequestListener;Lcom/gpc/sdk/agreementsigning/GPCAgreementTerminationController;)V

    invoke-interface {v0, v1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    :cond_0
    return-void
.end method
