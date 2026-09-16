.class public Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;

.field public final synthetic c:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->c:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUserPolicy scenarioName : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserGeneratedContentCacheHelper"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object v0

    iget-object v2, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->c:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-static {v2}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->b(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;

    if-eqz v0, :cond_1

    .line 6
    const-string v2, "Return runtime cache policy,from memory cache"

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->getPolicy(Ljava/lang/String;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v1, v0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;->onResult(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)V

    :cond_0
    return-void

    .line 15
    :cond_1
    const-string v0, "getUserPolicy from server"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->c:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-static {v0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;)Lcom/gpc/sdk/misc/x;

    move-result-object v0

    new-instance v1, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;

    invoke-direct {v1, p0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;-><init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/misc/x;->a(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V

    return-void
.end method
