.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->initHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;

    invoke-direct {v1, p0, p1, p2}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e$a;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
