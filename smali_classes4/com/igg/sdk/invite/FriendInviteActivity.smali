.class public Lcom/igg/sdk/invite/FriendInviteActivity;
.super Lcom/igg/sdk/invite/BaseActivity;
.source "FriendInviteActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/igg/sdk/invite/BaseActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 21
    invoke-super {p0, p1}, Lcom/igg/sdk/invite/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 22
    sget p1, Lcom/igg/sdk/invite/R$layout;->friend_invite:I

    invoke-virtual {p0, p1}, Lcom/igg/sdk/invite/FriendInviteActivity;->setContentView(I)V

    .line 23
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/sdk/invite/InviteManager;->getScreenOrientation()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/igg/sdk/invite/FriendInviteActivity;->setRequestedOrientation(I)V

    .line 25
    :try_start_0
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p1

    sget v0, Lcom/igg/sdk/invite/R$id;->invatePanel:I

    invoke-virtual {p0, v0}, Lcom/igg/sdk/invite/FriendInviteActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    invoke-virtual {p1, p0, v0}, Lcom/igg/sdk/invite/InviteManager;->addRecommend(Landroid/content/Context;Landroid/widget/LinearLayout;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 27
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    return-void
.end method

.method public onInviteMoreClicked(Landroid/view/View;)V
    .locals 0

    .line 33
    invoke-static {}, Lcom/igg/sdk/invite/InviteManager;->getInstance()Lcom/igg/sdk/invite/InviteManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/igg/sdk/invite/InviteManager;->addMoreInvate()V

    return-void
.end method
