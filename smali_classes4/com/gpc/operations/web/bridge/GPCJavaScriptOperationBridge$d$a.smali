.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/compact/OperationsCompatProxy$GetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;->handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

.field public final synthetic b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

.field public final synthetic c:Lcom/gpc/operations/base/CompatProxyManager;

.field public final synthetic d:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;Lcom/gpc/operations/base/CompatProxyManager;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->d:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;

    iput-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    iput-object p3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iput-object p4, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->c:Lcom/gpc/operations/base/CompatProxyManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "GPCJavaScriptOperationBridge"

    if-eqz v0, :cond_0

    .line 2
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "get web sso token error."

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->d:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    const-string p2, "TSH"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;->turnTo(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iget-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-interface {p1, p2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void

    .line 8
    :cond_0
    const-string p1, "CSService gotoForward"

    invoke-static {v1, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    new-instance p1, Lcom/gpc/operations/service/CSServiceImpl;

    invoke-direct {p1}, Lcom/gpc/operations/service/CSServiceImpl;-><init>()V

    .line 10
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->c:Lcom/gpc/operations/base/CompatProxyManager;

    invoke-virtual {v0}, Lcom/gpc/operations/base/CompatProxyManager;->getProxy()Lcom/gpc/operations/compact/OperationsCompatProxy;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/compact/OperationsCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;)V

    invoke-interface {p1, v0, p2, v1}, Lcom/gpc/operations/service/ICSService;->gotoForward(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/service/OnGotoForwardResultCallback;)V

    return-void
.end method
