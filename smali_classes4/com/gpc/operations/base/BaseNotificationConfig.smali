.class public Lcom/gpc/operations/base/BaseNotificationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected largeIcon:I

.field protected launchActivityName:Ljava/lang/String;

.field protected smallIcon:I


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
    iget v0, p0, Lcom/gpc/operations/base/BaseNotificationConfig;->largeIcon:I

    return v0
.end method

.method public getLaunchActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/base/BaseNotificationConfig;->launchActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/base/BaseNotificationConfig;->smallIcon:I

    return v0
.end method

.method public setLargeIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/base/BaseNotificationConfig;->largeIcon:I

    return-void
.end method

.method public setLaunchActivityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/base/BaseNotificationConfig;->launchActivityName:Ljava/lang/String;

    return-void
.end method

.method public setSmallIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/base/BaseNotificationConfig;->smallIcon:I

    return-void
.end method
