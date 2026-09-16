.class public final enum Lcom/gpc/operations/permision/GPCMediaPermissionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/operations/permision/GPCMediaPermissionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/operations/permision/GPCMediaPermissionType;

.field public static final enum IMAGE_AND_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

.field public static final enum ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

.field public static final enum ONLY_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;


# direct methods
.method private static synthetic $values()[Lcom/gpc/operations/permision/GPCMediaPermissionType;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/operations/permision/GPCMediaPermissionType;

    sget-object v1, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/operations/permision/GPCMediaPermissionType;->IMAGE_AND_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const-string v1, "ONLY_IMAGE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/permision/GPCMediaPermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_IMAGE:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    .line 3
    new-instance v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const-string v1, "ONLY_VIDEO"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/permision/GPCMediaPermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->ONLY_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    .line 5
    new-instance v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;

    const-string v1, "IMAGE_AND_VIDEO"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/permision/GPCMediaPermissionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->IMAGE_AND_VIDEO:Lcom/gpc/operations/permision/GPCMediaPermissionType;

    .line 6
    invoke-static {}, Lcom/gpc/operations/permision/GPCMediaPermissionType;->$values()[Lcom/gpc/operations/permision/GPCMediaPermissionType;

    move-result-object v0

    sput-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->$VALUES:[Lcom/gpc/operations/permision/GPCMediaPermissionType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/operations/permision/GPCMediaPermissionType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/operations/permision/GPCMediaPermissionType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/operations/permision/GPCMediaPermissionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/operations/permision/GPCMediaPermissionType;->$VALUES:[Lcom/gpc/operations/permision/GPCMediaPermissionType;

    invoke-virtual {v0}, [Lcom/gpc/operations/permision/GPCMediaPermissionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/operations/permision/GPCMediaPermissionType;

    return-object v0
.end method
