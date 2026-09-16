.class public final enum Lcom/gpc/sdk/utils/modules/ModuleStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/utils/modules/ModuleStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/utils/modules/ModuleStatus;

.field public static final enum ASYNCINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

.field public static final enum CREATED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

.field public static final enum DELAYED_INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

.field public static final enum INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

.field public static final enum PREINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

.field public static final enum UNKNOWN:Lcom/gpc/sdk/utils/modules/ModuleStatus;


# instance fields
.field private value:I


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/utils/modules/ModuleStatus;
    .locals 3

    const/4 v0, 0x6

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/utils/modules/ModuleStatus;

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->UNKNOWN:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->CREATED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->PREINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->ASYNCINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/modules/ModuleStatus;->DELAYED_INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "UNKNOWN"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/utils/modules/ModuleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->UNKNOWN:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 2
    new-instance v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const-string v1, "CREATED"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/utils/modules/ModuleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->CREATED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const-string v1, "PREINITED"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/utils/modules/ModuleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->PREINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 4
    new-instance v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const-string v1, "ASYNCINITED"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/utils/modules/ModuleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->ASYNCINITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 5
    new-instance v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const-string v1, "INITED"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/utils/modules/ModuleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 7
    new-instance v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    const-string v1, "DELAYED_INITED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/utils/modules/ModuleStatus;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->DELAYED_INITED:Lcom/gpc/sdk/utils/modules/ModuleStatus;

    .line 8
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModuleStatus;->$values()[Lcom/gpc/sdk/utils/modules/ModuleStatus;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->$VALUES:[Lcom/gpc/sdk/utils/modules/ModuleStatus;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/ModuleStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/utils/modules/ModuleStatus;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/utils/modules/ModuleStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->$VALUES:[Lcom/gpc/sdk/utils/modules/ModuleStatus;

    invoke-virtual {v0}, [Lcom/gpc/sdk/utils/modules/ModuleStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/utils/modules/ModuleStatus;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/utils/modules/ModuleStatus;->value:I

    return v0
.end method
