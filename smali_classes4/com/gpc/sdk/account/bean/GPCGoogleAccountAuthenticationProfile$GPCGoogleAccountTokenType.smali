.class public final enum Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCGoogleAccountTokenType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

.field public static final enum ACCESS_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

.field public static final enum ID_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;


# instance fields
.field private name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    const/4 v1, 0x0

    const-string v2, "id_token"

    const-string v3, "ID_TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->ID_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    new-instance v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    const/4 v1, 0x1

    const-string v2, "access_token"

    const-string v3, "ACCESS_TOKEN"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->ACCESS_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->a()[Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->$VALUES:[Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
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
    iput-object p3, p0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->name:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    sget-object v1, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->ID_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->ACCESS_TOKEN:Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->$VALUES:[Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;

    return-object v0
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/account/bean/GPCGoogleAccountAuthenticationProfile$GPCGoogleAccountTokenType;->name:Ljava/lang/String;

    return-object v0
.end method
