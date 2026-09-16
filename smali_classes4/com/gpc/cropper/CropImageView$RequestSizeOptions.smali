.class public final enum Lcom/gpc/cropper/CropImageView$RequestSizeOptions;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RequestSizeOptions"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/cropper/CropImageView$RequestSizeOptions;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field public static final enum NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_EXACT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_FIT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field public static final enum RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

.field public static final enum SAMPLING:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;


# direct methods
.method private static synthetic $values()[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;
    .locals 3

    const/4 v0, 0x5

    .line 1998
    new-array v0, v0, [Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 2003
    new-instance v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->NONE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 2012
    new-instance v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const-string v1, "SAMPLING"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->SAMPLING:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 2020
    new-instance v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const-string v1, "RESIZE_INSIDE"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_INSIDE:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 2029
    new-instance v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const-string v1, "RESIZE_FIT"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_FIT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 2036
    new-instance v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    const-string v1, "RESIZE_EXACT"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->RESIZE_EXACT:Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    .line 1998
    invoke-static {}, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->$values()[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    move-result-object v0

    sput-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->$VALUES:[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1998
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/cropper/CropImageView$RequestSizeOptions;
    .locals 1

    .line 1998
    const-class v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    return-object p0
.end method

.method public static values()[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;
    .locals 1

    .line 1998
    sget-object v0, Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->$VALUES:[Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    invoke-virtual {v0}, [Lcom/gpc/cropper/CropImageView$RequestSizeOptions;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/cropper/CropImageView$RequestSizeOptions;

    return-object v0
.end method
