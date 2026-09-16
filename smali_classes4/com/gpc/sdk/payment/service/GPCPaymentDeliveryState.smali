.class public final enum Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

.field public static final enum DELIVERED:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

.field public static final enum PENDING_DELIVER:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

.field public static final enum PROCESSING:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

.field public static final enum REQUEST_ACK:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const-string v1, "REQUEST_ACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->REQUEST_ACK:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const-string v1, "PROCESSING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->PROCESSING:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    .line 3
    new-instance v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const-string v1, "DELIVERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->DELIVERED:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    .line 4
    new-instance v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const-string v1, "PENDING_DELIVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    .line 5
    invoke-static {}, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->a()[Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->$VALUES:[Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

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

.method public static synthetic a()[Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->REQUEST_ACK:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->PROCESSING:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->DELIVERED:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->$VALUES:[Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/service/GPCPaymentDeliveryState;

    return-object v0
.end method
