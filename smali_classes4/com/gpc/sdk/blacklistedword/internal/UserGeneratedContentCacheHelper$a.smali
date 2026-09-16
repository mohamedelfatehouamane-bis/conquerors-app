.class public Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;

.field public final synthetic b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->isNone()Z

    move-result v0

    const-string v1, "UserGeneratedContentCacheHelper"

    if-eqz v0, :cond_0

    .line 3
    const-string v0, "GetUserPolicy success, save to cache"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    const-string v0, "Return runtime cache policy, from server"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-virtual {v0, p3}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "GetUserPolicy failed, error code: "

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/gpc/sdk/error/GPCException;->getReadableUniqueCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {v1, p3}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    const-string p3, "Return cache policy"

    invoke-static {v1, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p3, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-virtual {p3}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->b()Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;

    move-result-object p3

    :goto_0
    if-eqz p1, :cond_1

    .line 13
    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;->onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->b:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-static {v0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;)Lcom/gpc/sdk/misc/x;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;

    new-instance v2, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v1}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/misc/x;->a(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V

    return-void
.end method
