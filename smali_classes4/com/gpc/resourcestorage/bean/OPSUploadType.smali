.class public final enum Lcom/gpc/resourcestorage/bean/OPSUploadType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/resourcestorage/bean/OPSUploadType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/resourcestorage/bean/OPSUploadType;

.field public static final enum Image:Lcom/gpc/resourcestorage/bean/OPSUploadType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 3

    const/4 v0, 0x1

    .line 1
    new-array v0, v0, [Lcom/gpc/resourcestorage/bean/OPSUploadType;

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSUploadType;->Image:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSUploadType;

    const-string v1, "Image"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/bean/OPSUploadType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadType;->Image:Lcom/gpc/resourcestorage/bean/OPSUploadType;

    .line 2
    invoke-static {}, Lcom/gpc/resourcestorage/bean/OPSUploadType;->$values()[Lcom/gpc/resourcestorage/bean/OPSUploadType;

    move-result-object v0

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadType;->$VALUES:[Lcom/gpc/resourcestorage/bean/OPSUploadType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/resourcestorage/bean/OPSUploadType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadType;->$VALUES:[Lcom/gpc/resourcestorage/bean/OPSUploadType;

    invoke-virtual {v0}, [Lcom/gpc/resourcestorage/bean/OPSUploadType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/resourcestorage/bean/OPSUploadType;

    return-object v0
.end method
