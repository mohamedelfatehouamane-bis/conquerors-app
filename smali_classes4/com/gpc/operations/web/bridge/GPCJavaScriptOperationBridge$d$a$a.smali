.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/service/OnGotoForwardResultCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->onComplete(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/operations/migrate/error/GPCException;Lcom/gpc/operations/service/bean/GotoForwardResult;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isOccurred()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    const-string p2, "GPCJavaScriptOperationBridge"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->d:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    const-string p2, "TSH"

    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;->turnTo(Ljava/lang/String;I)V

    .line 4
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 5
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    iget-object p2, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-interface {p2, p1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void

    :cond_0
    if-eqz p2, :cond_1

    .line 9
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->d:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/GotoForwardResult;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Lcom/gpc/operations/service/bean/GotoForwardResult;->getMode()I

    move-result p2

    invoke-interface {p1, v0, p2}, Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;->turnTo(Ljava/lang/String;I)V

    .line 11
    :cond_1
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 12
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a$a;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;

    iget-object p2, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-interface {p2, p1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
