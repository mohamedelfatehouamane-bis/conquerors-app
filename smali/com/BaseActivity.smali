.class public Lcom/BaseActivity;
.super Landroid/app/Activity;
.source "BaseActivity.java"


# static fields
.field protected static final REQUEST_CODE:I = 0xa

.field protected static final RESULT_REST_PSD:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 33
    invoke-super {p0, p1, p2, p3}, Landroid/app/Activity;->onActivityResult(IILandroid/content/Intent;)V

    const/16 v0, 0xa

    if-ne p1, v0, :cond_1

    const/4 p1, 0x2

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p0, p3}, Lcom/BaseActivity;->onResetPsd(Landroid/content/Intent;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 39
    invoke-virtual {p0, p1, p3}, Lcom/BaseActivity;->setResult(ILandroid/content/Intent;)V

    .line 40
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "resetPsd->finish:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "BaseActivity"

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    invoke-virtual {p0}, Lcom/BaseActivity;->finish()V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onLogout(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected onResetPsd(Landroid/content/Intent;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected startResultActivity(Landroid/content/Intent;)V
    .locals 1

    const/16 v0, 0xa

    .line 61
    invoke-virtual {p0, p1, v0}, Lcom/BaseActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
