.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue$Companion;

.field public static final GPCAgreementSigningStatusNotNeedRequest:I = 0x4

.field public static final GPCAgreementSigningStatusShouldRenew:I = 0x2

.field public static final GPCAgreementSigningStatusShouldRenewButPostponed:I = 0x3

.field public static final GPCAgreementSigningStatusSigned:I = 0x1


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue;->Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementSigningStatusValue$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
