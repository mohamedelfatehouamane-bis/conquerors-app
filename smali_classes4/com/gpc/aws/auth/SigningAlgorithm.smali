.class public final enum Lcom/gpc/aws/auth/SigningAlgorithm;
.super Ljava/lang/Enum;
.source "SigningAlgorithm.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/auth/SigningAlgorithm;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/auth/SigningAlgorithm;

.field public static final enum HmacSHA1:Lcom/gpc/aws/auth/SigningAlgorithm;

.field public static final enum HmacSHA256:Lcom/gpc/aws/auth/SigningAlgorithm;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 22
    new-instance v0, Lcom/gpc/aws/auth/SigningAlgorithm;

    const-string v1, "HmacSHA1"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/aws/auth/SigningAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/aws/auth/SigningAlgorithm;->HmacSHA1:Lcom/gpc/aws/auth/SigningAlgorithm;

    .line 25
    new-instance v1, Lcom/gpc/aws/auth/SigningAlgorithm;

    const-string v3, "HmacSHA256"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/gpc/aws/auth/SigningAlgorithm;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/gpc/aws/auth/SigningAlgorithm;->HmacSHA256:Lcom/gpc/aws/auth/SigningAlgorithm;

    const/4 v3, 0x2

    .line 19
    new-array v3, v3, [Lcom/gpc/aws/auth/SigningAlgorithm;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lcom/gpc/aws/auth/SigningAlgorithm;->$VALUES:[Lcom/gpc/aws/auth/SigningAlgorithm;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 19
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/auth/SigningAlgorithm;
    .locals 1

    .line 19
    const-class v0, Lcom/gpc/aws/auth/SigningAlgorithm;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/auth/SigningAlgorithm;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/auth/SigningAlgorithm;
    .locals 1

    .line 19
    sget-object v0, Lcom/gpc/aws/auth/SigningAlgorithm;->$VALUES:[Lcom/gpc/aws/auth/SigningAlgorithm;

    invoke-virtual {v0}, [Lcom/gpc/aws/auth/SigningAlgorithm;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/auth/SigningAlgorithm;

    return-object v0
.end method
