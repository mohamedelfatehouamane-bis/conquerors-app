.class public final Lcom/gpc/sdk/misc/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/gpc/sdk/misc/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/gpc/sdk/misc/j$a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;
    .locals 4

    .line 1
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;-><init>()V

    const/16 v1, 0xf

    .line 2
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setRotation(I)V

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setDuration(D)V

    .line 15
    new-instance v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;

    const-string v2, "\u60a8\u7684\u6e38\u620f\u65f6\u95f4\u5df2\u6ee1 {passed} \u5206\u949f\uff0c\u8bf7\u59a5\u5584\u5b89\u6392\u6e38\u620f\u65f6\u95f4\u3002"

    const-string v3, "\u7531\u4e8e\u60a8\u7684\u8d26\u53f7\u672a\u8fdb\u884c\u5b9e\u540d\u6ce8\u518c\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u5de5\u4f5c\u7684\u901a\u77e5\u300b\uff0c\u60a8\u7684\u8d26\u53f7\u5c06\u88ab\u7eb3\u5165\u9632\u6c89\u8ff7\u7cfb\u7edf\uff0c\u6bcf 15 \u65e5\u7684\u6e38\u620f\u65f6\u957f\u4e0d\u5f97\u8d85\u8fc7 1 \u5c0f\u65f6\uff0c\u76ee\u524d\u60a8\u7684\u8d26\u53f7\u5df2\u88ab\u5f3a\u5236\u9000\u51fa\u6e38\u620f\uff0c\u6211\u4eec\u5efa\u8bae\u60a8\u5c3d\u5feb\u5b8c\u6210\u5b9e\u540d\u6ce8\u518c\uff0c\u907f\u514d\u6e38\u620f\u8fc7\u7a0b\u53d7\u5230\u5f71\u54cd\u3002"

    invoke-direct {v1, v2, v2, v3, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;)V

    return-object v0
.end method

.method public final b()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    invoke-direct {v0}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;-><init>()V

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    .line 2
    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setMonthly(D)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setSingle(D)V

    .line 4
    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setDaily(D)V

    .line 6
    new-instance v1, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;

    const-string v2, "\u7531\u4e8e\u60a8\u7684\u8d26\u53f7\u672a\u8fdb\u884c\u5b9e\u540d\u6ce8\u518c\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u5de5\u4f5c\u7684\u901a\u77e5\u300b\uff0c\u60a8\u7684\u8d26\u53f7\u5c06\u88ab\u7eb3\u5165\u9632\u6c89\u8ff7\u7cfb\u7edf\uff0c\u65e0\u6cd5\u5728\u6e38\u620f\u5185\u8fdb\u884c\u6d88\u8d39\uff0c\u6211\u4eec\u5efa\u8bae\u60a8\u5c3d\u5feb\u5b8c\u6210\u5b9e\u540d\u6ce8\u518c\uff0c\u907f\u514d\u6e38\u620f\u8fc7\u7a0b\u53d7\u5230\u5f71\u54cd\u3002"

    invoke-direct {v1, v2}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;->setText(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestrictionText;)V

    return-object v0
.end method

