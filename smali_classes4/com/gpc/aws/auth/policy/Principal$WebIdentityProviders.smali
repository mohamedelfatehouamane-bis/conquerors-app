.class public final enum Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;
.super Ljava/lang/Enum;
.source "Principal.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/aws/auth/policy/Principal;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WebIdentityProviders"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum AllProviders:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum Amazon:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum Facebook:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

.field public static final enum Google:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;


# instance fields
.field private webIdentityProvider:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    .line 207
    new-instance v0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    const-string v1, "graph.facebook.com"

    const-string v2, "Facebook"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->Facebook:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    .line 210
    new-instance v1, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    const-string v2, "accounts.google.com"

    const-string v4, "Google"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v2}, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->Google:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    .line 213
    new-instance v2, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    const-string v4, "www.amazon.com"

    const-string v6, "Amazon"

    const/4 v7, 0x2

    invoke-direct {v2, v6, v7, v4}, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->Amazon:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    .line 216
    new-instance v4, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    const-string v6, "*"

    const-string v8, "AllProviders"

    const/4 v9, 0x3

    invoke-direct {v4, v8, v9, v6}, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v4, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->AllProviders:Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    const/4 v6, 0x4

    .line 204
    new-array v6, v6, [Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    aput-object v0, v6, v3

    aput-object v1, v6, v5

    aput-object v2, v6, v7

    aput-object v4, v6, v9

    sput-object v6, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->$VALUES:[Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

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

    .line 223
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 224
    iput-object p3, p0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->webIdentityProvider:Ljava/lang/String;

    return-void
.end method

.method public static fromString(Ljava/lang/String;)Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;
    .locals 5

    if-eqz p0, :cond_1

    .line 239
    invoke-static {}, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->values()[Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 240
    invoke-virtual {v3}, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->getWebIdentityProvider()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;
    .locals 1

    .line 204
    const-class v0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    return-object p0
.end method

.method public static values()[Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;
    .locals 1

    .line 204
    sget-object v0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->$VALUES:[Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    invoke-virtual {v0}, [Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;

    return-object v0
.end method


# virtual methods
.method public getWebIdentityProvider()Ljava/lang/String;
    .locals 1

    .line 228
    iget-object v0, p0, Lcom/gpc/aws/auth/policy/Principal$WebIdentityProviders;->webIdentityProvider:Ljava/lang/String;

    return-object v0
.end method
