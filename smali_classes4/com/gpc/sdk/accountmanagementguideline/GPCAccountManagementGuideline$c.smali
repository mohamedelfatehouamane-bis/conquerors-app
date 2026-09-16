.class public Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/service/CheckBoundResultListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Ljava/lang/String;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;

.field public final synthetic b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    iput-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->isOccurred()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;

    invoke-interface {p2, p1, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void

    .line 6
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p2, :cond_4

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x0

    .line 9
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 10
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 11
    new-instance v4, Lorg/json/JSONObject;

    invoke-direct {v4, v3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 12
    new-instance v3, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;

    invoke-direct {v3}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;-><init>()V

    .line 13
    const-string v5, "type"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setType(Ljava/lang/String;)V

    const/4 v5, 0x1

    .line 14
    invoke-virtual {v3, v5}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setHasBound(Z)V

    .line 15
    const-string v5, "key"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setKey(Ljava/lang/String;)V

    .line 16
    const-string v5, "label"

    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 17
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 18
    invoke-virtual {v3, v4}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserBindingProfile;->setDisplayName(Ljava/lang/String;)V

    .line 21
    :cond_1
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 24
    :cond_2
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-static {p2}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setBindingProfiles(Ljava/util/List;)V

    .line 25
    invoke-static {}, Lcom/gpc/sdk/GPCConfigurationManager;->sharedInstance()Lcom/gpc/sdk/GPCConfigurationManager;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfigurationManager;->configuration()Lcom/gpc/sdk/GPCConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Lcom/gpc/sdk/GPCConfiguration;->isChinaMainland()Z

    move-result p2

    if-eqz p2, :cond_3

    .line 27
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-virtual {p2}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->d()V

    .line 29
    :cond_3
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;

    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    .line 31
    const-string p2, "Guideline"

    const-string v0, ""

    invoke-static {p2, v0, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 32
    iget-object p1, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;

    .line 33
    const-string p2, "111505"

    const-string v0, "10"

    invoke-static {p2, v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 34
    const-string v0, "5001"

    invoke-static {v0}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/error/GPCException;->underlyingException(Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p2

    .line 35
    invoke-interface {p1, p2, v1}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void

    .line 40
    :cond_4
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-static {p2}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;->setBindingProfiles(Ljava/util/List;)V

    .line 41
    iget-object p2, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->a:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;

    iget-object v0, p0, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$c;->b:Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;

    invoke-static {v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;->a(Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline;)Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;

    move-result-object v0

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/accountmanagementguideline/GPCAccountManagementGuideline$GPCAccountManagementGuidelineListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/accountmanagementguideline/valueobject/GPCUserProfile;)V

    return-void
.end method
