.class public Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserPolicyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;->getUserPolicy(Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

.field public final synthetic b:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl$a;->b:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl;

    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl$a;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentImpl$a;->a:Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/blacklistedword/listener/GPCUserPolicyListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentScenarioPolicy;)V

    return-void
.end method
