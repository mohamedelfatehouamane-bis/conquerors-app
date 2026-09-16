.class public Lcom/gpc/sdk/kit/stub/c$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/util/SDKTask$SDKTaskRunnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/kit/stub/c$a;->onNotification(Lcom/gpc/sdk/notification/GPCNotification;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/gpc/util/SDKTask$SDKTaskRunnable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/kit/stub/c$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/kit/stub/c$a;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/kit/stub/c$a$a;->b:Lcom/gpc/sdk/kit/stub/c$a;

    iput-object p2, p0, Lcom/gpc/sdk/kit/stub/c$a$a;->a:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Void;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->pathModule()Lcom/gpc/sdk/utils/modules/PathModule;

    move-result-object v0

    invoke-virtual {v0}, Lcom/gpc/sdk/utils/modules/PathModule;->getLogStrogeDir()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {}, Lcom/gpc/sdk/kit/stub/e;->b()Lcom/gpc/sdk/kit/stub/e;

    move-result-object v1

    invoke-virtual {v1}, Lcom/gpc/sdk/kit/stub/e;->a()Ljava/lang/String;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "srcPath:"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "LogStub"

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "destPath:"

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    invoke-static {v1}, Lcom/gpc/util/FileUtils;->deleteDirectory(Ljava/lang/String;)Z

    .line 10
    invoke-static {v1}, Lcom/gpc/util/FileUtils;->createDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    .line 13
    iget-object v4, p0, Lcom/gpc/sdk/kit/stub/c$a$a;->b:Lcom/gpc/sdk/kit/stub/c$a;

    iget-object v4, v4, Lcom/gpc/sdk/kit/stub/c$a;->a:Lcom/gpc/sdk/kit/stub/c;

    invoke-static {v4, v0, v1}, Lcom/gpc/sdk/kit/stub/c;->a(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    if-eqz v2, :cond_4

    .line 16
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->isDirectory()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_2

    .line 21
    :cond_0
    invoke-virtual {v2}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v1

    if-nez v1, :cond_1

    .line 23
    const-string v1, "destDir is not any file exist."

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 27
    :cond_1
    new-instance v2, Lcom/gpc/sdk/kit/stub/c$d;

    invoke-direct {v2, v0}, Lcom/gpc/sdk/kit/stub/c$d;-><init>(Lcom/gpc/sdk/kit/stub/c$a;)V

    .line 28
    array-length v4, v1

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v1, v5

    .line 29
    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, ".zip"

    invoke-virtual {v7, v8}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 30
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "upload zip:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v3, v7}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v7, v2, Lcom/gpc/sdk/kit/stub/c$d;->a:Ljava/util/List;

    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 33
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "ignore file:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v3, v6}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 38
    :cond_3
    iget-object v1, p0, Lcom/gpc/sdk/kit/stub/c$a$a;->b:Lcom/gpc/sdk/kit/stub/c$a;

    iget-object v1, v1, Lcom/gpc/sdk/kit/stub/c$a;->a:Lcom/gpc/sdk/kit/stub/c;

    iget-object v3, p0, Lcom/gpc/sdk/kit/stub/c$a$a;->a:Ljava/lang/String;

    invoke-static {v1, v3, v2}, Lcom/gpc/sdk/kit/stub/c;->a(Lcom/gpc/sdk/kit/stub/c;Ljava/lang/String;Lcom/gpc/sdk/kit/stub/c$d;)V

    return-object v0

    .line 39
    :cond_4
    :goto_2
    const-string v1, "destDir is error.maybe not exists."

    invoke-static {v3, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/gpc/sdk/kit/stub/c$a$a;->a()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method
