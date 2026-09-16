.class public Lcom/gpc/operations/migrate/utils/share/InternalShareModule;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/operations/migrate/utils/modules/Module;


# static fields
.field private static final TAG:Ljava/lang/String; = "InternalShareModule"


# instance fields
.field private context:Landroid/content/Context;

.field private onShareResultListener:Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

.field private resourceDownload:Lcom/gpc/operations/migrate/utils/share/download/IResourceDownload;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;

    invoke-direct {v0}, Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadImpl;-><init>()V

    iput-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->resourceDownload:Lcom/gpc/operations/migrate/utils/share/download/IResourceDownload;

    return-void
.end method

.method public static synthetic access$000(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->context:Landroid/content/Context;

    return-object p0
.end method

.method public static synthetic access$100(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;)Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->onShareResultListener:Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    return-object p0
.end method

.method private share(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/action/IShareAction;)V
    .locals 3

    if-nez p3, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->resourceDownload:Lcom/gpc/operations/migrate/utils/share/download/IResourceDownload;

    invoke-interface {p3}, Lcom/gpc/operations/migrate/utils/share/action/IShareAction;->allowShareDirectory()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;

    invoke-direct {v2, p0, p3, p1}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule$a;-><init>(Lcom/gpc/operations/migrate/utils/share/InternalShareModule;Lcom/gpc/operations/migrate/utils/share/action/IShareAction;Ljava/lang/String;)V

    invoke-interface {v0, p2, v1, v2}, Lcom/gpc/operations/migrate/utils/share/download/IResourceDownload;->downloadFile(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/download/ResourceDownloadListener;)V

    return-void
.end method


# virtual methods
.method public onAsyncInit()V
    .locals 0

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->resourceDownload:Lcom/gpc/operations/migrate/utils/share/download/IResourceDownload;

    invoke-interface {v0}, Lcom/gpc/operations/migrate/utils/share/download/IResourceDownload;->onDestroy()V

    return-void
.end method

.method public onGameIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onIGXIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onInitFinish()V
    .locals 0

    return-void
.end method

.method public onPreInit(Landroid/content/Context;Lcom/gpc/operations/migrate/Configuration;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->context:Landroid/content/Context;

    return-void
.end method

.method public onSessionIdChange(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public shareImage(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;)V
    .locals 1

    .line 1
    iput-object p3, p0, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->onShareResultListener:Lcom/gpc/operations/migrate/utils/share/OnShareResultListener;

    .line 2
    invoke-static {}, Lcom/gpc/operations/migrate/utils/modules/ModulesManager;->pathModule()Lcom/gpc/operations/migrate/utils/modules/PathModule;

    move-result-object p3

    invoke-virtual {p3}, Lcom/gpc/operations/migrate/utils/modules/PathModule;->getShareMediaFileProvider()Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;

    move-result-object p3

    .line 3
    new-instance v0, Lcom/gpc/operations/migrate/utils/share/action/InternalImageShareAction;

    invoke-direct {v0, p3}, Lcom/gpc/operations/migrate/utils/share/action/InternalImageShareAction;-><init>(Lcom/gpc/operations/migrate/utils/modules/PathModule$FileProviderEntity;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/gpc/operations/migrate/utils/share/InternalShareModule;->share(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/operations/migrate/utils/share/action/IShareAction;)V

    return-void
.end method
