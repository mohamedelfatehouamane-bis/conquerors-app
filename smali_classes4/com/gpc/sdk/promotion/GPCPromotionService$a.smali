.class public Lcom/gpc/sdk/promotion/GPCPromotionService$a;
.super Lcom/gpc/sdk/promotion/GPCPromotionService$f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/promotion/GPCPromotionService;->initialize(Landroid/content/Context;Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;

.field public final synthetic b:Lcom/gpc/sdk/promotion/GPCPromotionService;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/promotion/GPCPromotionService;Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    iput-object p2, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->a:Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/gpc/sdk/promotion/GPCPromotionService$f;-><init>(Lcom/gpc/sdk/promotion/GPCPromotionService$a;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/gpc/sdk/promotion/GPCPromotionService;->a(Lcom/gpc/sdk/promotion/GPCPromotionService;Ljava/lang/String;)Ljava/lang/String;

    .line 3
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->a:Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;

    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;->onInitializeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/GPCPromotionService;)V

    return-void

    :cond_0
    const/4 p1, 0x1

    const-string v1, "10"

    if-ne v0, p1, :cond_1

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->a:Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;

    const-string v0, "240402"

    const/16 v2, 0x456

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;->onInitializeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/GPCPromotionService;)V

    return-void

    .line 7
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->a:Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;

    const-string v0, "240401"

    const/16 v2, 0x457

    invoke-static {v0, v1, v2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;I)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/promotion/GPCPromotionService$a;->b:Lcom/gpc/sdk/promotion/GPCPromotionService;

    invoke-interface {p1, v0, v1}, Lcom/gpc/sdk/promotion/listener/GPCInitializationListener;->onInitializeFinished(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/promotion/GPCPromotionService;)V

    return-void
.end method
