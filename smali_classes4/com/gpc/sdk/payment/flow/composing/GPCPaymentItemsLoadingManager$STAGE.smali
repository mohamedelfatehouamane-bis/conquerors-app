.class public final enum Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "STAGE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

.field public static final enum NONE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

.field public static final enum TO_LOAD_ITEMS_FROM_PLATFORM:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

.field public static final enum TO_LOAD_ITEMS_FROM_STORE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->NONE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 2
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const-string v1, "TO_LOAD_ITEMS_FROM_PLATFORM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_PLATFORM:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 3
    new-instance v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const-string v1, "TO_LOAD_ITEMS_FROM_STORE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_STORE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->a()[Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->$VALUES:[Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

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

.method public static synthetic a()[Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    sget-object v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->NONE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_PLATFORM:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->TO_LOAD_ITEMS_FROM_STORE:Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->$VALUES:[Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/flow/composing/GPCPaymentItemsLoadingManager$STAGE;

    return-object v0
.end method
