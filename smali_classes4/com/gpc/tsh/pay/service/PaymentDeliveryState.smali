.class public final enum Lcom/gpc/tsh/pay/service/PaymentDeliveryState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/tsh/pay/service/PaymentDeliveryState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

.field public static final enum DELIVERED:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

.field public static final enum PENDING_DELIVER:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

.field public static final enum PROCESSING:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

.field public static final enum REQUEST_ACK:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const-string v1, "REQUEST_ACK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->REQUEST_ACK:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    .line 2
    new-instance v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const-string v1, "PROCESSING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->PROCESSING:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    .line 3
    new-instance v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const-string v1, "DELIVERED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->DELIVERED:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    .line 4
    new-instance v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const-string v1, "PENDING_DELIVER"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    .line 5
    invoke-static {}, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->a()[Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    move-result-object v0

    sput-object v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->$VALUES:[Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

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

.method public static synthetic a()[Lcom/gpc/tsh/pay/service/PaymentDeliveryState;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    sget-object v1, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->REQUEST_ACK:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->PROCESSING:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->DELIVERED:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->PENDING_DELIVER:Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/tsh/pay/service/PaymentDeliveryState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/tsh/pay/service/PaymentDeliveryState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->$VALUES:[Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    invoke-virtual {v0}, [Lcom/gpc/tsh/pay/service/PaymentDeliveryState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/tsh/pay/service/PaymentDeliveryState;

    return-object v0
.end method
