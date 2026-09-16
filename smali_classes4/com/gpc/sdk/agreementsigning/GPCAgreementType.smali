.class public final Lcom/gpc/sdk/agreementsigning/GPCAgreementType;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/agreementsigning/GPCAgreementType$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementType$Companion;

.field public static final GPCAgreementPersonalInformationCollection:I = 0x64

.field public static final GPCAgreementPrivacyPolicy:I = 0x2

.field public static final GPCAgreementTermsOfService:I = 0x1

.field public static final GPCAgreementTermsOfSubscription:I = 0x3


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementType$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/agreementsigning/GPCAgreementType$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/agreementsigning/GPCAgreementType;->Companion:Lcom/gpc/sdk/agreementsigning/GPCAgreementType$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
