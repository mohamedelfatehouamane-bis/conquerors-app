.class public Lcom/gpc/tsh/pay/bean/price/StandardPrice;
.super Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/tsh/pay/bean/price/BaseStandardPrice;-><init>()V

    return-void
.end method


# virtual methods
.method public source()Lcom/gpc/tsh/pay/GameItemPriceSource;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/GameItemPriceSource;->GPCGameItemPriceSourceRealTime:Lcom/gpc/tsh/pay/GameItemPriceSource;

    return-object v0
.end method
