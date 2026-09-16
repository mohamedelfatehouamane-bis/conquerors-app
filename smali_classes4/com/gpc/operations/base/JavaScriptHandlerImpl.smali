.class public Lcom/gpc/operations/base/JavaScriptHandlerImpl;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/operations/base/JavaScriptHandlerImpl$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nJavaScriptHandlerImpl.kt\nKotlin\n*S Kotlin\n*F\n+ 1 JavaScriptHandlerImpl.kt\ncom/gpc/operations/base/JavaScriptHandlerImpl\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,407:1\n1#2:408\n*E\n"
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/operations/base/JavaScriptHandlerImpl$Companion;

.field private static final GATEWAY_FAILED:I

.field public static final HAS_PROCESSING_ORDER:I = 0x18707

.field private static final MAX_PIC_SIZE:I

.field public static final QUERY_PRODUCTS_FAILED:I = 0x18706

.field public static final QUERY_PRODUCTS_SUCCESS:I = 0x18705

.field private static final REPAYMENT_FAILED:I

.field private static final REQUEST_CODE_ASK_PERMISSIONS:I

.field private static final TAG:Ljava/lang/String;

.field public static final TRANSACTION_PURCHASE_CANCEL:I = 0x1876c

.field public static final TRANSACTION_PURCHASE_FAILED:I = 0x1876a


# instance fields
.field private final activity:Landroid/app/Activity;

.field private final appName:Ljava/lang/String;

.field private final behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

.field private currentItemId:Ljava/lang/String;

.field private currentLimitCount:I

.field private currentMaxUploadSize:J

.field private currentUploadToken:Ljava/lang/String;

.field private isIntentModel:Z

.field private javascriptCreater:Lcom/gpc/operations/base/JavascriptCreater;

.field protected jsBridge:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

.field protected pickerManager:Lcom/gpc/operations/base/picker/PickerManager;

.field private final webView:Landroid/webkit/WebView;


