.class public final synthetic Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

.field public final synthetic f$1:Lcom/gpc/sdk/misc/w;

.field public final synthetic f$2:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;->f$1:Lcom/gpc/sdk/misc/w;

    iput-object p3, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;->f$2:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;

    return-void
.end method


# virtual methods
.method public final onResult(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)V
    .locals 3

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;->f$0:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;->f$1:Lcom/gpc/sdk/misc/w;

    iget-object v2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;->f$2:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;

    invoke-virtual {v0, v1, v2, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)V

    return-void
.end method
