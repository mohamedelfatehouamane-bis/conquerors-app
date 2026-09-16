.class public final enum Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

.field public static final enum LOADED_FROM_CACHE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

.field public static final enum LOADED_FROM_NETWORK:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

.field public static final enum NONE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->NONE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    .line 2
    new-instance v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    const-string v1, "LOADED_FROM_CACHE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->LOADED_FROM_CACHE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    .line 3
    new-instance v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    const-string v1, "LOADED_FROM_NETWORK"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->LOADED_FROM_NETWORK:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    .line 4
    invoke-static {}, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->a()[Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    move-result-object v0

    sput-object v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->$VALUES:[Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

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

.method public static synthetic a()[Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    sget-object v1, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->NONE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->LOADED_FROM_CACHE:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->LOADED_FROM_NETWORK:Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    return-object p0
.end method

.method public static values()[Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->$VALUES:[Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    invoke-virtual {v0}, [Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/tsh/pay/flow/cache/ITEMS_SOURCE;

    return-object v0
.end method
