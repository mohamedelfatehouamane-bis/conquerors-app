.class public final Lcom/gpc/sdk/utils/factory/PaymentFactory;
.super Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "PaymentFactory"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;-><init>()V

    return-void
.end method

.method public static getExPaymentService()Lcom/gpc/sdk/payment/external/ExPaymentService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/external/ExPaymentService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/external/ExPaymentService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/external/ExPaymentServiceImpl;-><init>()V

    return-object v0
.end method

.method public static getPaymentService()Lcom/gpc/sdk/payment/service/PaymentService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/service/PaymentService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/service/PaymentService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/service/b;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/b;-><init>()V

    return-object v0
.end method

.method public static getPurchaseService()Lcom/gpc/sdk/payment/service/PurchaseService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/service/PurchaseService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/service/PurchaseService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/service/c;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/c;-><init>()V

    return-object v0
.end method

.method public static getSubscriptionService()Lcom/gpc/sdk/payment/service/SubscriptionService;
    .locals 3

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/service/SubscriptionService;

    invoke-static {v0}, Lcom/gpc/sdk/utils/factory/ModuleBaseFactory;->getSpyObject(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/payment/service/SubscriptionService;

    if-eqz v0, :cond_0

    .line 3
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " is a spy."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PaymentFactory"

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 6
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/service/d;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/service/d;-><init>()V

    return-object v0
.end method
