.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d;->handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

.field public final synthetic b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

.field public final synthetic c:Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d;Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->c:Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d;

    iput-object p2, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    iput-object p3, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "share failed:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCJavaScriptCommonBridge"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    const-string v1, "1"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-interface {p1, v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method

.method public onSuccess()V
    .locals 2

    .line 1
    const-string v0, "GPCJavaScriptCommonBridge"

    const-string v1, "share success"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 3
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->b:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    iget-object v1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge$d$a;->a:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-interface {v0, v1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V

    return-void
.end method
