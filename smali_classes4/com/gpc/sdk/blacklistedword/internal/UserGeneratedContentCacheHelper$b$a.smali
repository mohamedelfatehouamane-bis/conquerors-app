.class public Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUserPolicy onComplete, error code : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "UserGeneratedContentCacheHelper"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    sget-object v0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;->None:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    .line 3
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result p1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 4
    iget-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    iget-object p1, p1, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->c:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    iget-object p1, p1, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->a:Ljava/lang/String;

    invoke-virtual {p2, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->getPolicy(Ljava/lang/String;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    move-result-object p1

    .line 6
    const-string p2, "Return runtime cache policy,from server"

    invoke-static {v1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    iget-object p2, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    iget-object p2, p2, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;

    if-eqz p2, :cond_2

    .line 8
    invoke-interface {p2, p1}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;->onResult(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)V

    return-void

    .line 14
    :cond_0
    const-string p1, "Return cache policy"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 15
    const-string p1, "getUserPolicy from server failed, try to read from cache"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    iget-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    iget-object p1, p1, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->c:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-virtual {p1}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->b()Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 18
    iget-object p2, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    iget-object p2, p2, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->a:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;->getPolicy(Ljava/lang/String;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    move-result-object v0

    .line 19
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "getUserPolicy from cache : "

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;

    iget-object p1, p1, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$b;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;

    if-eqz p1, :cond_2

    .line 22
    invoke-interface {p1, v0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;->onResult(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)V

    :cond_2
    return-void
.end method
