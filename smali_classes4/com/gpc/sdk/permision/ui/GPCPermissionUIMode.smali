.class public final enum Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

.field public static final enum CUSTOM:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

.field public static final enum DEFAULT:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;


# direct methods
.method private static synthetic $values()[Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    sget-object v1, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->DEFAULT:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->CUSTOM:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->DEFAULT:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    .line 3
    new-instance v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    const-string v1, "CUSTOM"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->CUSTOM:Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    .line 4
    invoke-static {}, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->$values()[Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->$VALUES:[Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

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

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->$VALUES:[Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    invoke-virtual {v0}, [Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/permision/ui/GPCPermissionUIMode;

    return-object v0
.end method
