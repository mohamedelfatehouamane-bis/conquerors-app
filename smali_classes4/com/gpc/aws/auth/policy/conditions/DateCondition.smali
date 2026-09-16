.class public Lcom/gpc/aws/auth/policy/conditions/DateCondition;
.super Lcom/gpc/aws/auth/policy/Condition;
.source "DateCondition.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/gpc/aws/auth/policy/conditions/DateCondition$DateComparisonType;
    }
.end annotation


# direct methods
.method public constructor <init>(Lcom/gpc/aws/auth/policy/conditions/DateCondition$DateComparisonType;Ljava/util/Date;)V
    .locals 0

    .line 65
    invoke-direct {p0}, Lcom/gpc/aws/auth/policy/Condition;-><init>()V

    .line 66
    invoke-virtual {p1}, Lcom/gpc/aws/auth/policy/conditions/DateCondition$DateComparisonType;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 67
    const-string p1, "aws:CurrentTime"

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 69
    invoke-static {p2}, Lcom/gpc/aws/util/DateUtils;->formatISO8601Date(Ljava/util/Date;)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
