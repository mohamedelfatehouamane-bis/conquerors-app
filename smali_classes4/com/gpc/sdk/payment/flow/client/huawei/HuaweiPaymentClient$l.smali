.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnFailureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/lang/String;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;

.field public final synthetic b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$l;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$l;->a:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Ljava/lang/Exception;)V
    .locals 2

    .line 1
    const-string v0, "HuaweiPaymentClient"

    const-string v1, "obtainOwnedPurchases, fail"

    invoke-static {v0, v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$l;->a:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;->onFail(Ljava/lang/Exception;)V

    return-void
.end method
