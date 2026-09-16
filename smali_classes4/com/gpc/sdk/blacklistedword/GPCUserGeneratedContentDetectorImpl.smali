.class public Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/blacklistedword/listener/GPCUserGeneratedContentDetector;


# static fields
.field public static final h:Ljava/lang/String; = "GPCUserGeneratedContentDetectorImpl"


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ljava/lang/String;

.field public final c:Ljava/util/concurrent/atomic/AtomicBoolean;

.field public d:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;

.field public final e:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/gpc/sdk/misc/w;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Lcom/gpc/sdk/misc/x;

.field public g:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 7
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->e:Ljava/util/Queue;

    .line 14
    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a:Ljava/lang/String;

    .line 15
    iput-object p2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->b:Ljava/lang/String;

    .line 16
    iput-object p3, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->d:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;

    .line 17
    new-instance p1, Lcom/gpc/sdk/misc/x;

    invoke-direct {p1}, Lcom/gpc/sdk/misc/x;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->f:Lcom/gpc/sdk/misc/x;

    .line 18
    new-instance p1, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    invoke-direct {p1}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;-><init>()V

    iput-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->g:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    return-void
.end method


# virtual methods
.method public final a(Lcom/gpc/sdk/misc/w;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;
    .locals 2

    .line 22
    new-instance v0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;

    invoke-direct {v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;-><init>()V

    .line 23
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setScenario(Ljava/lang/String;)V

    .line 24
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setQueueTag(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->a()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setContent(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setPayload(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setDataId(Ljava/lang/String;)V

    .line 28
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->c()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setDataType(Ljava/lang/String;)V

    .line 29
    sget-object p1, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;->Pass:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;

    invoke-virtual {v0, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;->setSuggestion(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentDetectSuggestion;)V

    return-object v0
.end method

.method public final a()V
    .locals 3

    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SendDetectRequest requestQueue.size() = "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->e:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCUserGeneratedContentDetectorImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 31
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->e:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/gpc/sdk/misc/w;

    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->f:Lcom/gpc/sdk/misc/x;

    new-instance v2, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda0;-><init>(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;Lcom/gpc/sdk/misc/w;)V

    invoke-virtual {v1, v0, v2}, Lcom/gpc/sdk/misc/x;->a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V

    return-void

    .line 40
    :cond_0
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 41
    const-string v0, "SendDetectRequest completed, requestQueue is empty or requestInfo is null"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final synthetic a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getUserPolicyForDetector inner result: type: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCUserGeneratedContentDetectorImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->d:Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0, p3}, Lcom/gpc/sdk/blacklistedword/listener/GPCDetectGameTacticsListener;->onComplete(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    move-result-object p3

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "getUserPolicyForDetector tacticsListener result: final type: "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    :cond_0
    sget-object v0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;->None:Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentConst$GPCUserGeneratedContentPolicyType;

    if-ne p3, v0, :cond_1

    .line 11
    const-string p3, "getUserPolicyForDetector finalType is None, return default result"

    invoke-static {v1, p3}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-virtual {p0, p1}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a(Lcom/gpc/sdk/misc/w;)Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;

    move-result-object p1

    if-eqz p2, :cond_2

    .line 14
    invoke-static {}, Lcom/gpc/sdk/error/GPCException;->noneException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p3

    invoke-interface {p2, p3, p1}, Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V

    return-void

    .line 18
    :cond_1
    iget-object p2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->e:Ljava/util/Queue;

    invoke-interface {p2, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 20
    iget-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 p2, 0x0

    const/4 p3, 0x1

    invoke-virtual {p1, p2, p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a()V

    :cond_2
    return-void
.end method

.method public final synthetic a(Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V
    .locals 1

    .line 42
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->f()Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 43
    invoke-virtual {p1}, Lcom/gpc/sdk/misc/w;->f()Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V

    .line 45
    :cond_0
    invoke-virtual {p0}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a()V

    return-void
.end method

.method public detect(Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0, p2}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->detect(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V

    return-void
.end method

.method public detect(Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V
    .locals 6

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    .line 2
    invoke-virtual/range {v0 .. v5}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->detect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V

    return-void
.end method

.method public detect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V
    .locals 8

    .line 3
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Detect content: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", dataType: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", payload: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "GPCUserGeneratedContentDetectorImpl"

    invoke-static {v1, v0}, Lcom/gpc/util/LogUtils;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    const-string p1, "Detect content is null or empty"

    invoke-static {v1, p1}, Lcom/gpc/util/LogUtils;->e(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p5, :cond_0

    .line 7
    const-string p1, "381206"

    invoke-static {p1}, Lcom/gpc/sdk/error/GPCException;->exception(Ljava/lang/String;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    const/4 p2, 0x0

    .line 8
    invoke-interface {p5, p1, p2}, Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;->onComplete(Lcom/gpc/sdk/error/GPCException;Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectResult;)V

    :cond_0
    return-void

    .line 14
    :cond_1
    new-instance v0, Lcom/gpc/sdk/misc/w;

    iget-object v1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a:Ljava/lang/String;

    iget-object v2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->b:Ljava/lang/String;

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-direct/range {v0 .. v7}, Lcom/gpc/sdk/misc/w;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V

    .line 17
    iget-object p1, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->g:Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;

    iget-object p2, p0, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;->a:Ljava/lang/String;

    new-instance p3, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;

    invoke-direct {p3, p0, v0, v7}, Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/gpc/sdk/blacklistedword/GPCUserGeneratedContentDetectorImpl;Lcom/gpc/sdk/misc/w;Lcom/gpc/sdk/blacklistedword/listener/GPCDetectResultListener;)V

    invoke-virtual {p1, p2, p3}, Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper;->a(Ljava/lang/String;Lcom/gpc/sdk/blacklistedword/internal/UserGeneratedContentCacheHelper$GetUserScenePolicyListener;)V

    return-void
.end method
