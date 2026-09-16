.class public final Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenCompatProxy$GPCGetWebSSOTokenListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/apprating/GPCStandardAppRating;->getFeedbackWebPageURL(Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;

.field public final synthetic b:Lcom/gpc/sdk/apprating/GPCStandardAppRating;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;Lcom/gpc/sdk/apprating/GPCStandardAppRating;)V
    .locals 0

    iput-object p1, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;->a:Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;

    iput-object p2, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;->b:Lcom/gpc/sdk/apprating/GPCStandardAppRating;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 3

    const-string v0, "ssoTokenException"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;->getException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 7
    const-string p2, "310301"

    const/4 v0, 0x0

    invoke-static {p2, v0, v0, p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    .line 13
    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->printReadableUniqueCode()V

    .line 14
    iget-object p2, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;->a:Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;

    const-string v0, "exForSSOToken"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, ""

    invoke-interface {p2, p1, v0}, Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void

    .line 16
    :cond_0
    invoke-static {}, Lcom/gpc/sdk/utils/modules/ModulesManager;->getLocalConfigManager()Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;

    move-result-object p1

    const-string v0, "report-info"

    invoke-virtual {p1, v0}, Lcom/gpc/sdk/utils/modules/familyurl/LocalConfigManager;->getWebUrl(Ljava/lang/String;)Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;

    move-result-object p1

    .line 17
    iget-object v0, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;->a:Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;

    .line 18
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object v1

    const-string v2, "noneException()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p1}, Lcom/gpc/sdk/utils/modules/matcher/IURLMatcher;->URL()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/score?game_id="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/gpc/sdk/apprating/GPCStandardAppRating$getFeedbackWebPageURL$1;->b:Lcom/gpc/sdk/apprating/GPCStandardAppRating;

    invoke-static {p1}, Lcom/gpc/sdk/apprating/GPCStandardAppRating;->access$getAppRatingCompatProxy$p(Lcom/gpc/sdk/apprating/GPCStandardAppRating;)Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;

    move-result-object p1

    invoke-interface {p1}, Lcom/gpc/sdk/apprating/GPCAppRatingCompatProxy;->getGameId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "&sso_token="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 20
    invoke-interface {v0, v1, p1}, Lcom/gpc/sdk/apprating/GPCFeedbackWebPageURLResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Ljava/lang/String;)V

    return-void
.end method
