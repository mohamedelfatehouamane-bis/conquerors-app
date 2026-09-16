.class public interface abstract Lcom/gpc/sdk/payment/bean/GPCGameItemPromotionPrice;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final UNDEFINED_PRICE:D = -1.0


# virtual methods
.method public abstract getAmount()D
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getOriginalAmount()D
.end method

.method public abstract getPricingContract()Lcom/gpc/sdk/payment/bean/GPCGameItemPricingContract;
.end method

.method public abstract source()Lcom/gpc/sdk/payment/GPCGameItemPriceSource;
.end method
