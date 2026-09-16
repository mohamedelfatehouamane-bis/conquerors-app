.class public Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/GPCNewPayment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "j"
.end annotation


# instance fields
.field public a:Lcom/gpc/sdk/error/GPCException;

.field public b:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

.field public c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

.field public final synthetic d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/GPCNewPayment;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;->d:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;->a:Lcom/gpc/sdk/error/GPCException;

    .line 3
    iput-object p3, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;->b:Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;

    .line 4
    iput-object p4, p0, Lcom/gpc/sdk/payment/flow/GPCNewPayment$j;->c:Lcom/gpc/sdk/payment/bean/GPCPaymentClientPurchase;

    return-void
.end method
