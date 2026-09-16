.class public final enum Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

.field public static final enum Disable:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

.field public static final enum Minimized:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

.field public static final enum Standard:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    const-string v1, "Disable"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Disable:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    new-instance v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    const-string v1, "Standard"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Standard:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    new-instance v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    const-string v1, "Minimized"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Minimized:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    .line 2
    invoke-static {}, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->a()[Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->$VALUES:[Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->value:I

    return-void
.end method

.method public static synthetic a()[Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    sget-object v1, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Disable:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Standard:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Minimized:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static getByValue(I)Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;
    .locals 1

    if-nez p0, :cond_0

    .line 1
    sget-object p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Disable:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    .line 3
    sget-object p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Standard:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-object p0

    .line 5
    :cond_1
    sget-object p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->Minimized:Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->$VALUES:[Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    invoke-virtual {v0}, [Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/apprating/bean/GPCAppRatingMode;->value:I

    return v0
.end method
