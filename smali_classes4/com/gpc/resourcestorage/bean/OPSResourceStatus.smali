.class public final enum Lcom/gpc/resourcestorage/bean/OPSResourceStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/resourcestorage/bean/OPSResourceStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

.field public static final enum Denied:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

.field public static final enum Success:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

.field public static final enum UnderReview:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

.field public static final enum Uploading:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;


# direct methods
.method private static synthetic $values()[Lcom/gpc/resourcestorage/bean/OPSResourceStatus;
    .locals 3

    const/4 v0, 0x4

    .line 1
    new-array v0, v0, [Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Uploading:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->UnderReview:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Success:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Denied:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const-string v1, "Uploading"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Uploading:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    .line 2
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const-string v1, "UnderReview"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->UnderReview:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    .line 3
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const-string v1, "Success"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Success:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    .line 4
    new-instance v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    const-string v1, "Denied"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->Denied:Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    .line 5
    invoke-static {}, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->$values()[Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    move-result-object v0

    sput-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->$VALUES:[Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/resourcestorage/bean/OPSResourceStatus;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-object p0
.end method

.method public static values()[Lcom/gpc/resourcestorage/bean/OPSResourceStatus;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->$VALUES:[Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    invoke-virtual {v0}, [Lcom/gpc/resourcestorage/bean/OPSResourceStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/resourcestorage/bean/OPSResourceStatus;

    return-object v0
.end method
