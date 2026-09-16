.class public final enum Lcom/appsflyer/internal/AFe1uSDK;
.super Ljava/lang/Enum;
.source ""


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appsflyer/internal/AFe1uSDK;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u000e\n\u0002\u0008\r\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0005\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\u0011\u0010\u0003\u001a\u00020\u0002X\u0007\u00a2\u0006\u0006\n\u0004\u0008\u0003\u0010\u0004j\u0002\u0008\u0008j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000cj\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000f"
    }
    d2 = {
        "Lcom/appsflyer/internal/AFe1uSDK;",
        "",
        "",
        "AFInAppEventParameterName",
        "Ljava/lang/String;",
        "p0",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "values",
        "AFInAppEventType",
        "valueOf",
        "AFKeystoreWrapper",
        "registerClient",
        "unregisterClient",
        "e",
        "d"
    }
    k = 0x1
    mv = {
        0x1,
        0x6,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final enum AFInAppEventType:Lcom/appsflyer/internal/AFe1uSDK;

.field private static enum AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1uSDK;

.field private static final synthetic AFLogger:[Lcom/appsflyer/internal/AFe1uSDK;

.field private static enum d:Lcom/appsflyer/internal/AFe1uSDK;

.field private static enum e:Lcom/appsflyer/internal/AFe1uSDK;

.field private static enum registerClient:Lcom/appsflyer/internal/AFe1uSDK;

.field private static enum unregisterClient:Lcom/appsflyer/internal/AFe1uSDK;

.field public static final enum valueOf:Lcom/appsflyer/internal/AFe1uSDK;

.field private static enum values:Lcom/appsflyer/internal/AFe1uSDK;


# instance fields
.field public final AFInAppEventParameterName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 4
    new-instance v0, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v1, "text/plain"

    const-string v2, "TEXT"

    const/4 v3, 0x0

    invoke-direct {v0, v2, v3, v1}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1uSDK;->values:Lcom/appsflyer/internal/AFe1uSDK;

    .line 5
    new-instance v0, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v1, "application/json"

    const-string v2, "JSON"

    const/4 v4, 0x1

    invoke-direct {v0, v2, v4, v1}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/appsflyer/internal/AFe1uSDK;->AFInAppEventType:Lcom/appsflyer/internal/AFe1uSDK;

    .line 6
    new-instance v1, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v2, "application/octet-stream"

    const-string v5, "OCTET_STREAM"

    const/4 v6, 0x2

    invoke-direct {v1, v5, v6, v2}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/appsflyer/internal/AFe1uSDK;->valueOf:Lcom/appsflyer/internal/AFe1uSDK;

    .line 7
    new-instance v2, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v5, "application/xml"

    const-string v7, "XML"

    const/4 v8, 0x3

    invoke-direct {v2, v7, v8, v5}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFe1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1uSDK;

    .line 8
    new-instance v2, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v5, "text/html"

    const-string v7, "HTML"

    const/4 v9, 0x4

    invoke-direct {v2, v7, v9, v5}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFe1uSDK;->registerClient:Lcom/appsflyer/internal/AFe1uSDK;

    .line 9
    new-instance v2, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v5, "application/x-www-form-urlencoded"

    const-string v7, "FORM"

    const/4 v10, 0x5

    invoke-direct {v2, v7, v10, v5}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFe1uSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1uSDK;

    .line 10
    new-instance v2, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v5, "image/jpeg"

    const-string v7, "IMAGE_JPEG"

    const/4 v11, 0x6

    invoke-direct {v2, v7, v11, v5}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFe1uSDK;->e:Lcom/appsflyer/internal/AFe1uSDK;

    .line 11
    new-instance v2, Lcom/appsflyer/internal/AFe1uSDK;

    const-string v5, "image/png"

    const-string v7, "IMAGE_PNG"

    const/4 v12, 0x7

    invoke-direct {v2, v7, v12, v5}, Lcom/appsflyer/internal/AFe1uSDK;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v2, Lcom/appsflyer/internal/AFe1uSDK;->d:Lcom/appsflyer/internal/AFe1uSDK;

    const/16 v5, 0x8

    .line 1000
    new-array v5, v5, [Lcom/appsflyer/internal/AFe1uSDK;

    sget-object v7, Lcom/appsflyer/internal/AFe1uSDK;->values:Lcom/appsflyer/internal/AFe1uSDK;

    aput-object v7, v5, v3

    aput-object v0, v5, v4

    aput-object v1, v5, v6

    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->AFKeystoreWrapper:Lcom/appsflyer/internal/AFe1uSDK;

    aput-object v0, v5, v8

    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->registerClient:Lcom/appsflyer/internal/AFe1uSDK;

    aput-object v0, v5, v9

    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->unregisterClient:Lcom/appsflyer/internal/AFe1uSDK;

    aput-object v0, v5, v10

    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->e:Lcom/appsflyer/internal/AFe1uSDK;

    aput-object v0, v5, v11

    aput-object v2, v5, v12

    .line 11
    sput-object v5, Lcom/appsflyer/internal/AFe1uSDK;->AFLogger:[Lcom/appsflyer/internal/AFe1uSDK;

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

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/appsflyer/internal/AFe1uSDK;->AFInAppEventParameterName:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appsflyer/internal/AFe1uSDK;
    .locals 1

    const-class v0, Lcom/appsflyer/internal/AFe1uSDK;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appsflyer/internal/AFe1uSDK;

    return-object p0
.end method

.method public static values()[Lcom/appsflyer/internal/AFe1uSDK;
    .locals 1

    sget-object v0, Lcom/appsflyer/internal/AFe1uSDK;->AFLogger:[Lcom/appsflyer/internal/AFe1uSDK;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appsflyer/internal/AFe1uSDK;

    return-object v0
.end method
