.class public final enum Lcom/gpc/tsh/bean/TSHType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/tsh/bean/TSHType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/tsh/bean/TSHType;

.field public static final enum LIST:Lcom/gpc/tsh/bean/TSHType;

.field public static final enum REPAYMENT:Lcom/gpc/tsh/bean/TSHType;

.field public static final enum TICKETS:Lcom/gpc/tsh/bean/TSHType;

.field public static final enum TICKET_DETAIL:Lcom/gpc/tsh/bean/TSHType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/tsh/bean/TSHType;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/tsh/bean/TSHType;

    sget-object v1, Lcom/gpc/tsh/bean/TSHType;->TICKETS:Lcom/gpc/tsh/bean/TSHType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/bean/TSHType;->LIST:Lcom/gpc/tsh/bean/TSHType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/bean/TSHType;->REPAYMENT:Lcom/gpc/tsh/bean/TSHType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/tsh/bean/TSHType;->TICKET_DETAIL:Lcom/gpc/tsh/bean/TSHType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/tsh/bean/TSHType;

    const-string v1, "TICKETS"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/bean/TSHType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/bean/TSHType;->TICKETS:Lcom/gpc/tsh/bean/TSHType;

    .line 2
    new-instance v0, Lcom/gpc/tsh/bean/TSHType;

    const-string v1, "LIST"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/bean/TSHType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/bean/TSHType;->LIST:Lcom/gpc/tsh/bean/TSHType;

    .line 3
    new-instance v0, Lcom/gpc/tsh/bean/TSHType;

    const-string v1, "REPAYMENT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/bean/TSHType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/bean/TSHType;->REPAYMENT:Lcom/gpc/tsh/bean/TSHType;

    .line 4
    new-instance v0, Lcom/gpc/tsh/bean/TSHType;

    const-string v1, "TICKET_DETAIL"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/tsh/bean/TSHType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/tsh/bean/TSHType;->TICKET_DETAIL:Lcom/gpc/tsh/bean/TSHType;

    .line 5
    invoke-static {}, Lcom/gpc/tsh/bean/TSHType;->$values()[Lcom/gpc/tsh/bean/TSHType;

    move-result-object v0

    sput-object v0, Lcom/gpc/tsh/bean/TSHType;->$VALUES:[Lcom/gpc/tsh/bean/TSHType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/tsh/bean/TSHType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/tsh/bean/TSHType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/tsh/bean/TSHType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/tsh/bean/TSHType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/tsh/bean/TSHType;->$VALUES:[Lcom/gpc/tsh/bean/TSHType;

    invoke-virtual {v0}, [Lcom/gpc/tsh/bean/TSHType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/tsh/bean/TSHType;

    return-object v0
.end method
