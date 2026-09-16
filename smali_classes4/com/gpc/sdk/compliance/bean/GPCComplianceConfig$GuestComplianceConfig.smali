.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "GuestComplianceConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;


# instance fields
.field public a:Z

.field public b:Ljava/lang/String;

.field public c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

.field public d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

.field public e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final getAdvanceNotice()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getDurationAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    return-object v0
.end method

.method public final getOn()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->a:Z

    return v0
.end method

.method public final getPaymentCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    return-object v0
.end method

.method public final getPeriodAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    return-object v0
.end method

.method public final setAdvanceNotice(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->b:Ljava/lang/String;

    return-void
.end method

.method public final setDurationAllowed(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    return-void
.end method

.method public final setOn(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->a:Z

    return-void
.end method

.method public final setPaymentCap(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    return-void
.end method

.method public final setPeriodAllowed(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GuestComplianceConfig(on="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", periodAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->c:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", durationAllowed="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->d:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", paymentCap="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->e:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
