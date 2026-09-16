.class public Lcom/gpc/operations/notification/NotificationConfig;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final LIVE_CHAT_MESSAGE_TYPE_OFF_LINE:Ljava/lang/String; = "3"


# instance fields
.field protected content:Ljava/lang/String;

.field protected largeIcon:I

.field protected launchActivityName:Ljava/lang/String;

.field protected raw:Ljava/lang/String;

.field protected smallIcon:I

.field protected ticketId:Ljava/lang/String;

.field protected title:Ljava/lang/String;

.field protected webAppId:Ljava/lang/String;

.field protected when:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->content:Ljava/lang/String;

    return-object v0
.end method

.method public getLargeIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->largeIcon:I

    return v0
.end method

.method public getLaunchActivityName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->launchActivityName:Ljava/lang/String;

    return-object v0
.end method

.method public getRaw()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->raw:Ljava/lang/String;

    return-object v0
.end method

.method public getSmallIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->smallIcon:I

    return v0
.end method

.method public getTicketId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->ticketId:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->title:Ljava/lang/String;

    return-object v0
.end method

.method public getWebAppId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->webAppId:Ljava/lang/String;

    return-object v0
.end method

.method public getWhen()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/gpc/operations/notification/NotificationConfig;->when:J

    return-wide v0
.end method

.method public setContent(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->content:Ljava/lang/String;

    return-void
.end method

.method public setLargeIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->largeIcon:I

    return-void
.end method

.method public setLaunchActivityName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->launchActivityName:Ljava/lang/String;

    return-void
.end method

.method public setRaw(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->raw:Ljava/lang/String;

    return-void
.end method

.method public setSmallIcon(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->smallIcon:I

    return-void
.end method

.method public setTicketId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->ticketId:Ljava/lang/String;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->title:Ljava/lang/String;

    return-void
.end method

.method public setWebAppId(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->webAppId:Ljava/lang/String;

    return-void
.end method

.method public setWhen(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/gpc/operations/notification/NotificationConfig;->when:J

    return-void
.end method
