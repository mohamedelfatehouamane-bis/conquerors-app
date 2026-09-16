.class public Lcom/gpc/sdk/translate/GPCTranslator$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslationSource;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Lcom/gpc/sdk/translate/GPCTranslationSource;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/gpc/sdk/translate/GPCTranslatorListener;

.field public final synthetic f:Lcom/gpc/sdk/translate/GPCTranslator;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/translate/GPCTranslator;Ljava/lang/String;Lcom/gpc/sdk/translate/GPCTranslationSource;ILjava/util/List;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    iput-object p2, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->b:Lcom/gpc/sdk/translate/GPCTranslationSource;

    iput p4, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->c:I

    iput-object p5, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->e:Lcom/gpc/sdk/translate/GPCTranslatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 9

    .line 1
    iget-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->a:Ljava/lang/String;

    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-static {v0}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslator;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-static {v1}, Lcom/gpc/sdk/translate/GPCTranslator;->b(Lcom/gpc/sdk/translate/GPCTranslator;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/gpc/sdk/utils/factory/MiscFactory;->getTranslationService(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/gpc/sdk/translate/service/TranslationService;

    move-result-object v2

    .line 2
    iget-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->b:Lcom/gpc/sdk/translate/GPCTranslationSource;

    invoke-static {p1, v0}, Lcom/gpc/sdk/translate/GPCTranslator;->a(Lcom/gpc/sdk/translate/GPCTranslator;Lcom/gpc/sdk/translate/GPCTranslationSource;)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->c:I

    iget-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$a;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-virtual {p1}, Lcom/gpc/sdk/translate/GPCTranslator;->getTimeout()I

    move-result v6

    new-instance v8, Lcom/gpc/sdk/translate/GPCTranslator$a$a;

    invoke-direct {v8, p0}, Lcom/gpc/sdk/translate/GPCTranslator$a$a;-><init>(Lcom/gpc/sdk/translate/GPCTranslator$a;)V

    const/16 v7, 0x12d

    move-object v3, p2

    invoke-interface/range {v2 .. v8}, Lcom/gpc/sdk/translate/service/TranslationService;->translate(Ljava/lang/String;Ljava/lang/String;IIILcom/gpc/sdk/translate/service/TranslateListener;)V

    return-void
.end method
