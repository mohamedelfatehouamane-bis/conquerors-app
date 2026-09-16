.class public final enum Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

.field public static final enum CLOSE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

.field public static final enum IMMEDIATELY_ONCE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

.field public static final enum NOT_SET:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->NOT_SET:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->CLOSE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->IMMEDIATELY_ONCE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const-string v1, "NOT_SET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->NOT_SET:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    .line 2
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const-string v1, "CLOSE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->CLOSE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    .line 3
    new-instance v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    const-string v1, "IMMEDIATELY_ONCE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->IMMEDIATELY_ONCE:Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->$values()[Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->$VALUES:[Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->$VALUES:[Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    invoke-virtual {v0}, [Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/service/network/http/HTTPRetryStrategy;

    return-object v0
.end method
