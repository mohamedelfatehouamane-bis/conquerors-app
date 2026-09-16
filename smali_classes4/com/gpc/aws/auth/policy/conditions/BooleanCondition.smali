.class public Lcom/gpc/aws/auth/policy/conditions/BooleanCondition;
.super Lcom/gpc/aws/auth/policy/Condition;
.source "BooleanCondition.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/gpc/aws/auth/policy/Condition;-><init>()V

    .line 38
    const-string v0, "Bool"

    iput-object v0, p0, Lcom/gpc/aws/auth/policy/Condition;->type:Ljava/lang/String;

    .line 39
    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->conditionKey:Ljava/lang/String;

    .line 41
    invoke-static {p2}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/String;

    move-result-object p1

    .line 40
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/aws/auth/policy/Condition;->values:Ljava/util/List;

    return-void
.end method