.method public final c()Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/j$a;->e()Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    move-result-object v0

    .line 3
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/j$a;->a()Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;

    move-result-object v1

    .line 5
    invoke-virtual {p0}, Lcom/gpc/sdk/misc/j$a;->b()Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;

    move-result-object v2

    .line 8
    new-instance v3, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;

    const-string v4, "\u7531\u4e8e\u60a8\u7684\u8d26\u53f7\u672a\u8fdb\u884c\u5b9e\u540d\u6ce8\u518c\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u5de5\u4f5c\u7684\u901a\u77e5\u300b\uff0c\u60a8\u7684\u8d26\u53f7\u5c06\u88ab\u7eb3\u5165\u9632\u6c89\u8ff7\u7cfb\u7edf\uff1a\n- \u6e38\u620f\u65f6\u95f4\u4e0e\u65f6\u957f\u9650\u5236\uff1a\n1\u3001\u5355\u6b21\u6e38\u73a9\u65f6\u95f4\u4e0d\u8d85\u8fc7 1 \u5c0f\u65f6\uff0c\u540c\u4e00\u4e2a\u8bbe\u5907 15 \u5929\u5185\u65e0\u6cd5\u518d\u6b21\u8fdb\u884c\u6e38\u5ba2\u6a21\u5f0f\u4f53\u9a8c\n2\u3001\u6bcf\u65e5 22:00 ~ \u6b21\u65e5 8:00 \u65e0\u6cd5\u767b\u5f55\u6e38\u620f\n- \u6d88\u8d39\u9650\u5236\n\u65e0\u6cd5\u8fdb\u884c\u6e38\u620f\u5185\u6d88\u8d39\n\n\u6211\u4eec\u5efa\u8bae\u60a8\u5c3d\u5feb\u5b8c\u6210\u5b9e\u540d\u6ce8\u518c\uff0c\u907f\u514d\u6e38\u620f\u8fc7\u7a0b\u53d7\u5230\u5f71\u54cd\u3002"

    invoke-direct {v3, v4}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v3, v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setTime(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;)V

    .line 20
    invoke-virtual {v3, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setDuration(Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestriction;)V

    .line 21
    invoke-virtual {v3, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceRestrictions;->setPurchase(Lcom/gpc/sdk/payment/bean/GPCPurchaseRestriction;)V

    return-object v3
.end method

.method public final d()Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;
    .locals 3

    .line 1
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationEnable(Z)V

    .line 3
    sget-object v2, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;->MODE_FORCE:Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;

    invoke-virtual {v0, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerficationMode(Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus$RealnameMode;)V

    .line 4
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setGuestRestrictEnable(Z)V

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setTimestamp(J)V

    .line 8
    new-instance v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;

    invoke-direct {v1}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;-><init>()V

    .line 9
    sget-object v2, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationUnauthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v1, v2}, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V

    .line 10
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceStatus;->setRealNameVerificationResult(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;)V

    return-object v0
.end method

.method public final e()Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;
    .locals 5

    .line 1
    new-instance v0, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;

    invoke-direct {v0}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;-><init>()V

    .line 3
    const-string v1, "8:00"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->setStart(Ljava/lang/String;)V

    .line 4
    const-string v1, "22:00"

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->setEnd(Ljava/lang/String;)V

    .line 16
    new-instance v1, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;

    const-string v2, "\u7531\u4e8e\u60a8\u7684\u8d26\u53f7\u672a\u8fdb\u884c\u5b9e\u540d\u6ce8\u518c\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u5de5\u4f5c\u7684\u901a\u77e5\u300b\uff0c\u60a8\u7684\u8d26\u53f7\u5c06\u88ab\u7eb3\u5165\u9632\u6c89\u8ff7\u7cfb\u7edf\uff0c\u6bcf\u65e5 22:00 ~ \u6b21\u65e5 8:00 \u65e0\u6cd5\u767b\u5f55\u6e38\u620f\uff0c\u7cfb\u7edf\u5c06\u572821:59:59\u5f3a\u5236\u5c06\u60a8\u9000\u51fa\u6e38\u620f\uff0c\u6211\u4eec\u5efa\u8bae\u60a8\u5c3d\u5feb\u5b8c\u6210\u5b9e\u540d\u6ce8\u518c\uff0c\u907f\u514d\u6e38\u620f\u8fc7\u7a0b\u53d7\u5230\u5f71\u54cd\u3002"

    const-string v3, "\u7531\u4e8e\u60a8\u7684\u8d26\u53f7\u672a\u8fdb\u884c\u5b9e\u540d\u6ce8\u518c\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u5de5\u4f5c\u7684\u901a\u77e5\u300b\uff0c\u60a8\u7684\u8d26\u53f7\u5c06\u88ab\u7eb3\u5165\u9632\u6c89\u8ff7\u7cfb\u7edf\uff0c\u6bcf\u65e5 22:00 ~ \u6b21\u65e5 8:00 \u65e0\u6cd5\u767b\u5f55\u6e38\u620f\uff0c\u6211\u4eec\u5efa\u8bae\u60a8\u5c3d\u5feb\u5b8c\u6210\u5b9e\u540d\u6ce8\u518c\uff0c\u907f\u514d\u6e38\u620f\u8fc7\u7a0b\u53d7\u5230\u5f71\u54cd\u3002"

    const-string v4, "\u7531\u4e8e\u60a8\u7684\u8d26\u53f7\u672a\u8fdb\u884c\u5b9e\u540d\u6ce8\u518c\uff0c\u6839\u636e\u56fd\u5bb6\u65b0\u95fb\u51fa\u7248\u7f72\u53d1\u5e03\u7684\u300a\u5173\u4e8e\u9632\u6b62\u672a\u6210\u5e74\u4eba\u6c89\u8ff7\u7f51\u7edc\u6e38\u620f\u5de5\u4f5c\u7684\u901a\u77e5\u300b\uff0c\u60a8\u7684\u8d26\u53f7\u5c06\u88ab\u7eb3\u5165\u9632\u6c89\u8ff7\u7cfb\u7edf\uff0c\u6bcf\u65e5 22:00 ~ \u6b21\u65e5 8:00 \u65e0\u6cd5\u767b\u5f55\u6e38\u620f\uff0c\u7cfb\u7edf\u5c06\u5728 5 \u5206\u949f\u540e\u5f3a\u5236\u5c06\u60a8\u9000\u51fa\u6e38\u620f\uff0c\u6211\u4eec\u5efa\u8bae\u60a8\u5c3d\u5feb\u5b8c\u6210\u5b9e\u540d\u6ce8\u518c\uff0c\u907f\u514d\u6e38\u620f\u8fc7\u7a0b\u53d7\u5230\u5f71\u54cd\u3002"

    invoke-direct {v1, v4, v2, v3}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    invoke-virtual {v0, v1}, Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestriction;->setText(Lcom/gpc/sdk/compliance/bean/GPCComplianceTimeRestrictionText;)V

    return-object v0
.end method
