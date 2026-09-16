.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;

.field public static final TAG:Ljava/lang/String; = "GPCComplianceConfig"


# instance fields
.field public a:Z

.field public b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

.field public c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;

.field public d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

.field public e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getGuestComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    return-object v0
.end method

.method public final getMinorsComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    return-object v0
.end method

.method public final getOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->a:Z

    return v0
.end method

.method public final getRealNameConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

    return-object v0
.end method

.method public final getVerifyingConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;

    return-object v0
.end method

.method public final setGuestComplianceConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    return-void
.end method

.method public final setMinorsComplianceConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    return-void
.end method

.method public final setOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->a:Z

    return-void
.end method

.method public final setRealNameConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

    return-void
.end method

.method public final setVerifyingConfig(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCComplianceConfig(on="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", realNameConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", guestComplianceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", minorsComplianceConfig="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
