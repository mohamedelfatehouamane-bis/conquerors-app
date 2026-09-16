.class public Lcom/gpc/operations/migrate/notification/Notification;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private name:Ljava/lang/String;

.field private object:Ljava/lang/Object;

.field private userInfo:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, v0}, Lcom/gpc/operations/migrate/notification/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/operations/migrate/notification/Notification;-><init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p1, p0, Lcom/gpc/operations/migrate/notification/Notification;->name:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Lcom/gpc/operations/migrate/notification/Notification;->object:Ljava/lang/Object;

    .line 6
    iput-object p3, p0, Lcom/gpc/operations/migrate/notification/Notification;->userInfo:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/notification/Notification;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getObject()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/notification/Notification;->object:Ljava/lang/Object;

    return-object v0
.end method

.method public getUserInfo()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/notification/Notification;->userInfo:Ljava/lang/Object;

    return-object v0
.end method
