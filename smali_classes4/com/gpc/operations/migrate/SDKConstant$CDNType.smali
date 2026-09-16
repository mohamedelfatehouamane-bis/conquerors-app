.class public final enum Lcom/gpc/operations/migrate/SDKConstant$CDNType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/operations/migrate/SDKConstant;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CDNType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/operations/migrate/SDKConstant$CDNType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/operations/migrate/SDKConstant$CDNType;

.field public static final enum DYNAMIC_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

.field public static final enum SND_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

.field public static final enum STATIC_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/operations/migrate/SDKConstant$CDNType;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    sget-object v1, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->STATIC_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->DYNAMIC_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->SND_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    const-string v1, "STATIC_ADDRESS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/migrate/SDKConstant$CDNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->STATIC_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    .line 6
    new-instance v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    const-string v1, "DYNAMIC_ADDRESS"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/migrate/SDKConstant$CDNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->DYNAMIC_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    .line 8
    new-instance v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    const-string v1, "SND_ADDRESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/migrate/SDKConstant$CDNType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->SND_ADDRESS:Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    .line 9
    invoke-static {}, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->$values()[Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    move-result-object v0

    sput-object v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->$VALUES:[Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/operations/migrate/SDKConstant$CDNType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/operations/migrate/SDKConstant$CDNType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/migrate/SDKConstant$CDNType;->$VALUES:[Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    invoke-virtual {v0}, [Lcom/gpc/operations/migrate/SDKConstant$CDNType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/operations/migrate/SDKConstant$CDNType;

    return-object v0
.end method
