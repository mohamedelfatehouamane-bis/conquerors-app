.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$f;
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
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$f;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handle(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;)V
    .locals 3

    .line 1
    new-instance p2, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    invoke-direct {p2, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;)V

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$f;->a:Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    iget-object v0, v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    if-eqz v0, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object p1

    const-string v0, "taskId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 11
    sget-object v1, Lcom/gpc/operations/service/upload/UploadFileManager;->Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    invoke-virtual {v1}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;->sharedInstance()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object v1

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/gpc/operations/service/upload/UploadFileManager;->cancel(Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {p2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    return-void

    .line 14
    :cond_1
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "taskIds is null or empty"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1

    .line 15
    :cond_2
    new-instance p1, Ljava/lang/Exception;

    const-string v0, "behaviour is null"

    invoke-direct {p1, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    move-exception p1

    .line 26
    const-string v0, "GPCJavaScriptOperationBridge"

    const-string v1, "handle: "

    invoke-static {v0, v1, p1}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v0, "100400"

    invoke-virtual {p2, v0, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    return-void
.end method
