.class public final enum Lcom/gpc/cropper/CropImageView$CropShape;
.super Ljava/lang/Enum;
.source "CropImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/cropper/CropImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "CropShape"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/cropper/CropImageView$CropShape;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/cropper/CropImageView$CropShape;

.field public static final enum OVAL:Lcom/gpc/cropper/CropImageView$CropShape;

.field public static final enum RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;


# direct methods
.method private static synthetic $values()[Lcom/gpc/cropper/CropImageView$CropShape;
    .locals 3

    const/4 v0, 0x2

    .line 1922
    new-array v0, v0, [Lcom/gpc/cropper/CropImageView$CropShape;

    sget-object v1, Lcom/gpc/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/cropper/CropImageView$CropShape;->OVAL:Lcom/gpc/cropper/CropImageView$CropShape;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1923
    new-instance v0, Lcom/gpc/cropper/CropImageView$CropShape;

    const-string v1, "RECTANGLE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$CropShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$CropShape;->RECTANGLE:Lcom/gpc/cropper/CropImageView$CropShape;

    .line 1924
    new-instance v0, Lcom/gpc/cropper/CropImageView$CropShape;

    const-string v1, "OVAL"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/cropper/CropImageView$CropShape;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/cropper/CropImageView$CropShape;->OVAL:Lcom/gpc/cropper/CropImageView$CropShape;

    .line 1922
    invoke-static {}, Lcom/gpc/cropper/CropImageView$CropShape;->$values()[Lcom/gpc/cropper/CropImageView$CropShape;

    move-result-object v0

    sput-object v0, Lcom/gpc/cropper/CropImageView$CropShape;->$VALUES:[Lcom/gpc/cropper/CropImageView$CropShape;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1922
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/cropper/CropImageView$CropShape;
    .locals 1

    .line 1922
    const-class v0, Lcom/gpc/cropper/CropImageView$CropShape;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/cropper/CropImageView$CropShape;

    return-object p0
.end method

.method public static values()[Lcom/gpc/cropper/CropImageView$CropShape;
    .locals 1

    .line 1922
    sget-object v0, Lcom/gpc/cropper/CropImageView$CropShape;->$VALUES:[Lcom/gpc/cropper/CropImageView$CropShape;

    invoke-virtual {v0}, [Lcom/gpc/cropper/CropImageView$CropShape;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/cropper/CropImageView$CropShape;

    return-object v0
.end method
