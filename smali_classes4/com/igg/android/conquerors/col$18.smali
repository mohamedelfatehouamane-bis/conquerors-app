.class Lcom/igg/android/conquerors/col$18;
.super Ljava/lang/Object;
.source "col.java"

# interfaces
.implements Lcom/gpc/sdk/permision/listener/OnShowPermissionCustomNotificationUI;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/igg/android/conquerors/col;->_requestNotifyPermission()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/igg/android/conquerors/col;


# direct methods
.method constructor <init>(Lcom/igg/android/conquerors/col;)V
    .locals 0

    .line 1325
    iput-object p1, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public showNoAskedNotificationUI(Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V
    .locals 4

    .line 1358
    const-string v0, "log---"

    const-string v1, "showNoAskedNotificationUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1361
    iget-object v0, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0, p1}, Lcom/igg/android/conquerors/col;->-$$Nest$fputm_PermissionCustomUIOperationListener(Lcom/igg/android/conquerors/col;Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V

    .line 1364
    iget-object p1, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {p1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 1366
    iget-object v0, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getToSettingPageText()Ljava/lang/String;

    move-result-object v0

    .line 1368
    iget-object v1, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getKnownBtn()Ljava/lang/String;

    move-result-object v1

    .line 1370
    iget-object v2, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v2}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getSettingBtn()Ljava/lang/String;

    move-result-object v2

    .line 1371
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1372
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1373
    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1374
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1375
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1376
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1377
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1378
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1379
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jniCallback;->retShowNotifyPermissionDialog(ILjava/lang/String;)V

    return-void
.end method

.method public showRequestNotificationUI(Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V
    .locals 4

    .line 1331
    const-string v0, "log---"

    const-string v1, "showRequestNotificationUI"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    iget-object v0, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0, p1}, Lcom/igg/android/conquerors/col;->-$$Nest$fputm_PermissionCustomUIOperationListener(Lcom/igg/android/conquerors/col;Lcom/gpc/sdk/permision/listener/OnPermissionCustomUIOperationListener;)V

    .line 1335
    iget-object p1, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {p1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getTitle()Ljava/lang/String;

    move-result-object p1

    .line 1337
    iget-object v0, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v0}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getRequestPermissionText()Ljava/lang/String;

    move-result-object v0

    .line 1339
    iget-object v1, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v1}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getCancelBtn()Ljava/lang/String;

    move-result-object v1

    .line 1341
    iget-object v2, p0, Lcom/igg/android/conquerors/col$18;->this$0:Lcom/igg/android/conquerors/col;

    invoke-static {v2}, Lcom/igg/android/conquerors/col;->-$$Nest$fgetcontroller(Lcom/igg/android/conquerors/col;)Lcom/gpc/sdk/permision/PermissionsController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/permision/PermissionsController;->getPostNotificationsPermissionText()Lcom/gpc/sdk/permision/PostNotificationsPermissionText;

    move-result-object v2

    invoke-virtual {v2}, Lcom/gpc/sdk/permision/PostNotificationsPermissionText;->getGrantBtn()Ljava/lang/String;

    move-result-object v2

    .line 1342
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1343
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1344
    const-string p1, ";"

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1345
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1346
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1347
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1348
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1349
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1350
    sget-object p1, Lcom/igg/android/conquerors/col;->s_Instance:Lcom/igg/android/conquerors/col;

    invoke-virtual {p1}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/jniCallback;->retShowNotifyPermissionDialog(ILjava/lang/String;)V

    return-void
.end method
