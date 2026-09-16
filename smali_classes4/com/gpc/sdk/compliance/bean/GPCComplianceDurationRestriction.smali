.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;

.field public static final d:D

.field public static final e:I


# instance fields
.field public a:D

.field public b:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;

.field public c:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;

    const/4 v0, 0x1

    .line 1
    sput v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->e:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-wide v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->d:D

    iput-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->a:D

    .line 17
    sget v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->e:I

    iput v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->c:I

    return-void
.end method

.method public static final synthetic access$getROTATION_DEFAULT$cp()I
    .locals 1

    .line 1
    sget v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->e:I

    return v0
.end method

.method public static final synthetic access$getUNLIMITED$cp()D
    .locals 2

    .line 1
    sget-wide v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->d:D

    return-wide v0
.end method


# virtual methods
.method public final getDuration()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->a:D

    return-wide v0
.end method

.method public final getRotation()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->c:I

    return v0
.end method

.method public final getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;

    return-object v0
.end method

.method public final setDuration(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->a:D

    return-void
.end method

.method public final setRotation(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->c:I

    return-void
.end method

.method public final setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;

    return-void
.end method
