.class public final enum Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

.field public static final enum APIGATEWAY:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

.field public static final enum PMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

.field public static final enum UMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method private static synthetic $values()[Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    sget-object v1, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->UMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->PMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    const/4 v1, 0x0

    const-string v2, "ums_rr"

    const-string v3, "UMS"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->UMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    new-instance v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    const/4 v1, 0x1

    const-string v2, "pms_rr"

    const-string v3, "PMS"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->PMS:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    new-instance v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    const/4 v1, 0x2

    const-string v2, "api_gateway"

    const-string v3, "APIGATEWAY"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->APIGATEWAY:Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->$values()[Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    move-result-object v0

    sput-object v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->$VALUES:[Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-object p3, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->name:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->$VALUES:[Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    invoke-virtual {v0}, [Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/service/helper/prefixengine/RuleType;->name:Ljava/lang/String;

    return-object v0
.end method
