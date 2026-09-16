.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "DurationAllowed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;

.field public static final UNLIMITED:D


# instance fields
.field public a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

.field public b:D

.field public c:D

.field public d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    const/4 v0, 0x1

    .line 6
    iput v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->d:I

    return-void
.end method


# virtual methods
.method public final getGeneral()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->b:D

    return-wide v0
.end method

.method public final getLegalHolidays()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->c:D

    return-wide v0
.end method

.method public final getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->d:I

    return v0
.end method

.method public final getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-object v0
.end method

.method public final setGeneral(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->b:D

    return-void
.end method

.method public final setLegalHolidays(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->c:D

    return-void
.end method

.method public final setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->d:I

    return-void
.end method

.method public final setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DurationAllowed(text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', general="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", legalHolidays="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", rotation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->d:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
