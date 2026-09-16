.class public Lcom/gpc/operations/base/JavascriptCreaterV2$Repayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/JavascriptCreaterV2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Repayment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1, p2, p3}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->sendRepayFailedResponser(ILjava/lang/String;I)V

    .line 2
    const-string p1, ""

    return-object p1
.end method

.method public payItemsLoadCallback(ILorg/json/JSONArray;I)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    return-object p1
.end method

.method public paySuccessCallback()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/operations/web/bridge/GPCJavaScriptOperationBridge;->sendRepaySuccessResponser()V

    .line 2
    const-string v0, ""

    return-object v0
.end method
