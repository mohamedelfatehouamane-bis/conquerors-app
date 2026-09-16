.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$Companion;,
        Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$Companion;

.field public static final TAG:Ljava/lang/String; = "GPCComplianceStatus"


# instance fields
.field public a:Z

.field public b:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

.field public c:Z

.field public d:Z

.field public e:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

.field public f:J


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_FORCE:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)I
    .locals 7

    .line 32
    const-string v0, ":"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x6

    const/4 v6, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    invoke-static/range {v1 .. v6}, Lkotlin/text/StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;ZIILjava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 33
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, -0x1

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    const/4 v0, 0x0

    .line 36
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x1

    .line 40
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    if-ltz p1, :cond_3

    const/16 v1, 0x3c

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    mul-int/lit8 v0, v0, 0x3c

    add-int/2addr v0, p1

    return v0

    :cond_3
    :goto_0
    return v2
.end method

.method public final a(Ljava/lang/String;Ljava/lang/String;J)Z
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p3, p4}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    const/16 p3, 0xb

    .line 3
    invoke-virtual {v0, p3}, Ljava/util/Calendar;->get(I)I

    move-result p3

    const/16 p4, 0xc

    .line 4
    invoke-virtual {v0, p4}, Ljava/util/Calendar;->get(I)I

    move-result p4

    mul-int/lit8 p3, p3, 0x3c

    add-int/2addr p3, p4

    const/4 p4, 0x0

    .line 9
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->a(Ljava/lang/String;)I

    move-result p1

    .line 10
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->a(Ljava/lang/String;)I

    move-result p2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_3

    if-gez p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    if-gt p2, p1, :cond_2

    if-ltz p3, :cond_1

    if-gt p3, p2, :cond_1

    return v0

    :cond_1
    if-gt p1, p3, :cond_3

    const/16 p1, 0x5a0

    if-gt p3, p1, :cond_3

    return v0

    :cond_2
    if-gt p1, p3, :cond_3

    if-gt p3, p2, :cond_3

    return v0

    :cond_3
    :goto_0
    return p4

    :catch_0
    move-exception p1

    .line 31
    const-string p2, "GPCComplianceStatus"

    const-string p3, ""

    invoke-static {p2, p3, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return p4
.end method

.method public final checkViolation(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)Z
    .locals 3

    if-nez p1, :cond_0

    .line 1
    const-string p1, "GPCCompliance"

    const-string v0, "Unlimit time."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->getStart()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->getEnd()Ljava/lang/String;

    move-result-object p1

    iget-wide v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->f:J

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->a(Ljava/lang/String;Ljava/lang/String;J)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public final getRealNameVerficationMode()Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-object v0
.end method

.method public final getRealNameVerificationResult()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->e:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    return-object v0
.end method

.method public final isGuestRestrictEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->c:Z

    return v0
.end method

.method public final isMinorsRestrictEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->d:Z

    return v0
.end method

.method public final isRealNameVerficationEnable()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->a:Z

    return v0
.end method

.method public final setGuestRestrictEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->c:Z

    return-void
.end method

.method public final setMinorsRestrictEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->d:Z

    return-void
.end method

.method public final setRealNameVerficationEnable(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->a:Z

    return-void
.end method

.method public final setRealNameVerficationMode(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->b:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    return-void
.end method

.method public final setRealNameVerificationResult(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->e:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    return-void
.end method

.method public final setTimestamp(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->f:J

    return-void
.end method
