.class public final Lcom/gpc/sdk/compliance/GPCCompliance$check$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/realname/GPCVerificationStateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/compliance/GPCCompliance;->check(Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

.field public final synthetic b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

.field public final synthetic c:Lcom/gpc/sdk/compliance/GPCCompliance;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    iput-object p2, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    iput-object p3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->c:Lcom/gpc/sdk/compliance/GPCCompliance;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;J)V
    .locals 5

    const-string v0, "ex"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "GPCCompliance"

    if-nez p2, :cond_0

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "realname verification result is null."

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    const/4 p3, 0x0

    .line 3
    const-string p4, "20"

    const-string v0, "330101"

    invoke-static {v0, p3, p4, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p3, "exception(\n             \u2026                        )"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p2, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 15
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v1

    const-string v2, "realname"

    if-eqz v1, :cond_1

    .line 16
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "using realname verification result cache."

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance p1, Lcom/gpc/sdk/bean/GPCEasternStandardTime;

    invoke-direct {p1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;-><init>()V

    const/16 v1, 0x3e8

    int-to-long v3, v1

    .line 19
    div-long/2addr p3, v3

    invoke-virtual {p1, p3, p4}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->initWithTimestampOfSecond(J)V

    .line 20
    iget-object p3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getStringValue()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, v2, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a(Z)V

    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    .line 26
    const-string p3, "latest"

    invoke-virtual {p1, v2, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;->a(Ljava/lang/String;Ljava/lang/String;)Z

    .line 33
    :cond_2
    :goto_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 34
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->dataCenterModule()Lcom/gpc/sdk/utils/modules/DataCenterModule;

    move-result-object p1

    const-string p3, "RealnameVerificationState"

    invoke-virtual {p1, p3, p2}, Lcom/gpc/sdk/utils/modules/DataCenterModule;->put(Ljava/lang/String;Ljava/lang/Object;)V

    .line 39
    :cond_3
    sget-object p1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationExempted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {p2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    move-result-object p3

    if-ne p1, p3, :cond_5

    .line 40
    const-string p1, "state Exempted"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    new-instance p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;

    invoke-direct {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;-><init>()V

    .line 43
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerificationResult(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    const/4 p2, 0x0

    .line 46
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationEnable(Z)V

    .line 47
    sget-object p3, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-virtual {p1, p3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationMode(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;)V

    .line 48
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setGuestRestrictEnable(Z)V

    .line 49
    invoke-virtual {p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setMinorsRestrictEnable(Z)V

    .line 50
    iget-object p2, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    if-eqz p2, :cond_4

    iget-object p3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    invoke-virtual {p2, p1, p3}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->b(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    :cond_4
    return-void

    .line 56
    :cond_5
    new-instance p1, Lcom/gpc/sdk/service/GPCAppConfigService;

    invoke-direct {p1}, Lcom/gpc/sdk/service/GPCAppConfigService;-><init>()V

    .line 57
    iget-object p3, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->c:Lcom/gpc/sdk/compliance/GPCCompliance;

    invoke-static {p3}, Lcom/gpc/sdk/compliance/GPCCompliance;->access$getConfigName$p(Lcom/gpc/sdk/compliance/GPCCompliance;)Ljava/lang/String;

    move-result-object p3

    new-instance p4, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;

    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->b:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    iget-object v1, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->c:Lcom/gpc/sdk/compliance/GPCCompliance;

    iget-object v2, p0, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;->a:Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    invoke-direct {p4, v0, v1, p2, v2}, Lcom/gpc/sdk/compliance/GPCCompliance$check$1$onResult$1;-><init>(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V

    invoke-virtual {p1, p3, p4}, Lcom/gpc/sdk/service/GPCAppConfigService;->loadConfig(Ljava/lang/String;Lcom/gpc/sdk/service/GPCAppConfigService$AppConfigListener;)V

    return-void
.end method
