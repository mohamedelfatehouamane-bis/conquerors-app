.class public final enum Lcom/gpc/sdk/push/GPCPushType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/push/GPCPushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/push/GPCPushType;

.field public static final enum ADM:Lcom/gpc/sdk/push/GPCPushType;

.field public static final enum FCM:Lcom/gpc/sdk/push/GPCPushType;

.field public static final enum GCM:Lcom/gpc/sdk/push/GPCPushType;

.field public static final enum GETUI:Lcom/gpc/sdk/push/GPCPushType;

.field public static final enum GETUI_NEW:Lcom/gpc/sdk/push/GPCPushType;


# instance fields
.field private typeValue:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/push/GPCPushType;

    const/4 v1, 0x0

    const-string v2, "6"

    const-string v3, "ADM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/push/GPCPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/push/GPCPushType;->ADM:Lcom/gpc/sdk/push/GPCPushType;

    new-instance v0, Lcom/gpc/sdk/push/GPCPushType;

    const/4 v1, 0x1

    const-string v2, "8"

    const-string v3, "FCM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/push/GPCPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/push/GPCPushType;->FCM:Lcom/gpc/sdk/push/GPCPushType;

    new-instance v0, Lcom/gpc/sdk/push/GPCPushType;

    const/4 v1, 0x2

    const-string v2, "3"

    const-string v3, "GCM"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/push/GPCPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/push/GPCPushType;->GCM:Lcom/gpc/sdk/push/GPCPushType;

    new-instance v0, Lcom/gpc/sdk/push/GPCPushType;

    const/4 v1, 0x3

    const-string v2, "7"

    const-string v3, "GETUI"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/push/GPCPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/push/GPCPushType;->GETUI:Lcom/gpc/sdk/push/GPCPushType;

    new-instance v0, Lcom/gpc/sdk/push/GPCPushType;

    const/4 v1, 0x4

    const-string v2, "11"

    const-string v3, "GETUI_NEW"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/sdk/push/GPCPushType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lcom/gpc/sdk/push/GPCPushType;->GETUI_NEW:Lcom/gpc/sdk/push/GPCPushType;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/push/GPCPushType;->a()[Lcom/gpc/sdk/push/GPCPushType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/push/GPCPushType;->$VALUES:[Lcom/gpc/sdk/push/GPCPushType;

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
    iput-object p3, p0, Lcom/gpc/sdk/push/GPCPushType;->typeValue:Ljava/lang/String;

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/push/GPCPushType;
    .locals 3

    const/4 v0, 0x5

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/push/GPCPushType;

    sget-object v1, Lcom/gpc/sdk/push/GPCPushType;->ADM:Lcom/gpc/sdk/push/GPCPushType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/GPCPushType;->FCM:Lcom/gpc/sdk/push/GPCPushType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/GPCPushType;->GCM:Lcom/gpc/sdk/push/GPCPushType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/GPCPushType;->GETUI:Lcom/gpc/sdk/push/GPCPushType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/GPCPushType;->GETUI_NEW:Lcom/gpc/sdk/push/GPCPushType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/push/GPCPushType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/push/GPCPushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/push/GPCPushType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/push/GPCPushType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/push/GPCPushType;->$VALUES:[Lcom/gpc/sdk/push/GPCPushType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/push/GPCPushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/push/GPCPushType;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCPushType;->typeValue:Ljava/lang/String;

    return-object v0
.end method
