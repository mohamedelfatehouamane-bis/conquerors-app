.class public Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition;
.super Lcom/gpc/aws/auth/policy/Condition;
.source "IpAddressCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/gpc/aws/auth/policy/Condition;-><init>()V

    .line 90
    invoke-virtual {p1}, Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 91
    const-string p1, "aws:SourceIp"

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 92
    filled-new-array {p2}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 72
    sget-object v0, Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;->IpAddress:Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;

    invoke-direct {p0, v0, p1}, Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition;-><init>(Lcom/gpc/aws/auth/policy/conditions/IpAddressCondition$IpAddressComparisonType;Ljava/lang/String;)V

    return-void
.end method
