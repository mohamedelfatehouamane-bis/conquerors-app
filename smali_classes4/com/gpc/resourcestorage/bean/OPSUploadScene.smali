.class public final enum Lcom/gpc/resourcestorage/bean/OPSUploadScene;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/resourcestorage/bean/OPSUploadScene;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/resourcestorage/bean/OPSUploadScene;

.field public static final enum AvatarUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

.field public static final enum ChatImageUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

.field public static final enum None:Lcom/gpc/resourcestorage/bean/OPSUploadScene;


# instance fields
.field private code:I


# direct methods
.method private static synthetic $values()[Lcom/gpc/resourcestorage/bean/OPSUploadScene;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->None:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->AvatarUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->ChatImageUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    const/4 v1, 0x0

    const/4 v2, -0x1

    const-string v3, "None"

    invoke-direct {v0, v3, v1, v2}, Lcom/gpc/resourcestorage/bean/OPSUploadScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->None:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    .line 2
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    const-string v1, "AvatarUpload"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/resourcestorage/bean/OPSUploadScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->AvatarUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    .line 3
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    const-string v1, "ChatImageUpload"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2, v2}, Lcom/gpc/resourcestorage/bean/OPSUploadScene;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->ChatImageUpload:Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    .line 4
    invoke-static {}, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->$values()[Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    move-result-object v0

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->$VALUES:[Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->code:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/resourcestorage/bean/OPSUploadScene;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    return-object p0
.end method

.method public static values()[Lcom/gpc/resourcestorage/bean/OPSUploadScene;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->$VALUES:[Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    invoke-virtual {v0}, [Lcom/gpc/resourcestorage/bean/OPSUploadScene;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/resourcestorage/bean/OPSUploadScene;

    return-object v0
.end method


# virtual methods
.method public getCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/resourcestorage/bean/OPSUploadScene;->code:I

    return v0
.end method
