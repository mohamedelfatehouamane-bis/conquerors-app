.class public final enum Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PanelType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

.field public static final enum NeedConfirm:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

.field public static final enum Normal:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    const-string v1, "Normal"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->Normal:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    .line 6
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    const-string v1, "NeedConfirm"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->NeedConfirm:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    .line 7
    invoke-static {}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->a()[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->$VALUES:[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
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

.method public static synthetic a()[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;
    .locals 3

    const/4 v0, 0x2

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->Normal:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->NeedConfirm:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->$VALUES:[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    invoke-virtual {v0}, [Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipPanel$PanelType;

    return-object v0
.end method
