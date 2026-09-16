.class public Lcom/gpc/aws/auth/policy/conditions/NumericCondition;
.super Lcom/gpc/aws/auth/policy/Condition;
.source "NumericCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/auth/policy/conditions/NumericCondition$NumericComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/gpc/aws/auth/policy/conditions/NumericCondition$NumericComparisonType;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/gpc/aws/auth/policy/Condition;-><init>()V

    .line 59
    invoke-virtual {p1}, Lcom/gpc/aws/auth/policy/conditions/NumericCondition$NumericComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/gpc/aws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 61
    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
