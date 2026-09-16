.class public Lcom/gpc/sdk/push/GPCFCMPushSession;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final FCM_PUSH_SESSION_INFO:Ljava/lang/String; = "fcm_push_session_info"

.field public static final TOKEN:Ljava/lang/String; = "token"


# instance fields
.field public a:Lcom/gpc/util/LocalStorage;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/util/LocalStorage;

    const-string v1, "fcm_push_session_info"

    invoke-direct {v0, p1, v1}, Lcom/gpc/util/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/gpc/sdk/push/GPCFCMPushSession;->a:Lcom/gpc/util/LocalStorage;

    return-void
.end method


# virtual methods
.method public currentToken()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCFCMPushSession;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "token"

    invoke-virtual {v0, v1}, Lcom/gpc/util/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public updateToken(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/push/GPCFCMPushSession;->a:Lcom/gpc/util/LocalStorage;

    const-string v1, "token"

    invoke-virtual {v0, v1, p1}, Lcom/gpc/util/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
