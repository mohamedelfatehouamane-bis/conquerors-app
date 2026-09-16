.class public final enum Lcom/gpc/sdk/utils/common/webview/WebState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/utils/common/webview/WebState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/utils/common/webview/WebState;

.field public static final enum ERROR:Lcom/gpc/sdk/utils/common/webview/WebState;

.field public static final enum LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

.field public static final enum SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebState;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/utils/common/webview/WebState;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/utils/common/webview/WebState;

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebState;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/utils/common/webview/WebState;->SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebState;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/WebState;

    const-string v1, "LOADING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/utils/common/webview/WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->LOADING:Lcom/gpc/sdk/utils/common/webview/WebState;

    .line 3
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/WebState;

    const-string v1, "ERROR"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/utils/common/webview/WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->ERROR:Lcom/gpc/sdk/utils/common/webview/WebState;

    .line 5
    new-instance v0, Lcom/gpc/sdk/utils/common/webview/WebState;

    const-string v1, "SUCCESS"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/utils/common/webview/WebState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->SUCCESS:Lcom/gpc/sdk/utils/common/webview/WebState;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/utils/common/webview/WebState;->$values()[Lcom/gpc/sdk/utils/common/webview/WebState;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->$VALUES:[Lcom/gpc/sdk/utils/common/webview/WebState;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/utils/common/webview/WebState;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/utils/common/webview/WebState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/utils/common/webview/WebState;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/utils/common/webview/WebState;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/utils/common/webview/WebState;->$VALUES:[Lcom/gpc/sdk/utils/common/webview/WebState;

    invoke-virtual {v0}, [Lcom/gpc/sdk/utils/common/webview/WebState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/utils/common/webview/WebState;

    return-object v0
.end method
