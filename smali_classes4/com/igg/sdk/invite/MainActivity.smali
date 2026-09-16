.class public Lcom/igg/sdk/invite/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    new-instance p1, Lcom/igg/sdk/invite/MainActivity$1;

    invoke-direct {p1, p0}, Lcom/igg/sdk/invite/MainActivity$1;-><init>(Lcom/igg/sdk/invite/MainActivity;)V

    const-string v0, "title"

    const-string v1, "content"

    const-string v2, ""

    invoke-static {p0, v0, v1, v2, p1}, Lcom/igg/sdk/invite/InviteManager;->invite(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/FacebookCallback;)V

    return-void
.end method
