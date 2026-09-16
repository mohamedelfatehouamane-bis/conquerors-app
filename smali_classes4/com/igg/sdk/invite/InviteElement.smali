.class public Lcom/igg/sdk/invite/InviteElement;
.super Ljava/lang/Object;
.source "InviteElement.java"


# instance fields
.field public action:Ljava/lang/String;

.field public enable:Z

.field public icon:Landroid/graphics/Bitmap;

.field public iconRes:I

.field public name:Ljava/lang/String;

.field public packageName:Ljava/lang/String;

.field public sdk:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isSame(Lcom/igg/sdk/invite/InviteElement;)Z
    .locals 1

    .line 17
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    iget-object p1, p1, Lcom/igg/sdk/invite/InviteElement;->type:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
