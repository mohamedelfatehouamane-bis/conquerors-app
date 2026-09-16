.class public final Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "PeriodAllowed"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;


# instance fields
.field public a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    .line 4
    const-string v0, ""

    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->b:Ljava/lang/String;

    .line 5
    iput-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 7

    .line 1
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

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    .line 6
    :cond_0
    :try_start_0
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_3

    const/16 v1, 0x18

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    .line 10
    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    if-ltz p1, :cond_3

    const/16 v1, 0x3c

    if-le p1, v1, :cond_2

    goto :goto_0

    :cond_2
    return v0

    :catch_0
    :cond_3
    :goto_0
    return v2
.end method

.method public final getFrom()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-object v0
.end method

.method public final getTo()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->c:Ljava/lang/String;

    return-object v0
.end method

.method public final isValid()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->b:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->c:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final setFrom(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->b:Ljava/lang/String;

    return-void
.end method

.method public final setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    return-void
.end method

.method public final setTo(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->c:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "TimeAllowed(text=\'"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->a:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\', from=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', to=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
