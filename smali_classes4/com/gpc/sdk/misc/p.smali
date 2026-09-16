.class public Lcom/gpc/sdk/misc/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final b:Ljava/lang/String; = "RealNameVerificationCacheService"

.field public static final c:Ljava/lang/String; = "realnamestate"


# instance fields
.field public a:Lcom/gpc/sdk/realname/service/RealNameVerificationService;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getRealNameVerificationService()Lcom/gpc/sdk/realname/service/RealNameVerificationService;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/misc/p;->a:Lcom/gpc/sdk/realname/service/RealNameVerificationService;

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/misc/p;->a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V

    return-void
.end method

.method public static synthetic a(Lcom/gpc/sdk/misc/p;Ljava/lang/String;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/gpc/sdk/misc/p;->a(Ljava/lang/String;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "realnamestate_"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "_"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object p2

    const-string v0, "realnamestate"

    invoke-virtual {p2, v0, p1}, Lcom/gpc/sdk/utils/modules/PathModule;->getDataCacheFilePath(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
    .locals 1

    .line 9
    new-instance v0, Lcom/gpc/sdk/misc/p$c;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/gpc/sdk/misc/p$c;-><init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V

    invoke-interface {p1, v0}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy;->getSSOTokenForWeb(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;)V

    return-void
.end method

.method public a(Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
    .locals 3

    .line 8
    invoke-interface {p1}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/sdk/misc/p$b;

    invoke-direct {v2, p0, p1, p2}, Lcom/gpc/sdk/misc/p$b;-><init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V

    invoke-virtual {p0, v0, v1, v2}, Lcom/gpc/sdk/misc/p;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V
    .locals 2

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/utils/modules/PathModule;->getDataCachePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "realnamestate"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/misc/p$e;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/sdk/misc/p$e;-><init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V

    invoke-static {v0, v1}, Lcom/gpc/util/CacheUtils;->clearSpecifiedCacheAync(Ljava/lang/String;Lcom/gpc/util/CacheUtils$ClearCacheListener;)V

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V
    .locals 4

    .line 10
    iget-object v0, p0, Lcom/gpc/sdk/misc/p;->a:Lcom/gpc/sdk/realname/service/RealNameVerificationService;

    invoke-interface {p2}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/gpc/sdk/misc/p$d;

    invoke-direct {v3, p0, p3, p4, p2}, Lcom/gpc/sdk/misc/p$d;-><init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/misc/q;Lcom/gpc/sdk/realname/GPCVerificationStateListener;Lcom/gpc/sdk/realname/GPCRealNameVerificationCompatProxy;)V

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/gpc/sdk/realname/service/RealNameVerificationService;->requestState(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/realname/service/VerificationStateListener;)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/misc/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    new-instance p2, Lcom/gpc/sdk/misc/p$a;

    invoke-direct {p2, p0, p3}, Lcom/gpc/sdk/misc/p$a;-><init>(Lcom/gpc/sdk/misc/p;Lcom/gpc/sdk/realname/service/LoadBackupRealnameStateListener;)V

    invoke-static {p1, p2}, Lcom/gpc/util/CacheUtils;->readCacheAync(Ljava/lang/String;Lcom/gpc/util/CacheUtils$ReadCacheListener;)V

    return-void
.end method
