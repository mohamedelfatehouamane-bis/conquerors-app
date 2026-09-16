.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Cap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;

.field public static final DISABLE:D = -1.0

.field public static final UNLIMITED:D


# instance fields
.field public a:D

.field public b:D

.field public c:D

.field public d:D


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getDaily()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->b:D

    return-wide v0
.end method

.method public final getMonthly()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->d:D

    return-wide v0
.end method

.method public final getSingle()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->a:D

    return-wide v0
.end method

.method public final getWeekly()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->c:D

    return-wide v0
.end method

.method public final setDaily(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->b:D

    return-void
.end method

.method public final setMonthly(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->d:D

    return-void
.end method

.method public final setSingle(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->a:D

    return-void
.end method

.method public final setWeekly(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->c:D

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Purchase(single="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->a:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", daily="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->b:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", weekly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->c:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ", monthly="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->d:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
