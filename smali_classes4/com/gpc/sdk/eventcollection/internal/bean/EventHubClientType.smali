.class public final enum Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

.field public static final enum GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

.field public static final enum SDK:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method private static final synthetic $values()[Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->SDK:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    const/4 v1, 0x0

    const-string v2, "game"

    const-string v3, "GAME"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->GAME:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    .line 2
    new-instance v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    const/4 v1, 0x1

    const-string v2, "sdk"

    const-string v3, "SDK"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->SDK:Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    invoke-static {}, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->$values()[Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->$VALUES:[Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

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
    const-string p1, ""

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->value:Ljava/lang/String;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;
    .locals 1

    const-class v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;
    .locals 1

    sget-object v0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->$VALUES:[Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;

    return-object v0
.end method


# virtual methods
.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/eventcollection/internal/bean/EventHubClientType;->value:Ljava/lang/String;

    return-object v0
.end method
