.class Lcom/igg/sdk/invite/InviteManager$1;
.super Ljava/lang/Object;
.source "InviteManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/sdk/invite/InviteManager;->moreAppShare(Landroid/content/Context;Ljava/util/Locale;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 82
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 83
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/sdk/invite/InviteManager;->addMoreInvate()V

    .line 84
    invoke-static {}, Landroid/os/Looper;->loop()V

    return-void
.end method
