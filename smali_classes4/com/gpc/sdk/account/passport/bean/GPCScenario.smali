.class public final enum Lcom/gpc/sdk/account/passport/bean/GPCScenario;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/account/passport/bean/GPCScenario;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/account/passport/bean/GPCScenario;

.field public static final enum PassportScenarioBinding:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

.field public static final enum PassportScenarioLogin:Lcom/gpc/sdk/account/passport/bean/GPCScenario;


# instance fields
.field private scenario:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    const-string v1, "PassportScenarioBinding"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/account/passport/bean/GPCScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioBinding:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    .line 3
    new-instance v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    const-string v1, "PassportScenarioLogin"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/account/passport/bean/GPCScenario;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioLogin:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->a()[Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->$VALUES:[Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->scenario:I

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/account/passport/bean/GPCScenario;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioBinding:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->PassportScenarioLogin:Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/account/passport/bean/GPCScenario;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/account/passport/bean/GPCScenario;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->$VALUES:[Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    invoke-virtual {v0}, [Lcom/gpc/sdk/account/passport/bean/GPCScenario;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/account/passport/bean/GPCScenario;

    return-object v0
.end method


# virtual methods
.method public getScenario()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/account/passport/bean/GPCScenario;->scenario:I

    return v0
.end method
