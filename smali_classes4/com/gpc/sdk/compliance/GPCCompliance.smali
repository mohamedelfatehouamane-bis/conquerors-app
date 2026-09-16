.class public final Lcom/gpc/sdk/compliance/GPCCompliance;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/sdk/compliance/GPCCompliance$Companion;,
        Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;
    }
.end annotation


# static fields
.field public static final CONFIG_NAME:Ljava/lang/String; = "compliance_v4"

.field public static final Companion:Lcom/gpc/sdk/compliance/GPCCompliance$Companion;

.field public static final LATEST:Ljava/lang/String; = "latest"

.field public static final TAG:Ljava/lang/String; = "GPCCompliance"


# instance fields
.field public final a:Lcom/gpc/sdk/realname/helper/RealNameVerification;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/gpc/sdk/compliance/GPCCompliance;->Companion:Lcom/gpc/sdk/compliance/GPCCompliance$Companion;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getRealNameVerification()Lcom/gpc/sdk/realname/helper/RealNameVerification;

    move-result-object v0

    const-string v1, "getRealNameVerification()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->a:Lcom/gpc/sdk/realname/helper/RealNameVerification;

    .line 6
    const-string v0, "compliance_v4"

    iput-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->b:Ljava/lang/String;

    return-void
.end method

.method public static final synthetic access$getConfigName$p(Lcom/gpc/sdk/compliance/GPCCompliance;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->b:Ljava/lang/String;

    return-object p0
.end method

.method public static final synthetic access$process(Lcom/gpc/sdk/compliance/GPCCompliance;Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V
    .locals 0

    .line 1
    invoke-virtual/range {p0 .. p5}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)J
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->isLocalConfig()Z

    move-result p1

    .line 119
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "using server time judge? "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCCompliance"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    if-nez p1, :cond_1

    .line 122
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p2}, Lcom/gpc/sdk/bean/GPCEasternStandardTime;->getTimestamp()Ljava/lang/Long;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    const/16 v0, 0x3e8

    int-to-long v0, v0

    mul-long p1, p1, v0

    return-wide p1

    :cond_1
    return-wide v0
.end method

