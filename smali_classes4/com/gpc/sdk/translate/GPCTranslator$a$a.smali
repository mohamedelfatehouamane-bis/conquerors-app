.class public Lcom/gpc/sdk/translate/GPCTranslator$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/translate/service/TranslateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/translate/GPCTranslator$a;->onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/translate/GPCTranslator$a;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/translate/GPCTranslator$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a$a;->a:Lcom/gpc/sdk/translate/GPCTranslator$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed(Lcom/gpc/sdk/error/GPCException;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator$a$a;->a:Lcom/gpc/sdk/translate/GPCTranslator$a;

    iget-object v1, v0, Lcom/gpc/sdk/translate/GPCTranslator$a;->e:Lcom/gpc/sdk/translate/GPCTranslatorListener;

    iget-object v0, v0, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-static {v0, p1}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslator;Lcom/gpc/sdk/error/GPCException;)Lcom/gpc/sdk/error/GPCException;

    move-result-object p1

    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator$a$a;->a:Lcom/gpc/sdk/translate/GPCTranslator$a;

    iget-object v0, v0, Lcom/gpc/sdk/translate/GPCTranslator$a;->d:Ljava/util/List;

    invoke-interface {v1, p1, v0}, Lcom/gpc/sdk/translate/GPCTranslatorListener;->onFailed(Lcom/gpc/sdk/error/GPCException;Ljava/util/List;)V

    return-void
.end method

.method public onTranslated(Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/gpc/sdk/translate/GPCTranslationSet;

    sget-object v1, Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;->NORMAL:Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;

    iget-object v2, p0, Lcom/gpc/sdk/translate/GPCTranslator$a$a;->a:Lcom/gpc/sdk/translate/GPCTranslator$a;

    iget-object v2, v2, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    .line 2
    invoke-static {v2}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslator;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/gpc/sdk/translate/GPCTranslator$a$a;->a:Lcom/gpc/sdk/translate/GPCTranslator$a;

    iget-object v4, v3, Lcom/gpc/sdk/translate/GPCTranslator$a;->d:Ljava/util/List;

    iget-object v3, v3, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-static {v3}, Lcom/gpc/sdk/translate/GPCTranslator;->b(Lcom/gpc/sdk/translate/GPCTranslator;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v4, v3}, Lcom/gpc/sdk/translate/GPCTranslationSet;-><init>(Lcom/gpc/sdk/GPCSDKConstant$GPCTranslationType;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p1}, Lcom/gpc/sdk/translate/GPCTranslationSet;->setList(Ljava/util/List;)V

    .line 5
    iget-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a$a;->a:Lcom/gpc/sdk/translate/GPCTranslator$a;

    iget-object p1, p1, Lcom/gpc/sdk/translate/GPCTranslator$a;->e:Lcom/gpc/sdk/translate/GPCTranslatorListener;

    invoke-interface {p1, v0}, Lcom/gpc/sdk/translate/GPCTranslatorListener;->onTranslated(Lcom/gpc/sdk/translate/GPCTranslationSet;)V

    return-void
.end method
