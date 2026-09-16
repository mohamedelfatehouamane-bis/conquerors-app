.class public Lcom/gpc/tsh/bridge/RepaymentV3$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/tsh/pay/flow/listener/IQueryRepaymentProductsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/tsh/bridge/RepaymentV3;->queryProducts(Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;

.field public final synthetic b:Lcom/gpc/tsh/bridge/RepaymentV3;


# direct methods
.method public constructor <init>(Lcom/gpc/tsh/bridge/RepaymentV3;Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$c;->b:Lcom/gpc/tsh/bridge/RepaymentV3;

    iput-object p2, p0, Lcom/gpc/tsh/bridge/RepaymentV3$c;->a:Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onQueried(Lcom/gpc/operations/migrate/error/GPCException;ZLjava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/operations/migrate/error/GPCException;",
            "Z",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCProduct;",
            ">;)V"
        }
    .end annotation

    const-string v0, ""

    .line 1
    iget-object v1, p0, Lcom/gpc/tsh/bridge/RepaymentV3$c;->a:Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;

    if-nez v1, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->isNone()Z

    move-result v1

    if-eqz v1, :cond_1

    const v1, 0x18705

    goto :goto_0

    :cond_1
    const v1, 0x18706

    :goto_0
    if-eqz p2, :cond_2

    const v1, 0x18707

    .line 13
    :cond_2
    new-instance p2, Lorg/json/JSONArray;

    invoke-direct {p2}, Lorg/json/JSONArray;-><init>()V

    .line 15
    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_1
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/gpc/tsh/pay/bean/GPCProduct;

    .line 16
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 17
    const-string v4, "id"

    iget-object v5, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->id:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    const-string v4, "currencyCode"

    iget-object v5, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->currencyCode:Ljava/lang/String;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    const-string v4, "price"

    iget-wide v5, v2, Lcom/gpc/tsh/pay/bean/GPCProduct;->priceAmountMicros:J

    invoke-virtual {v3, v4, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 20
    const-string v2, "currencySymbol"

    invoke-virtual {v3, v2, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    invoke-virtual {p2, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p3

    .line 24
    const-string v2, "RepaymentV3"

    invoke-static {v2, v0, p3}, Lcom/gpc/operations/utils/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 26
    :cond_3
    iget-object p3, p0, Lcom/gpc/tsh/bridge/RepaymentV3$c;->a:Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;

    invoke-virtual {p1}, Lcom/gpc/operations/migrate/error/GPCException;->getCodeInteger()I

    move-result p1

    invoke-interface {p3, v1, p2, p1}, Lcom/gpc/tsh/bridge/OnQueryProductsResultListener;->onQueried(ILorg/json/JSONArray;I)V

    return-void
.end method
