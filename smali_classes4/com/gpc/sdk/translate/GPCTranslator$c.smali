.class public Lcom/gpc/sdk/translate/GPCTranslator$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/gpc/sdk/account/GPCSession$GPCRequestSSOTokenForWebExceptionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/gpc/sdk/translate/GPCTranslator;->a(Ljava/util/List;ILcom/gpc/sdk/translate/GPCTranslatorListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/gpc/sdk/translate/service/TranslationService;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Ljava/util/List;

.field public final synthetic e:Lcom/gpc/sdk/translate/GPCTranslatorListener;

.field public final synthetic f:Lcom/gpc/sdk/translate/GPCTranslator;


# direct methods
.method public constructor <init>(Lcom/gpc/sdk/translate/GPCTranslator;Lcom/gpc/sdk/translate/service/TranslationService;Ljava/util/List;ILjava/util/List;Lcom/gpc/sdk/translate/GPCTranslatorListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    iput-object p2, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->a:Lcom/gpc/sdk/translate/service/TranslationService;

    iput-object p3, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->b:Ljava/util/List;

    iput p4, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->c:I

    iput-object p5, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->d:Ljava/util/List;

    iput-object p6, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->e:Lcom/gpc/sdk/translate/GPCTranslatorListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/gpc/sdk/account/ssotoken/GPCSSOTokenException;Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->a:Lcom/gpc/sdk/translate/service/TranslationService;

    iget-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    iget-object v1, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->b:Ljava/util/List;

    invoke-static {p1, v1}, Lcom/gpc/sdk/translate/GPCTranslator;->b(Lcom/gpc/sdk/translate/GPCTranslator;Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget v3, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->c:I

    iget-object p1, p0, Lcom/gpc/sdk/translate/GPCTranslator$c;->f:Lcom/gpc/sdk/translate/GPCTranslator;

    invoke-virtual {p1}, Lcom/gpc/sdk/translate/GPCTranslator;->getTimeout()I

    move-result v4

    new-instance v6, Lcom/gpc/sdk/translate/GPCTranslator$c$a;

    invoke-direct {v6, p0}, Lcom/gpc/sdk/translate/GPCTranslator$c$a;-><init>(Lcom/gpc/sdk/translate/GPCTranslator$c;)V

    const/16 v5, 0x12f

    move-object v1, p2

    invoke-interface/range {v0 .. v6}, Lcom/gpc/sdk/translate/service/TranslationService;->translateForNameTexts(Ljava/lang/String;Ljava/lang/String;IIILcom/gpc/sdk/translate/service/TranslateForNameTextsListener;)V

    return-void
.end method
