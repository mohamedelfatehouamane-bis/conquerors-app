.class public Lcom/gpc/operations/base/JavascriptCreater$Repayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/base/JavascriptCreater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Repayment"
.end annotation


# instance fields
.field private repayment:Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;

.field final synthetic this$0:Lcom/gpc/operations/base/JavascriptCreater;


# direct methods
.method public constructor <init>(Lcom/gpc/operations/base/JavascriptCreater;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->this$0:Lcom/gpc/operations/base/JavascriptCreater;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Lcom/gpc/operations/base/JavascriptCreaterV2$Repayment;

    invoke-direct {p1}, Lcom/gpc/operations/base/JavascriptCreaterV2$Repayment;-><init>()V

    iput-object p1, p0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->repayment:Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;

    return-void
.end method


# virtual methods
.method public payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->repayment:Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;->payFailedCallback(ILjava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public payItemsLoadCallback(ILorg/json/JSONArray;I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->repayment:Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;

    invoke-interface {v0, p1, p2, p3}, Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;->payItemsLoadCallback(ILorg/json/JSONArray;I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public paySuccessCallback()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/JavascriptCreater$Repayment;->repayment:Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;

    invoke-interface {v0}, Lcom/gpc/operations/base/JavascriptCreater$RepaymentJavaScript;->paySuccessCallback()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
