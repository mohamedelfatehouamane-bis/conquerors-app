.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h;->handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

.field public final synthetic b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

.field public final synthetic c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h;Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h;

    iput-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    iput-object p3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueried(ILorg/json/JSONArray;I)V
    .locals 1

    const v0, 0x18705

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 2
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    const-string p3, "data"

    invoke-virtual {p1, p3, p2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->putParameter(Ljava/lang/String;Lorg/json/JSONArray;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p3

    const-string v0, "query products failed"

    invoke-virtual {p2, p1, p3, v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iget-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-interface {p1, p2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
