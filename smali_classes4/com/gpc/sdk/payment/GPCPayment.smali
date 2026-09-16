.class public Lcom/gpc/sdk/payment/GPCPayment;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/payment/IGPCPayment;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;,
        Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;,
        Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseFailureType;
    }
.end annotation


# static fields
.field public static final i:Ljava/lang/String; = "GPCPayment"


# instance fields
.field public a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

.field public b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

.field public c:Ljava/lang/String;

.field public d:Landroid/app/Activity;

.field public e:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

.field public f:Z

.field public g:Lcom/gpc/sdk/payment/flow/cache/a;

.field public h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 3

    .line 33
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/sdk/payment/GPCPayment;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)V
    .locals 2

    .line 34
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/GPCConfiguration;->getGameId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/gpc/sdk/account/GPCSessionManager;->sharedInstance()Lcom/gpc/sdk/account/GPCSessionManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSessionManager;->currentSession()Lcom/gpc/sdk/account/GPCSession;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/account/GPCSession;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/gpc/sdk/payment/GPCPayment;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->c:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->f:Z

    .line 12
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCPayment;->d:Landroid/app/Activity;

    .line 13
    iput-object p2, p0, Lcom/gpc/sdk/payment/GPCPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    .line 15
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "paymentType:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "gameId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "userId:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-class v0, Lcom/gpc/sdk/utils/modules/DynamicModule;

    invoke-static {v0}, Lcom/gpc/sdk/utils/modules/ModulesManager;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/DynamicModule;

    if-eqz v0, :cond_0

    .line 21
    const-class v2, Lcom/gpc/sdk/utils/modules/PaymentModule;

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/utils/modules/DynamicModule;->module(Ljava/lang/Class;)Lcom/gpc/sdk/utils/modules/Module;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/utils/modules/PaymentModule;

    if-eqz v0, :cond_0

    .line 23
    invoke-virtual {v0, p2}, Lcom/gpc/sdk/utils/modules/PaymentModule;->getPaymentItemsCacheManager(Lcom/gpc/sdk/GPCSDKConstant$PaymentType;)Lcom/gpc/sdk/payment/flow/cache/a;

    move-result-object v0

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->g:Lcom/gpc/sdk/payment/flow/cache/a;

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->g:Lcom/gpc/sdk/payment/flow/cache/a;

    if-nez v0, :cond_1

    .line 27
    const-string v0, "paymentModule is null."

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    new-instance v0, Lcom/gpc/sdk/payment/flow/cache/a;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/flow/cache/a;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->g:Lcom/gpc/sdk/payment/flow/cache/a;

    .line 30
    :cond_1
    new-instance v1, Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    iget-object v6, p0, Lcom/gpc/sdk/payment/GPCPayment;->g:Lcom/gpc/sdk/payment/flow/cache/a;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/flow/cache/a;)V

    iput-object v1, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    .line 31
    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a()V

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 32
    sget-object v0, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->GOOGLE_PLAY:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-direct {p0, p1, v0, p2, p3}, Lcom/gpc/sdk/payment/GPCPayment;-><init>(Landroid/app/Activity;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    iget-object v2, p0, Lcom/gpc/sdk/payment/GPCPayment;->d:Landroid/app/Activity;

    iget-object v3, p0, Lcom/gpc/sdk/payment/GPCPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    iget-object v4, p0, Lcom/gpc/sdk/payment/GPCPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    iget-boolean v7, p0, Lcom/gpc/sdk/payment/GPCPayment;->f:Z

    iget-object v9, p0, Lcom/gpc/sdk/payment/GPCPayment;->g:Lcom/gpc/sdk/payment/flow/cache/a;

    move v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v8, p4

    invoke-direct/range {v0 .. v9}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;-><init>(ILandroid/app/Activity;Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/GPCSDKConstant$PaymentType;Ljava/lang/String;Ljava/lang/String;ZLjava/util/List;Lcom/gpc/sdk/payment/flow/cache/a;)V

    return-object v0
.end method

.method public destroy()V
    .locals 2

    .line 1
    const-string v0, "GPCPayment"

    const-string v1, "destroy"

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    if-eqz v0, :cond_1

    .line 7
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->destroy()V

    :cond_1
    return-void
.end method

.method public fraudPay(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "fraudPay :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public getActivity()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->d:Landroid/app/Activity;

    return-object v0
.end method

.method public getGameId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPaymentType()Lcom/gpc/sdk/GPCSDKConstant$PaymentType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f()Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    move-result-object v0

    return-object v0
.end method

.method public getPurchaseLimit()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    if-nez v0, :cond_0

    .line 2
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->GPCPaymentPurchaseLimitationNone:Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentPurchaseLimitation;->getValue()I

    move-result v0

    return v0

    .line 5
    :cond_0
    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->getPurchaseLimit()I

    move-result v0

    return v0
.end method

.method public getUserID()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->g()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public initialize(Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/payment/GPCPayment;->initialize(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V

    return-void
.end method

.method public initialize(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V
    .locals 3

    .line 2
    const-string v0, "initialize"

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    invoke-direct {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;-><init>()V

    .line 6
    :cond_0
    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCPayment;->h:Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;

    .line 7
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "paymentInitParams:"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/payment/bean/GPCPaymentParams;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    new-instance v1, Lcom/gpc/sdk/payment/GPCPayment$a;

    invoke-direct {v1, p0, p2}, Lcom/gpc/sdk/payment/GPCPayment$a;-><init>(Lcom/gpc/sdk/payment/GPCPayment;Lcom/gpc/sdk/payment/GPCPayment$GPCPurchaseListener;)V

    invoke-virtual {v0, p1, v1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/bean/GPCPaymentInitParams;Lcom/gpc/sdk/payment/flow/listener/IGPCPurchaseStateListener;)V

    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->i()Z

    move-result v0

    return v0
.end method

.method public loadItems(Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z
    .locals 1

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0, v0, p1}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z

    move-result p1

    return p1
.end method

.method public loadItems(Ljava/lang/String;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z
    .locals 1

    const/4 v0, 0x0

    .line 11
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z

    move-result p1

    return p1
.end method

.method public loadItems(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;",
            ")Z"
        }
    .end annotation

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadItems channelName:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {p0}, Lcom/gpc/sdk/payment/GPCPayment;->getUserID()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 17
    const-string p1, "120105"

    const-string p2, "10"

    invoke-static {p1, p2}, Lcom/gpc/sdk/error/utils/GPCExceptionUtils;->instantiatedException(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    .line 18
    invoke-interface {p3, p1, p2}, Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;->onPaymentItemsLoadFinished(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    .line 23
    const-string p1, "IGXID is null, login yet?"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 26
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "prevIGXId:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/payment/GPCPayment;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 27
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "IGXID:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    iget-object v2, p0, Lcom/gpc/sdk/payment/GPCPayment;->c:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 30
    iput-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->c:Ljava/lang/String;

    .line 32
    iget-object v2, p0, Lcom/gpc/sdk/payment/GPCPayment;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    if-eqz v2, :cond_1

    .line 33
    invoke-virtual {v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->destroy()V

    .line 36
    :cond_1
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/GPCConfiguration;->getIapItemsPageSize()I

    move-result v2

    .line 37
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "IapItemsPageSize:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-virtual {p0, v2, v0, p1, p2}, Lcom/gpc/sdk/payment/GPCPayment;->a(ILjava/lang/String;Ljava/lang/String;Ljava/util/List;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/payment/GPCPayment;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/payment/GPCPayment;->b:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;->loadItems(Lcom/gpc/sdk/payment/flow/listener/IGPCLoadItemsListener;)Z

    move-result p1

    return p1
.end method

.method public loadItems(Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;",
            ")Z"
        }
    .end annotation

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "loadItems:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/payment/GPCPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    invoke-virtual {v1}, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->e:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->SAMSUNG:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne v0, v1, :cond_0

    .line 4
    const-string v0, "samsung"

    invoke-virtual {p0, v0, p1, p2}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z

    move-result p1

    return p1

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->HUAWEI:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne v0, v1, :cond_1

    .line 6
    const-string v0, "huawei"

    invoke-virtual {p0, v0, p1, p2}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z

    move-result p1

    return p1

    .line 7
    :cond_1
    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$PaymentType;->RUSTORE:Lcom/gpc/sdk/GPCSDKConstant$PaymentType;

    if-ne v0, v1, :cond_2

    .line 8
    const-string v0, "rustore"

    invoke-virtual {p0, v0, p1, p2}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z

    move-result p1

    return p1

    .line 10
    :cond_2
    const-string v0, "android"

    invoke-virtual {p0, v0, p1, p2}, Lcom/gpc/sdk/payment/GPCPayment;->loadItems(Ljava/lang/String;Ljava/util/List;Lcom/gpc/sdk/payment/GPCPayment$GPCPaymentItemsListener;)Z

    move-result p1

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "onActivityResult :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2, p3}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(IILandroid/content/Intent;)Z

    move-result p1

    return p1
.end method

.method public onNewIntent(Landroid/content/Intent;)V
    .locals 2

    .line 1
    const-string v0, "onNewIntent"

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Landroid/content/Intent;)V

    return-void

    .line 5
    :cond_0
    const-string p1, "Payment is null, please initialize first."

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public pay(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "pay :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public setGameId(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->e(Ljava/lang/String;)V

    return-void
.end method

.method public setGameItemDefaultPriceTagText(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setGameItemDefaultPriceTagText:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    invoke-static {}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->e()Lcom/gpc/sdk/payment/utils/PaymentConfiguration;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/utils/PaymentConfiguration;->a(Ljava/lang/String;)V

    return-void
.end method

.method public setGameSupportMultipleRoles(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Z)V

    return-void
.end method

.method public setGetThirdPlatormPrice(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/payment/GPCPayment;->f:Z

    return-void
.end method

.method public setRedeliveryListener(Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "setRedeliveryListener:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->a(Lcom/gpc/sdk/payment/listener/GPCPurchaseRedeliveryListener;)V

    return-void
.end method

.method public setUserID(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->f(Ljava/lang/String;)V

    return-void
.end method

.method public subscribeTo(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subscribeTo :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->b(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method

.method public subscribeToDeprecated(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "subscribeToDeprecated :"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCPayment"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/payment/GPCPayment;->a:Lcom/gpc/sdk/payment/flow/GPCNewPayment;

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/payment/flow/GPCNewPayment;->c(Ljava/lang/String;Lcom/gpc/sdk/payment/bean/GPCPaymentPayload;)V

    return-void
.end method
