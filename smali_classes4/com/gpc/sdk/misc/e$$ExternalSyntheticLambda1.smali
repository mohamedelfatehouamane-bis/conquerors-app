.class public final synthetic Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# instance fields
.field public final synthetic f$0:Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;

.field public final synthetic f$1:Lcom/gpc/sdk/misc/e;


# direct methods
.method public synthetic constructor <init>(Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;Lcom/gpc/sdk/misc/e;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;->f$0:Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;

    iput-object p2, p0, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;->f$1:Lcom/gpc/sdk/misc/e;

    return-void
.end method


# virtual methods
.method public final onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 2

    .line 0
    iget-object v0, p0, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;->f$0:Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;

    iget-object v1, p0, Lcom/gpc/sdk/misc/e$$ExternalSyntheticLambda1;->f$1:Lcom/gpc/sdk/misc/e;

    invoke-static {v0, v1, p1, p2, p3}, Lcom/gpc/sdk/misc/e;->a(Lcom/gpc/sdk/apprating/GPCFeedbackResultListener;Lcom/gpc/sdk/misc/e;Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V

    return-void
.end method
