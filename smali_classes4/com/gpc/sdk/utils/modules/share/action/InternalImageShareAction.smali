.class public Lcom/gpc/sdk/utils/modules/share/action/InternalImageShareAction;
.super Lcom/gpc/sdk/utils/modules/share/action/BaseShareAction;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/utils/modules/PathModule$FileProviderEntity;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/gpc/sdk/utils/modules/share/action/BaseShareAction;-><init>(Lcom/gpc/sdk/utils/modules/PathModule$FileProviderEntity;)V

    return-void
.end method


# virtual methods
.method public allowShareDirectory()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/share/action/BaseShareAction;->fileProviderEntity:Lcom/gpc/sdk/utils/modules/PathModule$FileProviderEntity;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/PathModule$FileProviderEntity;->getPath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public execute(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p3, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/gpc/sdk/utils/modules/share/action/BaseShareAction;->fileProviderEntity:Lcom/gpc/sdk/utils/modules/PathModule$FileProviderEntity;

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/PathModule$FileProviderEntity;->getAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object p3

    invoke-static {p1, p2, v0, p3}, Lcom/gpc/sdk/utils/common/webview/ShareUtils;->shareImage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
