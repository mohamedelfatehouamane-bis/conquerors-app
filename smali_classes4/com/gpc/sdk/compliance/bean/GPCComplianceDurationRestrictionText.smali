.class public Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->a:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public alertOf(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->b:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "{passed}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public executed()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->c:Ljava/lang/String;

    return-object v0
.end method

.method public restrcied()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->d:Ljava/lang/String;

    return-object v0
.end method

.method public stagedOf(I)Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/compliance/bean/GPCComplianceDurationRestrictionText;->a:Ljava/lang/String;

    const-string v1, ""

    if-nez v0, :cond_0

    return-object v1

    .line 4
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "{passed}"

    invoke-virtual {v0, v1, p1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
