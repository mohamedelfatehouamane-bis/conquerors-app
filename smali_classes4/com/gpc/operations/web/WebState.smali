.class public final enum Lcom/gpc/operations/web/WebState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/operations/web/WebState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/operations/web/WebState;

.field public static final enum ERROR:Lcom/gpc/operations/web/WebState;

.field public static final enum LOADING:Lcom/gpc/operations/web/WebState;

.field public static final enum SUCCESS:Lcom/gpc/operations/web/WebState;


# direct methods
.method private static synthetic $values()[Lcom/gpc/operations/web/WebState;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/operations/web/WebState;

    sget-object v1, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/web/WebState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/web/WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/web/WebState;->LOADING:Lcom/gpc/operations/web/WebState;

    .line 3
    new-instance v0, Lcom/gpc/operations/web/WebState;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/web/WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/web/WebState;->ERROR:Lcom/gpc/operations/web/WebState;

    .line 5
    new-instance v0, Lcom/gpc/operations/web/WebState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/web/WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/web/WebState;->SUCCESS:Lcom/gpc/operations/web/WebState;

    .line 6
    invoke-static {}, Lcom/gpc/operations/web/WebState;->$values()[Lcom/gpc/operations/web/WebState;

    move-result-object v0

    sput-object v0, Lcom/gpc/operations/web/WebState;->$VALUES:[Lcom/gpc/operations/web/WebState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/operations/web/WebState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/web/WebState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/web/WebState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/operations/web/WebState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/web/WebState;->$VALUES:[Lcom/gpc/operations/web/WebState;

    invoke-virtual {v0}, [Lcom/gpc/operations/web/WebState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/operations/web/WebState;

    return-object v0
.end method
