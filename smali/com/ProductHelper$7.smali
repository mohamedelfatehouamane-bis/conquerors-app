.class Lcom/ProductHelper$7;
.super Ljava/lang/Object;
.source "ProductHelper.java"

# interfaces
.implements Lcom/gpc/sdk/translate/GPCTranslatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/ProductHelper;->onTranslate(JLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/ProductHelper;

.field final synthetic val$chatIDReturn:J


# direct methods
.method constructor <init>(Lcom/ProductHelper;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 628
    iput-object p1, p0, Lcom/ProductHelper$7;->this$0:Lcom/ProductHelper;

    iput-wide p2, p0, Lcom/ProductHelper$7;->val$chatIDReturn:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/gpc/sdk/error/GPCException;",
            "Ljava/util/List<",
            "Lcom/gpc/sdk/translate/GPCTranslationSource;",
            ">;)V"
        }
    .end annotation

    .line 642
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v0, "error code:"

    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "requestTranslate error"

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    new-instance p2, Ljava/lang/StringBuilder;

    const-string v1, "getUnderlyingException code:"

    invoke-direct {p2, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getUnderlyingException()Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    invoke-virtual {p1}, Lcom/gpc/sdk/error/GPCException;->getCode()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-wide p1, p0, Lcom/ProductHelper$7;->val$chatIDReturn:J

    .line 645
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v0

    invoke-virtual {v0}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v0

    const-string v1, ""

    const/4 v2, 0x0

    invoke-virtual {v0, p1, p2, v1, v2}, Lcom/jniCallback;->retTranslate(JLjava/lang/String;Z)V

    return-void
.end method

.method public onTranslated(Lcom/gpc/sdk/translate/GPCTranslationSet;)V
    .locals 4

    .line 631
    invoke-virtual {p1}, Lcom/gpc/sdk/translate/GPCTranslationSet;->getType()Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    move-result-object v0

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    if-ne v0, v1, :cond_0

    .line 632
    iget-wide v0, p0, Lcom/ProductHelper$7;->val$chatIDReturn:J

    const/4 v2, 0x0

    .line 633
    invoke-virtual {p1, v2}, Lcom/gpc/sdk/translate/GPCTranslationSet;->getByIndex(I)Lcom/gpc/sdk/translate/GPCTranslation;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Lcom/gpc/sdk/translate/GPCTranslation;->getText()Ljava/lang/String;

    .line 635
    invoke-static {}, Lcom/ProductHelper;->-$$Nest$sfgetGameInstance()Lcom/igg/android/conquerors/col;

    move-result-object v2

    invoke-virtual {v2}, Lcom/igg/android/conquerors/col;->getJniCall()Lcom/jniCallback;

    move-result-object v2

    invoke-virtual {p1}, Lcom/gpc/sdk/translate/GPCTranslation;->getText()Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    invoke-virtual {v2, v0, v1, p1, v3}, Lcom/jniCallback;->retTranslate(JLjava/lang/String;Z)V

    :cond_0
    return-void
.end method
