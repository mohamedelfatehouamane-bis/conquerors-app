.class public Lcom/gpc/operations/OperationsSDKNotificationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private largeIcon:I

.field private launchActivityName:Ljava/lang/String;

.field private smallIcon:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getLargeIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->largeIcon:I

    return v0
.end method

.method public getLaunchActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->launchActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->smallIcon:I

    return v0
.end method

.method public setLargeIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->largeIcon:I

    return-void
.end method

.method public setLaunchActivityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->launchActivityName:Ljava/lang/String;

    return-void
.end method

.method public setSmallIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->smallIcon:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "OperationsSDKNotificationConfig{largeIcon="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget v1, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->largeIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", smallIcon="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->smallIcon:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", launchActivityName=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/gpc/operations/OperationsSDKNotificationConfig;->launchActivityName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\'}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
