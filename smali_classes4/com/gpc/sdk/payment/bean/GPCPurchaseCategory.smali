.class public final enum Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

.field public static final enum FRUAD:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

.field public static final enum INAPP:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

.field public static final enum SUB:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

.field public static final enum UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const-string v1, "UNKNOWN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    .line 6
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const-string v1, "INAPP"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->INAPP:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    .line 11
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const-string v1, "SUB"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->SUB:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    .line 16
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const-string v1, "FRUAD"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->FRUAD:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    .line 17
    invoke-static {}, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->a()[Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->$VALUES:[Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

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

.method public static synthetic a()[Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->UNKNOWN:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->INAPP:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->SUB:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->FRUAD:Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->$VALUES:[Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/bean/GPCPurchaseCategory;

    return-object v0
.end method
