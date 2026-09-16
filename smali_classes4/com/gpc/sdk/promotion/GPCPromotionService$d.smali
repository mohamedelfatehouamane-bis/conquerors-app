.class public Lcom/gpc/sdk/promotion/GPCPromotionService$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/request/general/ILegacyServiceClient$GeneralRequestListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/promotion/GPCPromotionService;->onDismiss(Lcom/gpc/sdk/promotion/bean/GPCShowcase;Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

.field public final synthetic b:Lcom/gpc/sdk/promotion/GPCPromotionService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/promotion/GPCPromotionService;Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    iput-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGeneralRequestFinished(Lcom/gpc/sdk/error/GPCException;Ljava/lang/Integer;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    if-eqz p2, :cond_2

    .line 3
    iget-object p3, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    invoke-static {p3, p1}, Lcom/gpc/sdk/promotion/GPCPromotionService;->b(Lcom/gpc/sdk/promotion/GPCPromotionService;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;->onFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 9
    :cond_0
    :try_start_0
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 10
    const-string p2, "error"

    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p1

    if-eqz p1, :cond_1

    .line 11
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    if-eqz p1, :cond_2

    .line 12
    const-string p1, "240201"

    const-string p2, "10"

    const/16 p3, 0x2712

    invoke-static {p1, p2, p3}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 14
    iget-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;->onFinished(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 17
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    if-eqz p1, :cond_2

    .line 18
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    invoke-interface {p1, p2}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;->onFinished(Lcom/gpc/sdk/error/GPCException;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 22
    const-string p2, "GPCPromotionService"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 24
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    if-eqz p1, :cond_2

    .line 25
    const-string p1, "20"

    const/16 p2, 0x2711

    const-string p3, "240203"

    invoke-static {p3, p1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 26
    iget-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$d;->a:Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;

    invoke-interface {p2, p1}, Lcom/gpc/sdk/promotion/listener/GPCShowcaseOperationListener;->onFinished(Lcom/gpc/sdk/error/GPCException;)V

    :cond_2
    return-void
.end method
