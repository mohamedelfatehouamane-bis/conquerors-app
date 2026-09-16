.class public Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private callback:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

.field private caller:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

.field private responser:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createResponser(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->caller:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    .line 2
    new-instance v0, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    iput-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->responser:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->callback:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    return-void
.end method

.method public getCallback()Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->callback:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    return-object v0
.end method

.method public getCaller()Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->caller:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    return-object v0
.end method

.method public getResponser()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->responser:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    return-object v0
.end method

.method public releaseResponser()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->caller:Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    .line 2
    iput-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->responser:Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 3
    iput-object v0, p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->callback:Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    return-void
.end method
