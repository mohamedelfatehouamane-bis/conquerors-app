.class public interface abstract Lcom/gpc/tsh/pay/bean/GPCGameItemPrice;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final UNDEFINED_PRICE:D = -1.0


# virtual methods
.method public abstract getAmount()D
.end method

.method public abstract getCurrency()Ljava/lang/String;
.end method

.method public abstract getOriginalAmount()D
.end method

.method public abstract source()Lcom/gpc/tsh/pay/GameItemPriceSource;
.end method
