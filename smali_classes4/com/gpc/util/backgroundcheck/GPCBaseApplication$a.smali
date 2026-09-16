.class public Lcom/gpc/util/backgroundcheck/GPCBaseApplication$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/app/Application$ActivityLifecycleCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->onApplicationCreate(Landroid/app/Application;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityDestroyed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivityPaused(Landroid/app/Activity;)V
    .locals 1

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityPaused:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCBaseApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityResumed(Landroid/app/Activity;)V
    .locals 0

    return-void
.end method

.method public onActivitySaveInstanceState(Landroid/app/Activity;Landroid/os/Bundle;)V
    .locals 0

    return-void
.end method

.method public onActivityStarted(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$008()I

    .line 2
    invoke-static {}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->sharedInstance()Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    move-result-object p1

    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->setCount(I)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityStarted:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCBaseApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onActivityStopped(Landroid/app/Activity;)V
    .locals 1

    .line 1
    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$010()I

    .line 2
    invoke-static {}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->sharedInstance()Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;

    move-result-object p1

    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/gpc/util/backgroundcheck/SDKActivityStatistics;->setCount(I)V

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "onActivityStopped:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/gpc/util/backgroundcheck/GPCBaseApplication;->access$000()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "GPCBaseApplication"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
