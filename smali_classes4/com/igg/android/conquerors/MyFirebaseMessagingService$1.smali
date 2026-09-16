.class Lcom/igg/android/conquerors/MyFirebaseMessagingService$1;
.super Lcom/gpc/sdk/push/GPCPushMessageHandler;
.source "MyFirebaseMessagingService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/MyFirebaseMessagingService;->getGPCPushMessageHandler()Lcom/gpc/sdk/push/GPCPushMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/MyFirebaseMessagingService;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/MyFirebaseMessagingService;Landroid/content/Context;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/igg/android/conquerors/MyFirebaseMessagingService$1;->this$0:Lcom/igg/android/conquerors/MyFirebaseMessagingService;

    invoke-direct {p0, p2}, Lcom/gpc/sdk/push/GPCPushMessageHandler;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public notificationIcon()I
    .locals 1

    .line 45
    sget v0, Lcom/igg/android/conquerors/R$drawable;->white_icon:I

    return v0
.end method

.method public notificationTitle()Ljava/lang/String;
    .locals 2

    .line 39
    iget-object v0, p0, Lcom/igg/android/conquerors/MyFirebaseMessagingService$1;->this$0:Lcom/igg/android/conquerors/MyFirebaseMessagingService;

    invoke-virtual {v0}, Lcom/igg/android/conquerors/MyFirebaseMessagingService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/igg/android/conquerors/R$string;->app_name:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
