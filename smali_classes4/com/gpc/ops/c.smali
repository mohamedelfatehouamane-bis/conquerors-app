.class public Lcom/gpc/ops/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "FruadCacherManager"

.field public static final b:Ljava/lang/String; = "fraud_ids"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 16
    new-instance v0, Lcom/gpc/operations/migrate/utils/LocalStorage;

    sget-object v1, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    const-string v2, "ops_payment_message"

    invoke-direct {v0, v1, v2}, Lcom/gpc/operations/migrate/utils/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    const-string v1, "fraud_ids"

    invoke-virtual {v0, v1}, Lcom/gpc/operations/migrate/utils/LocalStorage;->readString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "readFruadIdsFromCache: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "FruadCacherManager"

    invoke-static {v2, v1}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 20
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static a(Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/tsh/pay/bean/GPCGameItem;",
            ">;)V"
        }
    .end annotation

    const-string v0, "FruadCacherManager"

    if-eqz p0, :cond_3

    .line 1
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 5
    :cond_0
    new-instance v1, Lcom/gpc/operations/migrate/utils/LocalStorage;

    sget-object v2, Lcom/gpc/operations/OperationsSDKApplication;->sApplication:Landroid/app/Application;

    const-string v3, "ops_payment_message"

    invoke-direct {v1, v2, v3}, Lcom/gpc/operations/migrate/utils/LocalStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/tsh/pay/bean/GPCGameItem;

    .line 8
    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getCategory()I

    move-result v4

    const/16 v5, 0xb

    if-ne v4, v5, :cond_1

    .line 9
    invoke-virtual {v3}, Lcom/gpc/tsh/pay/bean/GPCGameItem;->getId()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 12
    :cond_2
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "cacheFruadIds: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 14
    const-string v0, "fraud_ids"

    invoke-virtual {v1, v0, p0}, Lcom/gpc/operations/migrate/utils/LocalStorage;->writeString(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_3
    :goto_1
    const-string p0, "cacheFruadIds: items is empty"

    invoke-static {v0, p0}, Lcom/gpc/operations/utils/LogUtils;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
