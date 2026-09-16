.class Lcom/ProductHelper$1;
.super Ljava/lang/Object;
.source "ProductHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ProductHelper;->requestBuyProduct(JLjava/lang/String;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 74
    sget-object v0, Lcom/ProductHelper;->s_Instance:Lcom/ProductHelper;

    sget-wide v1, Lcom/ProductHelper;->s_nProductID:J

    sget-object v3, Lcom/ProductHelper;->s_strServer:Ljava/lang/String;

    sget-wide v4, Lcom/ProductHelper;->s_nConsumptionID:J

    invoke-virtual/range {v0 .. v5}, Lcom/ProductHelper;->buyProduct(JLjava/lang/String;J)V

    return-void
.end method
