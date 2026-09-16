.class public Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/utils/modules/conf/ModuleItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PaymentItem"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;
    }
.end annotation


# instance fields
.field private mockItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;
    .locals 3

    const-string v0, "mock"

    .line 1
    :try_start_0
    new-instance v1, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;

    invoke-direct {v1}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;-><init>()V

    .line 2
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p0

    invoke-static {p0}, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;->createFromJson(Lorg/json/JSONObject;)Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    move-result-object p0

    iput-object p0, v1, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->mockItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_0
    return-object v1

    :catch_0
    move-exception p0

    .line 7
    const-string v0, "ModuleItem"

    const-string v1, ""

    invoke-static {v0, v1, p0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getMockItem()Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->mockItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    return-object v0
.end method

.method public setMockItem(Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem;->mockItem:Lcom/gpc/sdk/utils/modules/conf/ModuleItem$PaymentItem$MockItem;

    return-void
.end method
