.class public Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:Lcom/android/billingclient/api/Purchase;

.field public final synthetic c:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier$b;->c:Lcom/gpc/sdk/payment/flow/purchase/GPCTransactionQuerier;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
