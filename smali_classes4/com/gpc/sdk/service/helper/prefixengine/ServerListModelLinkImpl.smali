.class public Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;


# static fields
.field private static final PICK_PREFIX:Ljava/lang/String; = "pick_prefix"

.field private static final SAL_RULE_MODE:Ljava/lang/String; = "sal_rule_mode"

.field private static final TAG:Ljava/lang/String; = "ServerListModelLinkImpl"

.field private static final UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private context:Landroid/content/Context;

.field private persistentFileName:Ljava/lang/String;

.field private pickPrefix:Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

.field private sal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation
.end field

.field private salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

.field private updatedAt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    .line 5
    sget-object p1, Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;->GENERAL:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    return-void
.end method

.method private clearPersistentInfo()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    const-string v1, "pick_prefix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    const-string v1, "sal_rule_mode"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    const-string v1, "updated_at"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private getPickLink()Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->context:Landroid/content/Context;

    if-nez v0, :cond_0

    .line 2
    const-string v0, "ServerListModelLinkImpl"

    const-string v1, "context is null."

    invoke-static {v0, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    .line 6
    :cond_0
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "pick_prefix"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->createFromData(Ljava/lang/String;)Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    move-result-object v0

    return-object v0
.end method

.method private getUpdatedAtTmp()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->context:Landroid/content/Context;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 2
    const-string v0, "ServerListModelLinkImpl"

    const-string v2, "context is null."

    invoke-static {v0, v2}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 5
    :cond_0
    iget-object v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "updated_at"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private updatePersistentInfo(Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->toPersistenceData()Ljava/lang/String;

    move-result-object p1

    const-string v1, "pick_prefix"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    const-string p1, "sal_rule_mode"

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    const-string p1, "updated_at"

    invoke-interface {v0, p1, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getPickPrefix()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->pickPrefix:Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    const-string v2, "ServerListModelLinkImpl"

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl$a;->a:[I

    iget-object v3, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v3}, Ljava/lang/Enum;->ordinal()I

    move-result v3

    aget v1, v1, v3

    const/4 v3, 0x1

    if-eq v1, v3, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_1

    .line 38
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "Unknown Type:"

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 39
    :cond_1
    invoke-direct {p0}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->getUpdatedAtTmp()Ljava/lang/String;

    move-result-object v1

    .line 40
    iget-object v4, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 41
    invoke-direct {p0}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->getPickLink()Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 43
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 45
    iget-object v5, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const/4 v6, 0x0

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    .line 46
    invoke-virtual {v7, v1}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    const/4 v6, 0x1

    :cond_2
    if-nez v6, :cond_3

    .line 51
    invoke-interface {v4, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 53
    :cond_3
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 57
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 59
    :cond_5
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 62
    :cond_6
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 63
    :cond_7
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 99
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    .line 100
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "getPickPrefix:"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_8
    return-object v0
.end method

.method public getSal()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    return-object v0
.end method

.method public getSalRuleMode()Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setPickPrefix(Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V
    .locals 2

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->pickPrefix:Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    .line 2
    sget-object v0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl$a;->a:[I

    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    const-string v0, "Unknown Type:"

    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "ServerListModelLinkImpl"

    invoke-static {v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->updatedAt:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->updatePersistentInfo(Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "sal_rule_mode"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 17
    sget-object v0, Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;->PICK_OVER:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 18
    invoke-direct {p0}, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->clearPersistentInfo()V

    :cond_2
    return-void
.end method

.method public setSal(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;",
            ">;)V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_0
    return-void
.end method

.method public setSalRuleMode(Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nprefixes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->sal:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\npersistentFileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/ServerListModelLinkImpl;->persistentFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
