.class public final synthetic Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

.field public final synthetic f$1:Lcom/gpc/sdk/misc/w;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;Lcom/gpc/sdk/misc/w;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/sdk/misc/w;

    return-void
.end method


# virtual methods
.method public final onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;->f$0:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;->f$1:Lcom/gpc/sdk/misc/w;

    invoke-virtual {v0, v1, p1, p2}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V

    return-void
.end method
