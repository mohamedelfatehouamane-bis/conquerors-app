.class public Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/listener/GPCUserGeneratedContent;


# static fields
.field public static final b:Ljava/lang/String; = "GPCUserGeneratedContent"


# instance fields
.field public final a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-direct {v0}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    return-void
.end method


# virtual methods
.method public createDetector(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;)Lcom/gpc/sdk/blacklistedword/listener/GPCUserGeneratedContentDetector;
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

    invoke-direct {v0, p1, p2, p3}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;)V

    return-object v0
.end method

.method public getUserPolicy(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;->a:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    new-instance v1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl$a;-><init>(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;)V

    return-void
.end method
