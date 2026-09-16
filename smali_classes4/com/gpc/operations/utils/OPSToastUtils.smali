.class public Lcom/gpc/operations/utils/OPSToastUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "OPSToastUtils"

.field private static instance:Lcom/gpc/operations/utils/OPSToastUtils;


# instance fields
.field private isInited:Z

.field private mainHandler:Landroid/os/Handler;

.field private toast:Landroid/widget/Toast;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->isInited:Z

    .line 8
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->mainHandler:Landroid/os/Handler;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/utils/OPSToastUtils;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/utils/OPSToastUtils;->showMessage(Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/gpc/operations/utils/OPSToastUtils;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/operations/utils/OPSToastUtils;->showMessage(I)V

    return-void
.end method

.method public static declared-synchronized sharedInstance()Lcom/gpc/operations/utils/OPSToastUtils;
    .locals 2

    const-class v0, Lcom/gpc/operations/utils/OPSToastUtils;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/gpc/operations/utils/OPSToastUtils;->instance:Lcom/gpc/operations/utils/OPSToastUtils;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/gpc/operations/utils/OPSToastUtils;

    invoke-direct {v1}, Lcom/gpc/operations/utils/OPSToastUtils;-><init>()V

    sput-object v1, Lcom/gpc/operations/utils/OPSToastUtils;->instance:Lcom/gpc/operations/utils/OPSToastUtils;

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/operations/utils/OPSToastUtils;->instance:Lcom/gpc/operations/utils/OPSToastUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private showMessage(I)V
    .locals 1

    .line 6
    iget-boolean v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->isInited:Z

    if-eqz v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(I)V

    .line 8
    iget-object p1, p0, Lcom/gpc/operations/utils/OPSToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 10
    :cond_0
    const-string p1, "OPSToastUtils"

    const-string v0, "Not Initialized"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private showMessage(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->isInited:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {v0, p1}, Landroid/widget/Toast;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget-object p1, p0, Lcom/gpc/operations/utils/OPSToastUtils;->toast:Landroid/widget/Toast;

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    return-void

    .line 5
    :cond_0
    const-string p1, "OPSToastUtils"

    const-string v0, "Not Initialized"

    invoke-static {p1, v0}, Lcom/gpc/operations/utils/LogUtils;->w(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;)V
    .locals 2

    .line 3
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/utils/OPSToastUtils;->toast:Landroid/widget/Toast;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/gpc/operations/utils/OPSToastUtils;->isInited:Z

    return-void
.end method

.method public init(Landroid/app/Application;)V
    .locals 2

    .line 1
    const-string v0, ""

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/operations/utils/OPSToastUtils;->toast:Landroid/widget/Toast;

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/gpc/operations/utils/OPSToastUtils;->isInited:Z

    return-void
.end method

.method public show(I)V
    .locals 2

    .line 10
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 11
    iget-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gpc/operations/utils/OPSToastUtils$b;

    invoke-direct {v1, p0, p1}, Lcom/gpc/operations/utils/OPSToastUtils$b;-><init>(Lcom/gpc/operations/utils/OPSToastUtils;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 18
    :cond_0
    invoke-direct {p0, p1}, Lcom/gpc/operations/utils/OPSToastUtils;->showMessage(I)V

    return-void
.end method

.method public show(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/gpc/operations/utils/OPSToastUtils;->mainHandler:Landroid/os/Handler;

    new-instance v1, Lcom/gpc/operations/utils/OPSToastUtils$a;

    invoke-direct {v1, p0, p1}, Lcom/gpc/operations/utils/OPSToastUtils$a;-><init>(Lcom/gpc/operations/utils/OPSToastUtils;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    .line 9
    :cond_0
    invoke-direct {p0, p1}, Lcom/gpc/operations/utils/OPSToastUtils;->showMessage(Ljava/lang/String;)V

    return-void
.end method