.method public final a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;)Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;
    .locals 6

    if-nez p2, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 176
    :cond_0
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;-><init>()V

    .line 178
    new-instance v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;

    .line 179
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getStaged()Ljava/lang/String;

    move-result-object v2

    .line 180
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getAlert()Ljava/lang/String;

    move-result-object v3

    .line 181
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v4

    invoke-virtual {v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getExecuted()Ljava/lang/String;

    move-result-object v4

    .line 182
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v5

    invoke-virtual {v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getRestricted()Ljava/lang/String;

    move-result-object v5

    .line 183
    invoke-direct {v1, v2, v3, v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;)V

    .line 191
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getRotation()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setRotation(I)V

    .line 192
    invoke-virtual {p1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->isHoliday()Z

    move-result p1

    const-wide/16 v1, 0x0

    if-eqz p1, :cond_2

    .line 193
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getLegalHolidays()D

    move-result-wide v3

    cmpg-double p1, v1, v3

    if-nez p1, :cond_1

    .line 194
    sget-object p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;->getUNLIMITED()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setDuration(D)V

    return-object v0

    .line 196
    :cond_1
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getLegalHolidays()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setDuration(D)V

    return-object v0

    .line 200
    :cond_2
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getGeneral()D

    move-result-wide v3

    cmpg-double p1, v1, v3

    if-nez p1, :cond_3

    .line 201
    sget-object p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction$Companion;->getUNLIMITED()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setDuration(D)V

    return-object v0

    .line 203
    :cond_3
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;->getGeneral()D

    move-result-wide p1

    invoke-virtual {v0, p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setDuration(D)V

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;)Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;
    .locals 4

    .line 124
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getGuestComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 125
    const-string p1, "GPCCompliance"

    const-string p2, "Do not find guest compliance config."

    invoke-static {p1, p2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 127
    new-instance p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    invoke-direct {p1, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;-><init>(Ljava/lang/String;)V

    .line 128
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setDuration(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;)V

    .line 129
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setTime(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)V

    .line 130
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    return-object p1

    .line 134
    :cond_0
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    .line 135
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getGuestComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    move-result-object v3

    if-eqz v3, :cond_2

    invoke-virtual {v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->getAdvanceNotice()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v3

    .line 136
    :cond_2
    :goto_0
    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;-><init>(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getGuestComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 141
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->getDurationAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;)Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setDuration(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;)V

    .line 143
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->getPeriodAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;)Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setTime(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)V

    .line 145
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->getPaymentCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    move-result-object p1

    if-nez p1, :cond_3

    .line 146
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    return-object v0

    .line 148
    :cond_3
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->getPaymentCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 149
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->getCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;)Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    .line 150
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    move-result-object p2

    if-nez p2, :cond_4

    goto :goto_1

    .line 151
    :cond_4
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PaymentCap;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getRestricted()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v1, p1}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {p2, v1}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setText(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;)V

    :cond_5
    :goto_1
    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;)Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;
    .locals 4

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 204
    :cond_0
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;-><init>()V

    .line 205
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->getFrom()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->setStart(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->getTo()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->setEnd(Ljava/lang/String;)V

    .line 208
    new-instance v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;

    .line 209
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getAlert()Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object v3

    invoke-virtual {v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getExecuted()Ljava/lang/String;

    move-result-object v3

    .line 211
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getRestricted()Ljava/lang/String;

    move-result-object p1

    .line 212
    invoke-direct {v1, v2, v3, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;)V

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;)Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;
    .locals 8

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 153
    :cond_0
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;-><init>()V

    .line 154
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getSingle()D

    move-result-wide v1

    const-wide/high16 v3, -0x4010000000000000L    # -1.0

    const-wide/16 v5, 0x0

    cmpg-double v7, v1, v5

    if-nez v7, :cond_1

    .line 155
    invoke-virtual {v0, v5, v6}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setSingle(D)V

    goto :goto_0

    .line 156
    :cond_1
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getSingle()D

    move-result-wide v1

    cmpg-double v7, v1, v3

    if-nez v7, :cond_2

    .line 157
    invoke-virtual {v0, v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setSingle(D)V

    goto :goto_0

    .line 159
    :cond_2
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getSingle()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setSingle(D)V

    .line 162
    :goto_0
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getDaily()D

    move-result-wide v1

    cmpg-double v7, v1, v5

    if-nez v7, :cond_3

    .line 163
    invoke-virtual {v0, v5, v6}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setDaily(D)V

    goto :goto_1

    .line 164
    :cond_3
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getDaily()D

    move-result-wide v1

    cmpg-double v7, v1, v3

    if-nez v7, :cond_4

    .line 165
    invoke-virtual {v0, v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setDaily(D)V

    goto :goto_1

    .line 167
    :cond_4
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getDaily()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setDaily(D)V

    .line 170
    :goto_1
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getMonthly()D

    move-result-wide v1

    cmpg-double v7, v1, v5

    if-nez v7, :cond_5

    .line 171
    invoke-virtual {v0, v5, v6}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setMonthly(D)V

    return-object v0

    .line 172
    :cond_5
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getMonthly()D

    move-result-wide v1

    cmpg-double v5, v1, v3

    if-nez v5, :cond_6

    .line 173
    invoke-virtual {v0, v3, v4}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setMonthly(D)V

    return-object v0

    .line 175
    :cond_6
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;->getMonthly()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setMonthly(D)V

    return-object v0
.end method

.method public final a(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;)V
    .locals 7

    .line 1
    sget-object v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/gpc/sdk/bean/GPCAppConfig;->getRawString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    if-nez v2, :cond_1

    const-string v2, ""

    :cond_1
    invoke-virtual {v0, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Companion;->parseFromJson(Ljava/lang/String;)Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p5, :cond_11

    .line 4
    const-string p1, "330103"

    const-string p2, "20"

    invoke-static {p1, p2}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const-string p2, "exception(\n             \u2026CCIDENT\n                )"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {p5, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/error/GPCException;)V

    return-void

    .line 13
    :cond_2
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "GPCCompliance"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getOn()Z

    move-result v2

    .line 16
    new-instance v4, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;

    invoke-direct {v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;-><init>()V

    .line 17
    invoke-virtual {v4, p3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerificationResult(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    const/4 v5, 0x0

    if-nez v2, :cond_3

    .line 22
    invoke-virtual {v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationEnable(Z)V

    .line 23
    sget-object p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-virtual {v4, p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationMode(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;)V

    .line 24
    invoke-virtual {v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setGuestRestrictEnable(Z)V

    .line 25
    invoke-virtual {v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setMinorsRestrictEnable(Z)V

    if-eqz p5, :cond_11

    .line 26
    invoke-virtual {p5, v4, p4}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->b(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void

    .line 32
    :cond_3
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getRealNameConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

    move-result-object v2

    if-nez v2, :cond_4

    .line 34
    invoke-virtual {v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationEnable(Z)V

    .line 35
    sget-object v2, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_GRACEFULLY:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationMode(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;)V

    goto :goto_1

    .line 37
    :cond_4
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getRealNameConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 38
    invoke-virtual {v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->getOn()Z

    move-result v6

    invoke-virtual {v4, v6}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationEnable(Z)V

    .line 39
    sget-object v6, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->Companion:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;

    invoke-virtual {v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$RealNameConfig;->getMode()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode$Companion;->getMode(Ljava/lang/String;)Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    move-result-object v2

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationMode(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;)V

    .line 44
    :cond_5
    :goto_1
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getGuestComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    move-result-object v2

    if-nez v2, :cond_6

    .line 46
    invoke-virtual {v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setGuestRestrictEnable(Z)V

    goto :goto_2

    .line 48
    :cond_6
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getGuestComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;

    move-result-object v2

    if-eqz v2, :cond_7

    .line 49
    invoke-virtual {v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$GuestComplianceConfig;->getOn()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setGuestRestrictEnable(Z)V

    .line 53
    :cond_7
    :goto_2
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getMinorsComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    move-result-object v2

    if-nez v2, :cond_8

    .line 55
    invoke-virtual {v4, v5}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setMinorsRestrictEnable(Z)V

    goto :goto_3

    .line 57
    :cond_8
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getMinorsComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 58
    invoke-virtual {v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->getOn()Z

    move-result v2

    invoke-virtual {v4, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setMinorsRestrictEnable(Z)V

    .line 62
    :cond_9
    :goto_3
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {p3}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    move-result-object v5

    if-eq v2, v5, :cond_e

    .line 66
    invoke-virtual {v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->isGuestRestrictEnable()Z

    move-result v2

    if-eqz v2, :cond_a

    .line 67
    invoke-virtual {p0, p3, v0}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;)Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    move-result-object v2

    goto :goto_4

    :cond_a
    move-object v2, v1

    .line 70
    :goto_4
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)J

    move-result-wide p1

    invoke-virtual {v4, p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setTimestamp(J)V

    .line 73
    sget-object p1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {p3}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    move-result-object p2

    if-ne p1, p2, :cond_d

    .line 74
    const-string p1, "player is guest, in verifying."

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getVerifyingConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getVerifyingConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$VerifyingConfig;->getAsAdult()Z

    move-result p1

    if-eqz p1, :cond_b

    goto :goto_5

    .line 81
    :cond_b
    const-string p1, "asGuest"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_11

    .line 82
    invoke-virtual {p5, v4, v2, p4}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->c(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void

    .line 83
    :cond_c
    :goto_5
    const-string p1, "asAdult"

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_11

    .line 84
    invoke-virtual {p5, v4, v1, p4}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->c(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void

    .line 94
    :cond_d
    const-string p1, "player is guest."

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_11

    .line 95
    invoke-virtual {p5, v4, v2, p4}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void

    .line 101
    :cond_e
    invoke-virtual {p3}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->isMinor()Z

    move-result v2

    if-nez v2, :cond_f

    .line 102
    const-string p1, "player is adult."

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_11

    .line 103
    invoke-virtual {p5, v4, p4}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->a(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    return-void

    .line 109
    :cond_f
    invoke-virtual {v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->isMinorsRestrictEnable()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 111
    invoke-virtual {p0, p3, v0}, Lcom/gpc/sdk/compliance/GPCCompliance;->b(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;)Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    move-result-object v1

    .line 113
    invoke-virtual {p0, p1, p2}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/bean/GPCAppConfig;Lcom/gpc/sdk/bean/GPCEasternStandardTime;)J

    move-result-wide p1

    invoke-virtual {v4, p1, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setTimestamp(J)V

    .line 115
    :cond_10
    const-string p1, "player is minor."

    invoke-static {v3, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_11

    .line 116
    invoke-virtual {p5, v4, v1, p4}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;->b(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;)V

    :cond_11
    return-void
.end method

.method public final b(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;)Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getMinorsComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    move-result-object v0

    const-string v1, ""

    const-string v2, "GPCCompliance"

    const/4 v3, 0x0

    if-nez v0, :cond_0

    .line 2
    const-string p1, "Do not find minors compliance config."

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    invoke-direct {p1, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-virtual {p1, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setDuration(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;)V

    .line 6
    invoke-virtual {p1, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setTime(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)V

    .line 7
    invoke-virtual {p1, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    return-object p1

    .line 11
    :cond_0
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    .line 12
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getMinorsComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    move-result-object v4

    if-eqz v4, :cond_2

    invoke-virtual {v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->getAdvanceNotice()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_1

    goto :goto_0

    :cond_1
    move-object v1, v4

    .line 13
    :cond_2
    :goto_0
    invoke-direct {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;-><init>(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig;->getMinorsComplianceConfig()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 18
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->getDurationAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$DurationAllowed;)Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setDuration(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;)V

    .line 20
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->getPeriodAllowed()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$PeriodAllowed;)Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setTime(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)V

    .line 22
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->getStagedPaymentCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;

    move-result-object v1

    if-nez v1, :cond_3

    .line 23
    invoke-virtual {v0, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    return-object v0

    .line 25
    :cond_3
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$MinorsComplianceConfig;->getStagedPaymentCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;

    move-result-object p2

    if-eqz p2, :cond_6

    .line 26
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;->getStages()Ljava/util/Map;

    move-result-object v1

    invoke-virtual {p1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getJuvenilesLevel()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 28
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "Do not find stage in config."

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getJuvenilesLevel()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    return-object v0

    .line 31
    :cond_4
    invoke-virtual {p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$StagedPaymentCap;->getStages()Ljava/util/Map;

    move-result-object p2

    invoke-virtual {p1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->getJuvenilesLevel()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;

    if-eqz p1, :cond_6

    .line 33
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;->getCap()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/gpc/sdk/compliance/GPCCompliance;->a(Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Cap;)Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    move-result-object p2

    invoke-virtual {v0, p2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    .line 34
    invoke-virtual {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->getPurchase()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    move-result-object p2

    if-nez p2, :cond_5

    goto :goto_1

    .line 35
    :cond_5
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;

    .line 36
    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Stage;->getText()Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceConfig$Text;->getRestricted()Ljava/lang/String;

    move-result-object p1

    .line 37
    invoke-direct {v1, p1}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;-><init>(Ljava/lang/String;)V

    .line 38
    invoke-virtual {p2, v1}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setText(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;)V

    :cond_6
    :goto_1
    return-object v0
.end method

.method public final check(Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;

    invoke-direct {v0, p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;-><init>(Lcom/gpc/sdk/compliance/GPCCompliance$GPCComplianceClearListener;)V

    .line 4
    new-instance p1, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;

    invoke-direct {p1}, Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->a:Lcom/gpc/sdk/realname/helper/RealNameVerification;

    new-instance v2, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;

    invoke-direct {v2, v0, p1, p0}, Lcom/gpc/sdk/compliance/GPCCompliance$check$1;-><init>(Lcom/gpc/sdk/compliance/GPCCompliance$Companion$a;Lcom/gpc/sdk/compliance/GPCCompliance$Companion$b;Lcom/gpc/sdk/compliance/GPCCompliance;)V

    invoke-interface {v1, v2}, Lcom/gpc/sdk/realname/helper/RealNameVerification;->requestState(Lcom/gpc/sdk/realname/GPCVerificationStateListener;)V

    return-void
.end method

.method public final closeRealNameVerificationPanel()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->a:Lcom/gpc/sdk/realname/helper/RealNameVerification;

    invoke-interface {v0}, Lcom/gpc/sdk/realname/helper/RealNameVerification;->closePanel()V

    return-void
.end method

.method public final setAppearance(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;)V
    .locals 1

    const-string v0, "appearance"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->a:Lcom/gpc/sdk/realname/helper/RealNameVerification;

    invoke-interface {v0, p1}, Lcom/gpc/sdk/realname/helper/RealNameVerification;->setAppearance(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationAppearance;)V

    return-void
.end method

.method public final setConfigName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "configName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->b:Ljava/lang/String;

    return-void
.end method

.method public final showRealNameVerificationPanel(Landroid/content/Context;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/GPCCompliance;->a:Lcom/gpc/sdk/realname/helper/RealNameVerification;

    invoke-interface {v0, p1, p2}, Lcom/gpc/sdk/realname/helper/RealNameVerification;->showPanel(Landroid/content/Context;Lcom/gpc/sdk/realname/GPCVerificationPanelListener;)V

    return-void
.end method
