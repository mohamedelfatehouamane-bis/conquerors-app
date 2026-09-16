.class public Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

.field public b:Z

.field public c:I

.field public d:Z

.field public e:J

.field public f:J

.field public g:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->e:J

    return-wide v0
.end method

.method public getExpiresAt()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->f:J

    return-wide v0
.end method

.method public getJuvenilesLevel()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->c:I

    return v0
.end method

.method public getPi()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->g:Ljava/lang/String;

    return-object v0
.end method

.method public getState()Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-object v0
.end method

.method public isHoliday()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->d:Z

    return v0
.end method

.method public isMinor()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->b:Z

    return v0
.end method

.method public setDuration(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->e:J

    return-void
.end method

.method public setExpiresAt(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->f:J

    return-void
.end method

.method public setHoliday(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->d:Z

    return-void
.end method

.method public setJuvenilesLevel(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->c:I

    return-void
.end method

.method public setMinor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->b:Z

    return-void
.end method

.method public setPi(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->g:Ljava/lang/String;

    return-void
.end method

.method public setState(Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    return-void
.end method

.method public shouldCommitIdentity()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    if-eqz v0, :cond_1

    .line 2
    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationAuthorized:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    if-eq v1, v0, :cond_0

    sget-object v1, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;->GPCRealNameVerificationSumbitted:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    if-ne v1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    return v0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "GPCRealNameVerificationResult{state="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->a:Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isMinor="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->b:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", juvenilesLevel="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->c:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", isHoliday="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", duration="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->e:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", expiresAt="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->f:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", pi=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/sdk/realname/bean/GPCRealNameVerificationResult;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
