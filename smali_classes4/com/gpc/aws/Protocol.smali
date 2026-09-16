.class public final enum Lcom/gpc/aws/Protocol;
.super Ljava/lang/Enum;
.source "Protocol.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/Protocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/Protocol;

.field public static final enum HTTP:Lcom/gpc/aws/Protocol;

.field public static final enum HTTPS:Lcom/gpc/aws/Protocol;


# instance fields
.field private final protocol:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 33
    new-instance v0, Lcom/gpc/aws/Protocol;

    const-string v1, "http"

    const-string v2, "HTTP"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gpc/aws/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/Protocol;->HTTP:Lcom/gpc/aws/Protocol;

    .line 40
    new-instance v1, Lcom/gpc/aws/Protocol;

    const-string v2, "https"

    const-string v4, "HTTPS"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gpc/aws/Protocol;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/Protocol;->HTTPS:Lcom/gpc/aws/Protocol;

    const/4 v2, 0x2

    .line 26
    new-array v2, v2, [Lcom/gpc/aws/Protocol;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/gpc/aws/Protocol;->$VALUES:[Lcom/gpc/aws/Protocol;

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

    .line 44
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 45
    iput-object p3, p0, Lcom/gpc/aws/Protocol;->protocol:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/Protocol;
    .locals 1

    .line 26
    const-class v0, Lcom/gpc/aws/Protocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/Protocol;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/Protocol;
    .locals 1

    .line 26
    sget-object v0, Lcom/gpc/aws/Protocol;->$VALUES:[Lcom/gpc/aws/Protocol;

    invoke-virtual {v0}, [Lcom/gpc/aws/Protocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/Protocol;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/gpc/aws/Protocol;->protocol:Ljava/lang/String;

    return-object v0
.end method
