.class Lcom/ThirdPartySDK$FirebaseAnalyticsSDK$1;
.super Ljava/lang/Object;
.source "ThirdPartySDK.java"

# interfaces
.implements Lcom/google/android/gms/tasks/OnCompleteListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->finish()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/tasks/OnCompleteListener<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;


# direct methods
.method constructor <init>(Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK$1;->this$0:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/google/android/gms/tasks/Task;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/tasks/Task<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 91
    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK$1;->this$0:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    invoke-static {v0}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->-$$Nest$fgetmInitSDKFinish(Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;)Lcom/ThirdPartySDK$InitSDKFinish;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 93
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FirebaseAnalytics getAppInstanceId:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FirebaseAnalyticsSDK"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object v0, p0, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK$1;->this$0:Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;

    invoke-static {v0}, Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;->-$$Nest$fgetmInitSDKFinish(Lcom/ThirdPartySDK$FirebaseAnalyticsSDK;)Lcom/ThirdPartySDK$InitSDKFinish;

    move-result-object v0

    invoke-virtual {p1}, Lcom/google/android/gms/tasks/Task;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v0, p1}, Lcom/ThirdPartySDK$InitSDKFinish;->onGetToken(Ljava/lang/String;)V

    :cond_0
    return-void
.end method
