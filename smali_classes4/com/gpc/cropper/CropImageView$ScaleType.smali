.class public final enum Lcom/gpc/cropper/CropImageView$ScaleType;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ScaleType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/cropper/CropImageView$ScaleType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/cropper/CropImageView$ScaleType;

.field public static final enum CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

.field public static final enum CENTER_CROP:Lcom/gpc/cropper/CropImageView$ScaleType;

.field public static final enum CENTER_INSIDE:Lcom/gpc/cropper/CropImageView$ScaleType;

.field public static final enum FIT_CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/cropper/CropImageView$ScaleType;
    .locals 3

    const/4 v0, 0x4

    .line 1934
    new-array v0, v0, [Lcom/gpc/cropper/CropImageView$ScaleType;

    sget-object v1, Lcom/gpc/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/gpc/cropper/CropImageView$ScaleType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/gpc/cropper/CropImageView$ScaleType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1941
    new-instance v0, Lcom/gpc/cropper/CropImageView$ScaleType;

    const-string v1, "FIT_CENTER"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$ScaleType;->FIT_CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 1948
    new-instance v0, Lcom/gpc/cropper/CropImageView$ScaleType;

    const-string v1, "CENTER"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 1956
    new-instance v0, Lcom/gpc/cropper/CropImageView$ScaleType;

    const-string v1, "CENTER_CROP"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER_CROP:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 1966
    new-instance v0, Lcom/gpc/cropper/CropImageView$ScaleType;

    const-string v1, "CENTER_INSIDE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$ScaleType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$ScaleType;->CENTER_INSIDE:Lcom/gpc/cropper/CropImageView$ScaleType;

    .line 1934
    invoke-static {}, Lcom/gpc/cropper/CropImageView$ScaleType;->$values()[Lcom/gpc/cropper/CropImageView$ScaleType;

    move-result-object v0

    sput-object v0, Lcom/gpc/cropper/CropImageView$ScaleType;->$VALUES:[Lcom/gpc/cropper/CropImageView$ScaleType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1934
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/cropper/CropImageView$ScaleType;
    .locals 1

    .line 1934
    const-class v0, Lcom/gpc/cropper/CropImageView$ScaleType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/cropper/CropImageView$ScaleType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/cropper/CropImageView$ScaleType;
    .locals 1

    .line 1934
    sget-object v0, Lcom/gpc/cropper/CropImageView$ScaleType;->$VALUES:[Lcom/gpc/cropper/CropImageView$ScaleType;

    invoke-virtual {v0}, [Lcom/gpc/cropper/CropImageView$ScaleType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/cropper/CropImageView$ScaleType;

    return-object v0
.end method
