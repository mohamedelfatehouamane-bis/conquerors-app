.class public Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isPaid()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;->a:Z

    return v0
.end method

.method public setPaid(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/service/bean/GPCQRWaitingForPayResult;->a:Z

    return-void
.end method
