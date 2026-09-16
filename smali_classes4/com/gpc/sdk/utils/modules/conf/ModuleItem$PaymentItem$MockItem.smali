.class public Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MockItem"
.end annotation


# instance fields
.field private walletId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;
    .locals 3

    const-string v0, "wallet_id"

    .line 1
    new-instance v1, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;-><init>()V

    .line 3
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;->walletId:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception p0

    .line 7
    const-string v0, "ModuleItem"

    const-string v2, ""

    invoke-static {v0, v2, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-object v1
.end method


# virtual methods
.method public getWalletId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;->walletId:Ljava/lang/String;

    return-object v0
.end method

.method public setWalletId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;->walletId:Ljava/lang/String;

    return-void
.end method
