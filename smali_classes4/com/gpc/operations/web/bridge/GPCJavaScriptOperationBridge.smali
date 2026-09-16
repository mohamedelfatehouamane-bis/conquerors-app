.class public Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;
.super Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;


# static fields
.field private static final KEY_HANDLER_BRIDGE_OPS_OPEN_WEB_APP:Ljava/lang/String; = "OPS.OpenWebApp"

.field private static final KEY_HANDLER_BRIDGE_OPS_REPAYMENT_BUY_ITEM:Ljava/lang/String; = "OPS.Repayment.BuyItem"

.field private static final KEY_HANDLER_BRIDGE_OPS_REPAYMENT_LOAD_ITEMS:Ljava/lang/String; = "OPS.Repayment.LoadItems"

.field private static final KEY_HANDLER_BRIDGE_OPS_TURN_CUSTOM_SERVICE:Ljava/lang/String; = "OPS.TurnCustomService"

.field private static final KEY_HANDLER_BRIDGE_OPS_TURN_TO:Ljava/lang/String; = "OPS.TurnTo"

.field private static final KEY_HANDLER_BRIDGE_OPS_UNREAD_MESSAGE:Ljava/lang/String; = "OPS.UnreadMessage"

.field public static final KEY_HANDLER_BRIDGE_OPS_UPLOAD_MEDIA_CANCEL_UPLOAD_MEDIA:Ljava/lang/String; = "OPS.UploadMedia.CancelUploadMedia"

.field public static final KEY_HANDLER_BRIDGE_OPS_UPLOAD_MEDIA_ON_FINISHED:Ljava/lang/String; = "UploadMedia.OnFinished"

.field public static final KEY_HANDLER_BRIDGE_OPS_UPLOAD_MEDIA_ON_PROGRESS:Ljava/lang/String; = "UploadMedia.OnProgress"

.field public static final KEY_HANDLER_BRIDGE_OPS_UPLOAD_MEDIA_ON_SELECTED:Ljava/lang/String; = "UploadMedia.OnSelected"

.field private static final KEY_HANDLER_BRIDGE_OPS_UPLOAD_MEDIA_ON_STARTED:Ljava/lang/String; = "OPS.UploadMedia.OnStarted"

.field private static final KEY_HANDLER_BRIDGE_RECEIVED_REMOTE_NOTIFICATION:Ljava/lang/String; = "OPS.DidReceivedRemoteNotification"

.field private static final TAG:Ljava/lang/String; = "GPCJavaScriptOperationBridge"

.field private static blockingResponser:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field protected behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->blockingResponser:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;-><init>(Landroid/app/Activity;)V

    .line 2
    invoke-direct {p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->initHandlers()V

    return-void
.end method

.method public static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->blockingResponser:Ljava/util/HashMap;

    return-object v0
.end method

.method public static getDidReceivedRemoteNotificationResponserJS(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    const-string v1, "OPS.DidReceivedRemoteNotification"

    invoke-direct {v0, v1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;-><init>(Ljava/lang/String;)V

    .line 3
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    .line 4
    const-string v2, "data"

    invoke-virtual {v1, v2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 5
    invoke-virtual {v0, v1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setParameter(Lorg/json/JSONObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 7
    const-string v1, "GPCJavaScriptOperationBridge"

    const-string v2, "getConfirmNewReplyResponser: "

    invoke-static {v1, v2, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 9
    :goto_0
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->toJs()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private initHandlers()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$a;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$a;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.TurnTo"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$b;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$b;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.OpenWebApp"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$c;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$c;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.UnreadMessage"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$d;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.TurnCustomService"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$e;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.UploadMedia.OnStarted"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 168
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$f;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$f;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.UploadMedia.CancelUploadMedia"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 192
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$g;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$g;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.Repayment.BuyItem"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    new-instance v1, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h;

    invoke-direct {v1, p0}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge$h;-><init>(Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;)V

    const-string v2, "OPS.Repayment.LoadItems"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static sendRepayFailedResponser(ILjava/lang/String;I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->blockingResponser:Ljava/util/HashMap;

    const-string v1, "OPS.Repayment.BuyItem"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;

    const-string v1, "GPCJavaScriptOperationBridge"

    if-nez v0, :cond_0

    .line 3
    const-string p0, "sendRepayResponser: blocking is null"

    invoke-static {v1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getResponser()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    move-result-object v2

    .line 8
    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p0, p2, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setFailedParameter(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 9
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getCallback()Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    move-result-object p0

    .line 10
    invoke-interface {p0, v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 12
    const-string p1, "sendRepayFailedResponser: "

    invoke-static {v1, p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sendRepaySuccessResponser()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->blockingResponser:Ljava/util/HashMap;

    const-string v1, "OPS.Repayment.BuyItem"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;

    const-string v1, "GPCJavaScriptOperationBridge"

    if-nez v0, :cond_0

    .line 3
    const-string v0, "sendRepayResponser: blocking is null"

    invoke-static {v1, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getResponser()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    move-result-object v2

    .line 8
    invoke-virtual {v2}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 9
    invoke-virtual {v0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getCallback()Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    move-result-object v0

    .line 10
    invoke-interface {v0, v2}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    .line 12
    const-string v2, "sendRepaySuccessResponser: "

    invoke-static {v1, v2, v0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public static sendUploadMediaOnSelectedResponser(Ljava/lang/String;Lorg/json/JSONObject;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->blockingResponser:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;

    const-string v0, "GPCJavaScriptOperationBridge"

    if-nez p0, :cond_0

    .line 3
    const-string p0, "sendUploadMediaOnSelectedResponser: blocking is null"

    invoke-static {v0, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getResponser()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    move-result-object v1

    .line 8
    invoke-virtual {p0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getCallback()Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->setSuccessParameter()Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;

    .line 10
    const-string v3, "orignalParam"

    invoke-virtual {p0}, Lcom/gpc/operations/web/core/bean/GPCBlockingResponser;->getCaller()Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;

    move-result-object p0

    invoke-virtual {p0}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptCaller;->getParameter()Lorg/json/JSONObject;

    move-result-object p0

    invoke-virtual {p1, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    invoke-virtual {v1, p1}, Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;->putDataParameter(Lorg/json/JSONObject;)V

    .line 12
    invoke-interface {v2, v1}, Lcom/gpc/operations/web/core/api/GPCJavaScriptHandlerCallback;->onResponse(Lcom/gpc/operations/web/core/bean/GPCJavaScriptResponser;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p0

    .line 14
    const-string p1, "sendUploadMediaOnSelectedResponser: "

    invoke-static {v0, p1, p0}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method


# virtual methods
.method public getBridgeName()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "gpc_jsbridge_ops"

    return-object v0
.end method

.method public getBridgeVersion()Ljava/lang/String;
    .locals 1

    .line 1
    const-string v0, "2.0.0_2"

    return-object v0
.end method

.method public getRegister()Ljava/util/HashMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/gpc/operations/web/core/api/GPCJavaScriptHandler;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptBaseBridge;->handlers:Ljava/util/HashMap;

    return-object v0
.end method

.method public setBehaviour(Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    return-void
.end method
