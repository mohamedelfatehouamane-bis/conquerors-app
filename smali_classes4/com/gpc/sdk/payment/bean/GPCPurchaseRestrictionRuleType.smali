.class public final enum Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

.field public static final enum DAILY:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

.field public static final enum MONTH:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

.field public static final enum NOT_ALLOWED:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

.field public static final enum SINGLE:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const-string v1, "NOT_ALLOWED"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->NOT_ALLOWED:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    .line 6
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const-string v1, "SINGLE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->SINGLE:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    .line 11
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const-string v1, "DAILY"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->DAILY:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    .line 16
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const-string v1, "MONTH"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->MONTH:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    .line 17
    invoke-static {}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->a()[Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->$VALUES:[Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

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

.method public static synthetic a()[Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->NOT_ALLOWED:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->SINGLE:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->DAILY:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->MONTH:Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->$VALUES:[Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionRuleType;

    return-object v0
.end method
