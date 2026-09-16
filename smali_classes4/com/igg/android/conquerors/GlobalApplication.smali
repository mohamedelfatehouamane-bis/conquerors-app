.class public Lcom/igg/android/conquerors/GlobalApplication;
.super Lcom/gpc/util/backgroundcheck/SDKMultiDexApplication;
.source "GlobalApplication.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Lcom/gpc/util/backgroundcheck/SDKMultiDexApplication;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 3

    .line 15
    invoke-super {p0}, Lcom/gpc/util/backgroundcheck/SDKMultiDexApplication;->onCreate()V

    .line 16
    const-string v0, "--->Application onCreate1)"

    const-string v1, "test"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :try_start_0
    const-string v0, "android.os.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 21
    const-string v2, "--->android.os.AsyncTask catch1)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 26
    :goto_0
    :try_start_1
    const-string v0, "com.gpc.util.AsyncTask"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v0

    .line 28
    const-string v2, "--->com.gpc.util.AsyncTask catch2)"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 31
    :goto_1
    const-string v0, "--->Application onCreate_end)"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-static {p0}, Lcom/gu/toolargetool/TooLargeTool;->startLogging(Landroid/app/Application;)V

    .line 34
    invoke-static {p0}, Lcom/gpc/operations/OperationsSDKApplication;->onApplicationCreate(Landroid/app/Application;)V

    .line 35
    invoke-static {}, Lcom/gpc/operations/OperationsSDK;->sharedInstance()Lcom/gpc/operations/OperationsSDK;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/gpc/operations/OperationsSDK;->setIntentModel(Z)V

    return-void
.end method

.method public onTerminate()V
    .locals 0

    .line 40
    invoke-super {p0}, Lcom/gpc/util/backgroundcheck/SDKMultiDexApplication;->onTerminate()V

    return-void
.end method
