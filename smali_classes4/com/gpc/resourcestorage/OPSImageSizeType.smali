.class public final enum Lcom/gpc/resourcestorage/OPSImageSizeType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/resourcestorage/OPSImageSizeType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/resourcestorage/OPSImageSizeType;

.field public static final enum OPSImageSizeLarge:Lcom/gpc/resourcestorage/OPSImageSizeType;

.field public static final enum OPSImageSizeMedium:Lcom/gpc/resourcestorage/OPSImageSizeType;

.field public static final enum OPSImageSizeOriginal:Lcom/gpc/resourcestorage/OPSImageSizeType;

.field public static final enum OPSImageSizeSmall:Lcom/gpc/resourcestorage/OPSImageSizeType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/resourcestorage/OPSImageSizeType;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/resourcestorage/OPSImageSizeType;

    sget-object v1, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeOriginal:Lcom/gpc/resourcestorage/OPSImageSizeType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeSmall:Lcom/gpc/resourcestorage/OPSImageSizeType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeMedium:Lcom/gpc/resourcestorage/OPSImageSizeType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeLarge:Lcom/gpc/resourcestorage/OPSImageSizeType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/OPSImageSizeType;

    const-string v1, "OPSImageSizeOriginal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/OPSImageSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeOriginal:Lcom/gpc/resourcestorage/OPSImageSizeType;

    .line 5
    new-instance v0, Lcom/gpc/resourcestorage/OPSImageSizeType;

    const-string v1, "OPSImageSizeSmall"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/OPSImageSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeSmall:Lcom/gpc/resourcestorage/OPSImageSizeType;

    .line 9
    new-instance v0, Lcom/gpc/resourcestorage/OPSImageSizeType;

    const-string v1, "OPSImageSizeMedium"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/OPSImageSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeMedium:Lcom/gpc/resourcestorage/OPSImageSizeType;

    .line 13
    new-instance v0, Lcom/gpc/resourcestorage/OPSImageSizeType;

    const-string v1, "OPSImageSizeLarge"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/OPSImageSizeType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->OPSImageSizeLarge:Lcom/gpc/resourcestorage/OPSImageSizeType;

    .line 14
    invoke-static {}, Lcom/gpc/resourcestorage/OPSImageSizeType;->$values()[Lcom/gpc/resourcestorage/OPSImageSizeType;

    move-result-object v0

    sput-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->$VALUES:[Lcom/gpc/resourcestorage/OPSImageSizeType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/resourcestorage/OPSImageSizeType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/resourcestorage/OPSImageSizeType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/resourcestorage/OPSImageSizeType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/resourcestorage/OPSImageSizeType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/resourcestorage/OPSImageSizeType;->$VALUES:[Lcom/gpc/resourcestorage/OPSImageSizeType;

    invoke-virtual {v0}, [Lcom/gpc/resourcestorage/OPSImageSizeType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/resourcestorage/OPSImageSizeType;

    return-object v0
.end method
