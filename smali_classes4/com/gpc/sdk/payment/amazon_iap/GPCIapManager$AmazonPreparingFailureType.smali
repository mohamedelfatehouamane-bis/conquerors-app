.class public final enum Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AmazonPreparingFailureType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

.field public static final enum GET_PRODUCT_DATA:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

.field public static final enum GET_USER_DATA:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    const-string v1, "GET_USER_DATA"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->GET_USER_DATA:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    const-string v1, "GET_PRODUCT_DATA"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->GET_PRODUCT_DATA:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    .line 3
    invoke-static {}, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->a()[Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->$VALUES:[Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    sget-object v1, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->GET_USER_DATA:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->GET_PRODUCT_DATA:Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->$VALUES:[Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/amazon_iap/GPCIapManager$AmazonPreparingFailureType;

    return-object v0
.end method
