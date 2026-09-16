.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->initHandlers()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$l;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$l;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;

    iget-object p1, p1, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;->closeView()V

    .line 7
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Ljava/lang/Exception;

    const-string v1, "behaviour is null"

    invoke-direct {p1, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 13
    const-string v1, "GPCJavaScriptCommonBridge"

    const-string v2, "handle: "

    invoke-static {v1, v2, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "100400"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 16
    :goto_0
    invoke-interface {p2, v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
