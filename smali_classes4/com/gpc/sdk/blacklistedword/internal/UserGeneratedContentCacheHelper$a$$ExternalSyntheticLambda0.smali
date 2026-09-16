.class public final synthetic Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;

.field public final synthetic f$1:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;

    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;

    invoke-virtual {v0, v1, p1, p2}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$a;->a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    return-void
.end method
