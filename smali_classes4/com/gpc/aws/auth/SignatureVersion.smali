.class public final enum Lcom/gpc/aws/auth/SignatureVersion;
.super Ljava/lang/Enum;
.source "SignatureVersion.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/auth/SignatureVersion;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/auth/SignatureVersion;

.field public static final enum V1:Lcom/gpc/aws/auth/SignatureVersion;

.field public static final enum V2:Lcom/gpc/aws/auth/SignatureVersion;


# instance fields
.field private value:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 24
    new-instance v0, Lcom/gpc/aws/auth/SignatureVersion;

    const-string v1, "1"

    const-string v2, "V1"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gpc/aws/auth/SignatureVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/auth/SignatureVersion;->V1:Lcom/gpc/aws/auth/SignatureVersion;

    .line 27
    new-instance v1, Lcom/gpc/aws/auth/SignatureVersion;

    const-string v2, "2"

    const-string v4, "V2"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gpc/aws/auth/SignatureVersion;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/auth/SignatureVersion;->V2:Lcom/gpc/aws/auth/SignatureVersion;

    const/4 v2, 0x2

    .line 21
    new-array v2, v2, [Lcom/gpc/aws/auth/SignatureVersion;

    aput-object v0, v2, v3

    aput-object v1, v2, v5

    sput-object v2, Lcom/gpc/aws/auth/SignatureVersion;->$VALUES:[Lcom/gpc/aws/auth/SignatureVersion;

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

    .line 31
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 32
    iput-object p3, p0, Lcom/gpc/aws/auth/SignatureVersion;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/auth/SignatureVersion;
    .locals 1

    .line 21
    const-class v0, Lcom/gpc/aws/auth/SignatureVersion;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/auth/SignatureVersion;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/auth/SignatureVersion;
    .locals 1

    .line 21
    sget-object v0, Lcom/gpc/aws/auth/SignatureVersion;->$VALUES:[Lcom/gpc/aws/auth/SignatureVersion;

    invoke-virtual {v0}, [Lcom/gpc/aws/auth/SignatureVersion;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/auth/SignatureVersion;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/gpc/aws/auth/SignatureVersion;->value:Ljava/lang/String;

    return-object v0
.end method
