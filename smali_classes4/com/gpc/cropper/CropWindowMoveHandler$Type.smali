.class public final enum Lcom/gpc/cropper/CropWindowMoveHandler$Type;
.super Ljava/lang/Enum;
.source "CropWindowMoveHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/CropWindowMoveHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/cropper/CropWindowMoveHandler$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum BOTTOM:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum BOTTOM_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum BOTTOM_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum TOP:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum TOP_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

.field public static final enum TOP_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;


# direct methods
.method private static synthetic $values()[Lcom/gpc/cropper/CropWindowMoveHandler$Type;
    .locals 3

    const/16 v0, 0x9

    .line 774
    new-array v0, v0, [Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 775
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "TOP_LEFT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 776
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "TOP_RIGHT"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 777
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "BOTTOM_LEFT"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 778
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "BOTTOM_RIGHT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM_RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 779
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "LEFT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->LEFT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 780
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "TOP"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->TOP:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 781
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "RIGHT"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->RIGHT:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 782
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "BOTTOM"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->BOTTOM:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 783
    new-instance v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    const-string v1, "CENTER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->CENTER:Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    .line 774
    invoke-static {}, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->$values()[Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    move-result-object v0

    sput-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->$VALUES:[Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 774
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/cropper/CropWindowMoveHandler$Type;
    .locals 1

    .line 774
    const-class v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object p0
.end method

.method public static values()[Lcom/gpc/cropper/CropWindowMoveHandler$Type;
    .locals 1

    .line 774
    sget-object v0, Lcom/gpc/cropper/CropWindowMoveHandler$Type;->$VALUES:[Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    invoke-virtual {v0}, [Lcom/gpc/cropper/CropWindowMoveHandler$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/cropper/CropWindowMoveHandler$Type;

    return-object v0
.end method
