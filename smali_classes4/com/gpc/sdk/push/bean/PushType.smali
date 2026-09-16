.class public final enum Lcom/gpc/sdk/push/bean/PushType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/push/bean/PushType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/push/bean/PushType;

.field public static final enum ADM:Lcom/gpc/sdk/push/bean/PushType;

.field public static final enum FCM:Lcom/gpc/sdk/push/bean/PushType;

.field public static final enum GETUI:Lcom/gpc/sdk/push/bean/PushType;

.field public static final enum NONE:Lcom/gpc/sdk/push/bean/PushType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/push/bean/PushType;

    const-string v1, "FCM"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/push/bean/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/push/bean/PushType;->FCM:Lcom/gpc/sdk/push/bean/PushType;

    .line 2
    new-instance v0, Lcom/gpc/sdk/push/bean/PushType;

    const-string v1, "GETUI"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/push/bean/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/push/bean/PushType;->GETUI:Lcom/gpc/sdk/push/bean/PushType;

    .line 3
    new-instance v0, Lcom/gpc/sdk/push/bean/PushType;

    const-string v1, "ADM"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/push/bean/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/push/bean/PushType;->ADM:Lcom/gpc/sdk/push/bean/PushType;

    .line 5
    new-instance v0, Lcom/gpc/sdk/push/bean/PushType;

    const-string v1, "NONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/push/bean/PushType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/push/bean/PushType;->NONE:Lcom/gpc/sdk/push/bean/PushType;

    .line 6
    invoke-static {}, Lcom/gpc/sdk/push/bean/PushType;->a()[Lcom/gpc/sdk/push/bean/PushType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/push/bean/PushType;->$VALUES:[Lcom/gpc/sdk/push/bean/PushType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[Lcom/gpc/sdk/push/bean/PushType;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/push/bean/PushType;

    sget-object v1, Lcom/gpc/sdk/push/bean/PushType;->FCM:Lcom/gpc/sdk/push/bean/PushType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/bean/PushType;->GETUI:Lcom/gpc/sdk/push/bean/PushType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/bean/PushType;->ADM:Lcom/gpc/sdk/push/bean/PushType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/push/bean/PushType;->NONE:Lcom/gpc/sdk/push/bean/PushType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/push/bean/PushType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/push/bean/PushType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/push/bean/PushType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/push/bean/PushType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/push/bean/PushType;->$VALUES:[Lcom/gpc/sdk/push/bean/PushType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/push/bean/PushType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/push/bean/PushType;

    return-object v0
.end method
