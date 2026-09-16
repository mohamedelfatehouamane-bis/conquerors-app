.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "MinorsComplianceConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

.field public d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

.field public e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdvanceNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    return-object v0
.end method

.method public final getOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->a:Z

    return v0
.end method

.method public final getPeriodAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    return-object v0
.end method

.method public final getStagedPaymentCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;

    return-object v0
.end method

.method public final setAdvanceNotice(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final setDurationAllowed(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    return-void
.end method

.method public final setOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->a:Z

    return-void
.end method

.method public final setPeriodAllowed(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    return-void
.end method

.method public final setStagedPaymentCap(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "MinorsComplianceConfig(on="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", timeAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", stagedLimit="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
