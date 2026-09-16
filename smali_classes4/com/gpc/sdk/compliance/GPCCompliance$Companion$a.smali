.class public final Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/compliance/GPCCompliance$Companion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    return-void
.end method


# virtual methods
.method public final a()Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V
    .locals 2

    .line 11
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 12
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a()Lorg/json/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "failback.failbackLog.toString()"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "failback log:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCCompliance"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->didFailback(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public final a(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->onAdult(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;)V

    .line 5
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->onGuest(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V

    .line 3
    :cond_0
    invoke-virtual {p0, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void
.end method

.method public final a(Lcom/gpc/sdk/error/GPCException;)V
    .locals 3

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    .line 8
    sget-object v1, Lcom/gpc/sdk/misc/j;->a:Lcom/gpc/sdk/misc/j$a;

    invoke-virtual {v1}, Lcom/gpc/sdk/misc/j$a;->d()Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;

    move-result-object v2

    .line 9
    invoke-virtual {v1}, Lcom/gpc/sdk/misc/j$a;->c()Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    move-result-object v1

    .line 10
    invoke-interface {v0, p1, v2, v1}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->onError(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V

    :cond_0
    return-void
.end method

.method public final b(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failback"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->onPostponing(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;)V

    .line 2
    :cond_0
    invoke-virtual {p0, p2}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void
.end method

.method public final b(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->onMinor(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V

    .line 4
    :cond_0
    invoke-virtual {p0, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void
.end method

.method public final c(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V
    .locals 1

    const-string v0, "status"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "failback"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a:Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;->onVerifying(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;)V

    .line 2
    :cond_0
    invoke-virtual {p0, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void
.end method
