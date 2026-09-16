.class public Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/service/helper/prefixengine/ServerListModel;


# static fields
.field private static final PICK_PREFIX:Ljava/lang/String; = "pick_prefix"

.field private static final SAL_RULE_MODE:Ljava/lang/String; = "sal_rule_mode"

.field private static final TAG:Ljava/lang/String; = "GPCServerListModel"

.field private static final UPDATED_AT:Ljava/lang/String; = "updated_at"


# instance fields
.field private context:Landroid/content/Context;

.field private persistentFileName:Ljava/lang/String;

.field private pickPrefix:Ljava/lang/String;

.field private sal:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
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
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->context:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->persistentFileName:Ljava/lang/String;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    .line 5
    sget-object p1, Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;->GENERAL:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    return-void
.end method

.method private updatePersistentInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->persistentFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 2
    const-string v0, "pick_prefix"

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 3
    const-string p2, "sal_rule_mode"

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 4
    const-string p2, "updated_at"

    invoke-interface {p1, p2, p4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 5
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method


# virtual methods
.method public getPickPrefix()Ljava/util/List;
    .locals 8
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
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->pickPrefix:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->pickPrefix:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .line 5
    :cond_0
    sget-object v1, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel$a;->a:[I

    iget-object v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x1

    if-eq v1, v2, :cond_7

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->persistentFileName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "updated_at"

    const-string v5, ""

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 12
    iget-object v3, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->updatedAt:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 13
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->context:Landroid/content/Context;

    iget-object v3, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->persistentFileName:Ljava/lang/String;

    invoke-virtual {v1, v3, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v3, "pick_prefix"

    invoke-interface {v1, v3, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 15
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 17
    iget-object v5, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 18
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_3

    .line 23
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 25
    :cond_3
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 29
    :cond_4
    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 31
    :cond_5
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 34
    :cond_6
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_1

    .line 35
    :cond_7
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 68
    :goto_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 70
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "getPickPrefix:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "GPCServerListModel"

    invoke-static {v4, v3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 71
    new-instance v3, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-direct {v3, v2}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_8
    return-object v1
.end method

.method public getSal()Ljava/util/List;
    .locals 4
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
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3
    new-instance v3, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    invoke-direct {v3, v2}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public getSalRuleMode()Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    return-object v0
.end method

.method public getUpdatedAt()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->updatedAt:Ljava/lang/String;

    return-object v0
.end method

.method public setPickPrefix(Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;)V
    .locals 3

    if-nez p1, :cond_0

    .line 1
    const-string p1, "GPCServerListModel"

    const-string v0, "setPickPrefix pickPrefix is null."

    invoke-static {p1, v0}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->pickPrefix:Ljava/lang/String;

    .line 5
    sget-object p1, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel$a;->a:[I

    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget p1, p1, v0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 14
    :cond_1
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->pickPrefix:Ljava/lang/String;

    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->updatedAt:Ljava/lang/String;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->updatePersistentInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 15
    :cond_2
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->context:Landroid/content/Context;

    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->persistentFileName:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    const-string v0, "sal_rule_mode"

    const-string v1, ""

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 16
    sget-object v0, Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;->PICK_OVER:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->context:Landroid/content/Context;

    invoke-direct {p0, p1, v1, v1, v1}, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->updatePersistentInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSal(Ljava/util/List;)V
    .locals 2
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
    iget-object v0, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-virtual {v0}, Lcom/gpc/sdk/service/helper/prefixengine/LinkInfo;->getPrefix()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setSalRuleMode(Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    return-void
.end method

.method public setUpdatedAt(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->updatedAt:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "mode:"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->salRuleMode:Lcom/gpc/sdk/service/helper/prefixengine/SALRuleMode;

    invoke-virtual {v1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\nprefixes:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->sal:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "\npersistentFileName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v1, p0, Lcom/gpc/sdk/service/helper/prefixengine/GPCServerListModel;->persistentFileName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
