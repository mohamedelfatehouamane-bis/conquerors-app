.class public Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/huawei/hmf/tasks/OnSuccessListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;->a(ILjava/util/List;Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/huawei/hmf/tasks/OnSuccessListener<",
        "Lcom/huawei/hms/iap/entity/ProductInfoResult;",
        ">;"
    }
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
    iput-object p1, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;->b:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient;

    iput-object p2, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;->a:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V
    .locals 2

    .line 1
    const-string v0, "HuaweiPaymentClient"

    const-string v1, "obtainProductInfo, success"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;->a:Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$IapApiCallback;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onSuccess(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/huawei/hms/iap/entity/ProductInfoResult;

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/payment/flow/client/huawei/HuaweiPaymentClient$e;->a(Lcom/huawei/hms/iap/entity/ProductInfoResult;)V

    return-void
.end method
