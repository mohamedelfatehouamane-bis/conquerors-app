.class public final enum Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "RealnameMode"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;

.field public static final enum MODE_FORCE:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

.field public static final enum MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    const-string v1, "MODE_GRACEFULLY"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    .line 2
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    const-string v1, "MODE_FORCE"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_FORCE:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-static {}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->a()[Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    move-result-object v0

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->$VALUES:[Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;

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

.method public static final synthetic a()[Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
    .locals 3

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_FORCE:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
    .locals 1

    const-class v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-object p0
.end method

.method public static values()[Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
    .locals 1

    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->$VALUES:[Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-object v0
.end method
