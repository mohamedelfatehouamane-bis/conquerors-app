.class public Lcom/gpc/sdk/payment/bean/GPCGameItem$Category;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/bean/GPCGameItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Category"
.end annotation


# static fields
.field public static final ACTIVITY:I = 0x6

.field public static final CASH:I = 0x1

.field public static final COIN:I = 0x2

.field public static final FRAUD:I = 0xb

.field public static final GOLD:I = 0x3

.field public static final REDEEMED_IN_STORE:I = 0xf

.field public static final SERVICE:I = 0x63

.field public static final SILVER:I = 0x4

.field public static final STORE_POINT:I = 0x10


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