# direct methods
.method public static synthetic $r8$lambda$7p7TetHw4vx55tyefmab5Wph7RE(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    invoke-static {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->runOnUiThread$lambda$2(Lkotlin/jvm/functions/Function0;)V

    return-void
.end method

.method public static synthetic $r8$lambda$TZG6A1eu2fB2aqvMEWy2ZMuS9_Q(Ljava/lang/String;Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl$lambda$3(Ljava/lang/String;Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ytHw_f_4SoKgXPLnITlF137WUcA(Lcom/gpc/operations/base/JavaScriptHandlerImpl;[Ljava/lang/String;)V
    .locals 0

    invoke-static {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->checkGPCBridgeMeta$lambda$4(Lcom/gpc/operations/base/JavaScriptHandlerImpl;[Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->Companion:Lcom/gpc/operations/base/JavaScriptHandlerImpl$Companion;

    .line 1
    const-string v0, "JavaScriptHandlerImpl"

    sput-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const/16 v0, 0x2712

    .line 3
    sput v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->REQUEST_CODE_ASK_PERMISSIONS:I

    const v0, 0x18769

    .line 6
    sput v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->REPAYMENT_FAILED:I

    const v0, 0x1876b

    .line 8
    sput v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->GATEWAY_FAILED:I

    const/high16 v0, 0x6400000

    .line 16
    sput v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->MAX_PIC_SIZE:I

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Landroid/webkit/WebView;Ljava/lang/String;Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;)V
    .locals 1

    const-string v0, "activity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "webView"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "appName"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "behaviour"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->activity:Landroid/app/Activity;

    .line 3
    iput-object p2, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->webView:Landroid/webkit/WebView;

    .line 4
    iput-object p3, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->appName:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    const/16 p3, 0x9

    .line 9
    iput p3, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentLimitCount:I

    .line 10
    const-string p3, ""

    iput-object p3, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentItemId:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentUploadToken:Ljava/lang/String;

    .line 15
    new-instance p3, Lcom/gpc/operations/base/JavascriptCreater;

    invoke-direct {p3}, Lcom/gpc/operations/base/JavascriptCreater;-><init>()V

    iput-object p3, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->javascriptCreater:Lcom/gpc/operations/base/JavascriptCreater;

    .line 19
    invoke-static {}, Lcom/gpc/operations/base/RunningTimeConfiguration;->getInstance()Lcom/gpc/operations/base/RunningTimeConfiguration;

    move-result-object p3

    iget-boolean p3, p3, Lcom/gpc/operations/base/RunningTimeConfiguration;->isIntentModel:Z

    invoke-virtual {p0, p3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setIntentModel(Z)V

    .line 20
    new-instance p3, Lcom/gpc/operations/base/picker/PickerManager;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->isIntentModel()Z

    move-result v0

    invoke-direct {p3, v0, p1}, Lcom/gpc/operations/base/picker/PickerManager;-><init>(ZLandroid/app/Activity;)V

    invoke-virtual {p0, p3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setPickerManager(Lcom/gpc/operations/base/picker/PickerManager;)V

    .line 21
    new-instance p3, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;

    invoke-direct {p3, p1}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;-><init>(Landroid/app/Activity;)V

    .line 22
    new-instance v0, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;

    invoke-direct {v0, p1}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;-><init>(Landroid/app/Activity;)V

    .line 23
    invoke-virtual {p3, p4}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->setBehaviour(Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;)V

    .line 24
    invoke-virtual {v0, p4}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->setBehaviour(Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;)V

    .line 25
    new-instance p1, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    invoke-direct {p1, p2}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;-><init>(Landroid/webkit/WebView;)V

    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setJsBridge(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;)V

    .line 26
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-interface {p1, p3}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->registerJavaScriptBridge(Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;)V

    .line 27
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-interface {p1, v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->registerJavaScriptBridge(Lcom/gpc/operations/web/core/api/GPCJavaScriptBridge;)V

    :cond_1
    return-void
.end method

.method public static final synthetic access$getMAX_PIC_SIZE$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->MAX_PIC_SIZE:I

    return v0
.end method

.method public static final synthetic access$getTAG$cp()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static final checkGPCBridgeMeta$lambda$4(Lcom/gpc/operations/base/JavaScriptHandlerImpl;[Ljava/lang/String;)V
    .locals 2

    const-string v0, "this$0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "existMetaBridge"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavascriptCreater;->setMetaBridge([Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    sget-object p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string p1, "not existMetaBridge"

    invoke-static {p0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private static final loadUrl$lambda$3(Ljava/lang/String;Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V
    .locals 3

    const-string v0, "$js"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "this$0"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "load url:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object p1, p1, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->webView:Landroid/webkit/WebView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Landroid/webkit/WebView;->evaluateJavascript(Ljava/lang/String;Landroid/webkit/ValueCallback;)V

    :cond_0
    return-void
.end method

.method private static final runOnUiThread$lambda$2(Lkotlin/jvm/functions/Function0;)V
    .locals 1

    const-string v0, "$tmp0"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public GPCJavaScriptBridge_JSToNative(Ljava/lang/String;)V
    .locals 1
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->GPCJavaScriptBridge_JSToNative(Ljava/lang/String;)V

    return-void
.end method

.method public final checkGPCBridgeMeta()V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "checkGPCBridgeMeta execute"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    new-instance v1, Lcom/gpc/operations/base/JavaScriptHandlerImpl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V

    const-string v2, "gpc_jsbridge_v1"

    invoke-virtual {v0, v2, v1}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->existMeta(Ljava/lang/String;Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge$MetaTagValueCallback;)V

    return-void
.end method

.method public createUploadImgJavascript()Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$UploadImg;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    return-object v0
.end method

.method public createUploadMediaJavascript()Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;
    .locals 2

    .line 1
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$UploadMedia;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$UploadMedia;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    return-object v0
.end method

.method public createUploadStateTaskListener(Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;)Lcom/gpc/operations/service/upload/UploadStateTaskListener;
    .locals 1

    const-string v0, "uploadJs"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;

    invoke-direct {v0, p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl$createUploadStateTaskListener$1;-><init>(Lcom/gpc/operations/base/JavaScriptHandlerImpl;Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;)V

    return-object v0
.end method

.method public didReceivedRemoteNotification(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/operations/base/JavascriptCreater;->didReceivedRemoteNotification(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascriptCreater.didRec\u2026RemoteNotification(value)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public disappear()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavascriptCreater;->disappear()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascriptCreater.disappear()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->activity:Landroid/app/Activity;

    return-object v0
.end method

.method public final getAppName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->appName:Ljava/lang/String;

    return-object v0
.end method

.method public final getBehaviour()Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->behaviour:Lcom/gpc/operations/web/bridge/GPCJavaScriptUIBehaviour;

    return-object v0
.end method

.method public getCurrentItemId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentItemId:Ljava/lang/String;

    return-object v0
.end method

.method public getCurrentLimitCount()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentLimitCount:I

    return v0
.end method

.method public getCurrentMaxUploadSize()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentMaxUploadSize:J

    return-wide v0
.end method

.method public getCurrentUploadToken()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentUploadToken:Ljava/lang/String;

    return-object v0
.end method

.method public final getJSBridgeInHeaders()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersionInHeader()Ljava/util/Map;

    move-result-object v0

    const-string v1, "jsBridge.javaScriptCore.\u2026riptBridgeVersionInHeader"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getJSBridgeInQueries()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersionInQueries()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsBridge.javaScriptCore.\u2026iptBridgeVersionInQueries"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getJSBridgeInUserAgent()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersionInUserAgent()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsBridge.javaScriptCore.\u2026tBridgeVersionInUserAgent"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getJSBridgeVersion()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getJavaScriptCore()Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;

    move-result-object v0

    invoke-interface {v0}, Lcom/gpc/operations/web/core/api/GPCJavaScriptCore;->getJavaScriptBridgeVersion()Ljava/util/Map;

    move-result-object v0

    const-string v1, "jsBridge.javaScriptCore.javaScriptBridgeVersion"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final getJSNameSpace()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->getNameSpace()Ljava/lang/String;

    move-result-object v0

    const-string v1, "jsBridge.nameSpace"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->javascriptCreater:Lcom/gpc/operations/base/JavascriptCreater;

    return-object v0
.end method

.method public getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->jsBridge:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "jsBridge"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public getPickerManager()Lcom/gpc/operations/base/picker/PickerManager;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->pickerManager:Lcom/gpc/operations/base/picker/PickerManager;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "pickerManager"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0
.end method

.method public final getWebView()Landroid/webkit/WebView;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->webView:Landroid/webkit/WebView;

    return-object v0
.end method

.method public goBack()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavascriptCreater;->localHistoryGoBack()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascriptCreater.localHistoryGoBack()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public isIntentModel()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->isIntentModel:Z

    return v0
.end method

.method public loadUrl(Ljava/lang/String;)V
    .locals 2

    const-string v0, "js"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object p1, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v0, "load js is empty"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->webView:Landroid/webkit/WebView;

    new-instance v1, Lcom/gpc/operations/base/JavaScriptHandlerImpl$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;Lcom/gpc/operations/base/JavaScriptHandlerImpl;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 10

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getPickerManager()Lcom/gpc/operations/base/picker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/base/picker/PickerManager;->onActivityResult(IILandroid/content/Intent;)Lcom/gpc/operations/base/picker/PickResult;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 6
    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object p2

    if-eqz p2, :cond_2

    .line 7
    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/PickResult;->getType()Ljava/lang/String;

    move-result-object p2

    .line 8
    invoke-virtual {p1}, Lcom/gpc/operations/base/picker/PickResult;->getPhotoModels()Ljava/util/List;

    move-result-object p1

    .line 11
    const-string p3, "image"

    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 12
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->createUploadImgJavascript()Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    move-result-object p2

    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->createUploadMediaJavascript()Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;

    move-result-object p2

    .line 17
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 18
    new-instance p3, Ljava/util/ArrayList;

    invoke-direct {p3}, Ljava/util/ArrayList;-><init>()V

    .line 19
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 20
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 21
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/gpc/photoselector/model/PhotoModel;

    .line 22
    new-instance v2, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    invoke-direct {v2, v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;-><init>(Lcom/gpc/photoselector/model/PhotoModel;)V

    .line 24
    iget-object v3, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->appName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setModuleName(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentUploadToken()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setUploadToken(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentMaxUploadSize()J

    move-result-wide v3

    const/16 v5, 0x400

    int-to-long v5, v5

    div-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setMaxUploadSize(J)V

    .line 27
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentItemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setItemId(Ljava/lang/String;)V

    .line 29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v4

    const v5, 0x7fffffff

    and-int/2addr v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/gpc/photoselector/model/PhotoModel;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x4

    const/4 v9, 0x0

    const-string v5, " "

    const-string v6, "_"

    const/4 v7, 0x0

    invoke-static/range {v4 .. v9}, Lkotlin/text/StringsKt;->replace$default(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 30
    invoke-virtual {v2, v1}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->setUploadId(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 34
    invoke-virtual {p0, p2}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->createUploadStateTaskListener(Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;)Lcom/gpc/operations/service/upload/UploadStateTaskListener;

    move-result-object v1

    .line 35
    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 38
    :cond_1
    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->prepardUpload(Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object p1

    .line 39
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentItemId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p2, v1, v2, p1}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->checkLimitNum(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uploadJs.checkLimitNum(c\u2026FileInfoJs.size, taskIds)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    .line 40
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentItemId()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v1, p1}, Lcom/gpc/operations/base/JavascriptCreater$UploadJavascript;->prepare(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "uploadJs.prepare(currentItemId, taskIds)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    .line 42
    sget-object p1, Lcom/gpc/operations/service/upload/UploadFileManager;->Companion:Lcom/gpc/operations/service/upload/UploadFileManager$Companion;

    invoke-virtual {p1}, Lcom/gpc/operations/service/upload/UploadFileManager$Companion;->sharedInstance()Lcom/gpc/operations/service/upload/UploadFileManager;

    move-result-object p1

    .line 43
    iget-object p2, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->activity:Landroid/app/Activity;

    invoke-virtual {p1, p2, v0, p3}, Lcom/gpc/operations/service/upload/UploadFileManager;->uploadFile(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method public final onDestroy()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJsBridge()Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;->onDestroy()V

    return-void
.end method

.method public onGatewayFailed(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onGatewayFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->GATEWAY_FAILED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    const-string v1, "GatewayFailed"

    invoke-virtual {v0, v2, v1, p1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascriptCreater.Repaym\u2026ed\", underlyingErrorCode)"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onKeyboardVisible(ZI)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onKeyboardVisible:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance p1, Lcom/gpc/operations/base/JavascriptCreater$Keyboard;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/gpc/operations/base/JavascriptCreater$Keyboard;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    invoke-virtual {p1, p2}, Lcom/gpc/operations/base/JavascriptCreater$Keyboard;->displayHeight(I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "javascriptCreater.Keyboard().displayHeight(height)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onQueried(ILorg/json/JSONArray;I)V
    .locals 3

    const-string v0, "productArray"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "resultCode:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "--productArray:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->payItemsLoadCallback(ILorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "javascriptCreater.Repaym\u2026ray, underlyingErrorCode)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onRepaymentFailed(I)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onRepaymentFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget v2, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->REPAYMENT_FAILED:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    .line 4
    const-string v1, "Repayment Failed"

    invoke-virtual {v0, v2, v1, p1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "javascriptCreater.Repaym\u2026ngErrorCode\n            )"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 1

    const-string v0, "permissions"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "grantResults"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getPickerManager()Lcom/gpc/operations/base/picker/PickerManager;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/operations/base/picker/PickerManager;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    return-void
.end method

.method public onTransactionPurchaseFailed(II)V
    .locals 3

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "onTransactionPurchaseFailed:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    .line 4
    const-string v1, "Transaction Purchase Failed"

    invoke-virtual {v0, p1, v1, p2}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    const-string p2, "javascriptCreater.Repaym\u2026ngErrorCode\n            )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onTransactionPurchaseFinished()V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onTransactionPurchaseFinished"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;-><init>(Lcom/gpc/operations/base/JavascriptCreater;)V

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->paySuccessCallback()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascriptCreater.Repayment().paySuccessCallback()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public onTransactionPurchasePurchased()V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onTransactionPurchasePurchased"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onTransactionPurchasePurchasing()V
    .locals 2

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "onTransactionPurchasePurchasing"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openImagePicker(ILjava/lang/String;Ljava/lang/String;J)V
    .locals 3

    const-string v0, "itemId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadToken"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "openImagePicker"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maximumOfImage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "currentItemId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentLimitCount(I)V

    .line 5
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentLimitCount()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 6
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentLimitCount(I)V

    .line 8
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentItemId(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p0, p3}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentUploadToken(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p4, p5}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentMaxUploadSize(J)V

    .line 11
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getPickerManager()Lcom/gpc/operations/base/picker/PickerManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentLimitCount()I

    move-result p2

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentItemId()Ljava/lang/String;

    move-result-object p3

    const-string p4, ""

    invoke-virtual {p1, p2, p3, p4}, Lcom/gpc/operations/base/picker/PickerManager;->pickupImage(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public openMediaPicker(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 6

    const-string v0, "itemId"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "configuration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uploadToken"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->TAG:Ljava/lang/String;

    const-string v1, "openMediaPicker"

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "maximumOfImage:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "itemId:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "configuration:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/gpc/operations/utils/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentLimitCount(I)V

    .line 6
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentLimitCount()I

    move-result p1

    if-nez p1, :cond_0

    const/16 p1, 0x9

    .line 7
    invoke-virtual {p0, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentLimitCount(I)V

    .line 9
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentItemId(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0, p4}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentUploadToken(Ljava/lang/String;)V

    .line 11
    invoke-virtual {p0, p5, p6}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->setCurrentMaxUploadSize(J)V

    .line 12
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getPickerManager()Lcom/gpc/operations/base/picker/PickerManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentMaxUploadSize()J

    move-result-wide v1

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentLimitCount()I

    move-result v3

    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getCurrentItemId()Ljava/lang/String;

    move-result-object v4

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/gpc/operations/base/picker/PickerManager;->pickupMedia(JILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public prepardUpload(Ljava/util/ArrayList;)Ljava/lang/String;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "fileBeans"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v0, 0x0

    move-object v1, v0

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;

    if-eqz v1, :cond_1

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v3, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    goto :goto_1

    :cond_1
    move-object v3, v0

    :goto_1
    if-nez v3, :cond_0

    .line 6
    invoke-virtual {v2}, Lcom/gpc/operations/service/upload/bean/UploadFileInfoJ;->getUploadId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_2
    return-object v1
.end method

.method public runOnUiThread(Lkotlin/jvm/functions/Function0;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "runnable"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->activity:Landroid/app/Activity;

    new-instance v1, Lcom/gpc/operations/base/JavaScriptHandlerImpl$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lcom/gpc/operations/base/JavaScriptHandlerImpl$$ExternalSyntheticLambda1;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method public scrollToTop()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->getJavascriptCreater()Lcom/gpc/operations/base/JavascriptCreater;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/operations/base/JavascriptCreater;->webViewScrollToTop()Ljava/lang/String;

    move-result-object v0

    const-string v1, "javascriptCreater.webViewScrollToTop()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->loadUrl(Ljava/lang/String;)V

    return-void
.end method

.method public final sendCloseButtonDefaultBehaviourResponser()V
    .locals 0

    .line 1
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptCommonBridge;->sendCloseButtonDefaultBehaviourResponser()V

    return-void
.end method

.method public setCurrentItemId(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentItemId:Ljava/lang/String;

    return-void
.end method

.method public setCurrentLimitCount(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentLimitCount:I

    return-void
.end method

.method public setCurrentMaxUploadSize(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentMaxUploadSize:J

    return-void
.end method

.method public setCurrentUploadToken(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->currentUploadToken:Ljava/lang/String;

    return-void
.end method

.method public setIntentModel(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->isIntentModel:Z

    return-void
.end method

.method public setJavascriptCreater(Lcom/gpc/operations/base/JavascriptCreater;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->javascriptCreater:Lcom/gpc/operations/base/JavascriptCreater;

    return-void
.end method

.method public setJsBridge(Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->jsBridge:Lcom/gpc/operations/web/core/GPCWebViewJavaScriptBridge;

    return-void
.end method

.method public setPickerManager(Lcom/gpc/operations/base/picker/PickerManager;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavaScriptHandlerImpl;->pickerManager:Lcom/gpc/operations/base/picker/PickerManager;

    return-void
.end method
