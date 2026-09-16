.class public final enum Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "GPCIMStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

.field public static final enum Both:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

.field public static final enum Copy:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

.field public static final enum Link:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    const-string v1, "Copy"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Copy:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    .line 5
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    const-string v1, "Link"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Link:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    .line 9
    new-instance v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    const-string v1, "Both"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Both:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    .line 10
    invoke-static {}, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->a()[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->$VALUES:[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

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

.method public static synthetic a()[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;
    .locals 3

    const/4 v0, 0x3

    .line 1
    new-array v0, v0, [Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Copy:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Link:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->Both:Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;
    .locals 1

    .line 1
    const-class v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;
    .locals 1

    .line 1
    sget-object v0, Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->$VALUES:[Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    invoke-virtual {v0}, [Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/player/relationship/bean/GPCPlayerRelationshipIM$GPCIMStyle;

    return-object v0
.end method
